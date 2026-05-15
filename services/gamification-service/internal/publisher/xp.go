// Package publisher — Kafka producer для xp.gained событий (Phase 4).
//
// social-service (и другие downstream consumer'ы) подписаны на topic
// xp.gained чтобы агрегировать недельные leaderboard'ы.
//
// API специально узкий: один метод XPGained — больше ничего сейчас в Kafka
// не пишем.
package publisher

import (
	"context"
	"time"

	"github.com/elearning/platform/pkg/kafka"
)

// XPPublisher — интерфейс publisher'а событий gamification.
// Реализован через Kafka, в тестах подменяется на in-memory stub.
type XPPublisher interface {
	XPGained(ctx context.Context, ev XPGainedEvent) error
	Close() error
}

// XPGainedEvent — payload для topic'а xp.gained.
type XPGainedEvent struct {
	UserID     string    `json:"user_id"`
	Amount     int       `json:"amount"`
	Reason     string    `json:"reason"`
	OccurredAt time.Time `json:"occurred_at"`
}

// kafkaPublisher оборачивает platform/kafka.Producer.
type kafkaPublisher struct {
	prod  kafka.Producer
	topic string
}

// New создаёт producer'а. Если brokers пуст — возвращает no-op
// (NoopPublisher), чтобы AddXP не зависел от наличия Kafka.
func New(brokers []string, topic string) XPPublisher {
	if len(brokers) == 0 || topic == "" {
		return NoopPublisher{}
	}
	return &kafkaPublisher{
		prod:  kafka.NewProducer(kafka.ProducerConfig{Brokers: brokers}),
		topic: topic,
	}
}

func (p *kafkaPublisher) XPGained(ctx context.Context, ev XPGainedEvent) error {
	if ev.OccurredAt.IsZero() {
		ev.OccurredAt = time.Now().UTC()
	}
	return p.prod.Publish(ctx, p.topic, ev.UserID, ev)
}

func (p *kafkaPublisher) Close() error {
	return p.prod.Close()
}

// NoopPublisher — тихий заглушечный publisher для случая отключённой Kafka
// или unit-тестов.
type NoopPublisher struct{}

func (NoopPublisher) XPGained(context.Context, XPGainedEvent) error { return nil }
func (NoopPublisher) Close() error                                   { return nil }
