// Package kafka — consumer для xp.gained событий.
//
// Event schema (JSON, отправляется gamification-service):
//
//	{
//	  "user_id":     "uuid",
//	  "amount":      int,
//	  "reason":      "step_completed|lesson_completed|...",
//	  "occurred_at": RFC3339
//	}
//
// Consumer вызывает service.OnXPGained(user_id, amount). At-least-once:
// повторный event приведёт к двойному инкременту (см. AGENTS.md "Идемпотентность").
package kafka

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"sync"
	"time"

	"github.com/google/uuid"
	kafkago "github.com/segmentio/kafka-go"
	"go.uber.org/zap"

	platformkafka "github.com/elearning/platform/pkg/kafka"
	"github.com/elearning/platform/pkg/logger"
	"github.com/elearning/social-service/internal/service"
)

// XPGainedEvent — структура события (must совпадать с producer'ом).
type XPGainedEvent struct {
	UserID     string    `json:"user_id"`
	Amount     int       `json:"amount"`
	Reason     string    `json:"reason"`
	OccurredAt time.Time `json:"occurred_at"`
}

// Config — настройки consumer'а.
type Config struct {
	Brokers []string
	Topic   string
	GroupID string
}

// XPConsumer оборачивает kafka.Consumer + handler.
type XPConsumer struct {
	c   *platformkafka.Consumer
	cfg Config

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

// New создаёт consumer. Если Brokers пуст — возвращает (nil, nil): сервис стартует без consumer'а.
func New(cfg Config, svc *service.Service) (*XPConsumer, error) {
	if len(cfg.Brokers) == 0 {
		return nil, nil
	}
	if cfg.Topic == "" || cfg.GroupID == "" {
		return nil, errors.New("kafka: empty topic or group_id")
	}

	handler := makeHandler(svc)

	c, err := platformkafka.NewConsumer(platformkafka.ConsumerConfig{
		Brokers: cfg.Brokers,
		Topic:   cfg.Topic,
		GroupID: cfg.GroupID,
	}, handler)
	if err != nil {
		return nil, err
	}

	return &XPConsumer{c: c, cfg: cfg}, nil
}

// Start — запускает consumer-loop в горутине. Возвращается мгновенно.
func (x *XPConsumer) Start(ctx context.Context) {
	if x == nil {
		return
	}
	ctx, cancel := context.WithCancel(ctx)
	x.cancel = cancel

	x.wg.Add(1)
	go func() {
		defer x.wg.Done()
		logger.Info(ctx, "🎧 social xp consumer started",
			zap.String("topic", x.cfg.Topic),
			zap.String("group_id", x.cfg.GroupID),
		)
		err := x.c.Run(ctx, func(err error, msg kafkago.Message) {
			if err != nil && ctx.Err() == nil {
				logger.Warn(ctx, "kafka handle error",
					zap.Error(err),
					zap.String("topic", msg.Topic),
					zap.Int64("offset", msg.Offset),
				)
			}
		})
		if err != nil && ctx.Err() == nil {
			logger.Warn(ctx, "kafka consumer stopped with error", zap.Error(err))
		}
	}()
}

// Stop — graceful stop.
func (x *XPConsumer) Stop() error {
	if x == nil {
		return nil
	}
	if x.cancel != nil {
		x.cancel()
	}
	err := x.c.Close()
	x.wg.Wait()
	return err
}

func makeHandler(svc *service.Service) platformkafka.HandlerFunc {
	return func(ctx context.Context, msg kafkago.Message) error {
		var ev XPGainedEvent
		if err := json.Unmarshal(msg.Value, &ev); err != nil {
			// Некорректный JSON: коммитим и идём дальше — иначе застрянем.
			logger.Warn(ctx, "kafka: invalid xp.gained event, skipping",
				zap.Error(err), zap.ByteString("value", msg.Value))
			return nil
		}
		uid, err := uuid.Parse(ev.UserID)
		if err != nil {
			logger.Warn(ctx, "kafka: invalid user_id, skipping", zap.String("user_id", ev.UserID))
			return nil
		}
		if ev.Amount <= 0 {
			return nil // нет смысла обрабатывать
		}
		if err := svc.OnXPGained(ctx, uid, ev.Amount); err != nil {
			return fmt.Errorf("on xp gained: %w", err)
		}
		return nil
	}
}
