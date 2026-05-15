// Package kafka предоставляет тонкие обёртки над segmentio/kafka-go
// для producer и consumer-group паттернов с JSON событиями.
//
// Дизайн:
//   - Producer: at-least-once, sync write (RequiredAcks=All).
//     При пустом списке brokers возвращает No-Op (ничего не пишет).
//   - Consumer: ConsumerGroup, manual commit после успешного handler.
//     Идемпотентность handler'а — на стороне consumer'а (см. AGENTS.md).
package kafka

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/segmentio/kafka-go"
)

// ----------------------------------------------------------------------------
// Producer
// ----------------------------------------------------------------------------

// Producer публикует JSON-события в Kafka topic.
type Producer interface {
	// Publish сериализует value через json.Marshal и шлёт в topic с key.
	Publish(ctx context.Context, topic string, key string, value any) error
	Close() error
}

// ProducerConfig — настройки producer'а.
type ProducerConfig struct {
	// Brokers — список host:port. Пустой → no-op producer.
	Brokers []string
	// BatchTimeout — макс. задержка для накопления batch'а. 0 = 10ms.
	BatchTimeout time.Duration
	// WriteTimeout — таймаут одной публикации. 0 = 5s.
	WriteTimeout time.Duration
	// Async — если true, Publish не ждёт ack (быстрее, но без подтверждения).
	Async bool
}

type kafkaProducer struct {
	w            *kafka.Writer
	writeTimeout time.Duration
}

// NewProducer создаёт новый producer. Если cfg.Brokers пуст — возвращает no-op.
func NewProducer(cfg ProducerConfig) Producer {
	if len(cfg.Brokers) == 0 {
		return noopProducer{}
	}

	if cfg.BatchTimeout == 0 {
		cfg.BatchTimeout = 10 * time.Millisecond
	}
	if cfg.WriteTimeout == 0 {
		cfg.WriteTimeout = 5 * time.Second
	}

	w := &kafka.Writer{
		Addr:         kafka.TCP(cfg.Brokers...),
		Balancer:     &kafka.Hash{}, // partition by key для order-by-user
		RequiredAcks: kafka.RequireAll,
		BatchTimeout: cfg.BatchTimeout,
		WriteTimeout: cfg.WriteTimeout,
		Async:        cfg.Async,
		AllowAutoTopicCreation: true,
	}

	return &kafkaProducer{w: w, writeTimeout: cfg.WriteTimeout}
}

func (p *kafkaProducer) Publish(ctx context.Context, topic string, key string, value any) error {
	body, err := json.Marshal(value)
	if err != nil {
		return fmt.Errorf("marshal value: %w", err)
	}

	wctx, cancel := context.WithTimeout(ctx, p.writeTimeout)
	defer cancel()

	msg := kafka.Message{
		Topic: topic,
		Key:   []byte(key),
		Value: body,
		Time:  time.Now().UTC(),
	}

	if err := p.w.WriteMessages(wctx, msg); err != nil {
		return fmt.Errorf("write to kafka topic %s: %w", topic, err)
	}
	return nil
}

func (p *kafkaProducer) Close() error {
	return p.w.Close()
}

type noopProducer struct{}

func (noopProducer) Publish(context.Context, string, string, any) error { return nil }
func (noopProducer) Close() error                                       { return nil }

// IsNoop возвращает true, если producer был создан с пустым списком brokers.
func IsNoop(p Producer) bool {
	_, ok := p.(noopProducer)
	return ok
}

// ----------------------------------------------------------------------------
// Consumer (ConsumerGroup)
// ----------------------------------------------------------------------------

// HandlerFunc обрабатывает одно сообщение. При nil error — kafka-go
// автоматически закоммитит offset. При не-nil — сообщение будет
// перечитано (at-least-once).
type HandlerFunc func(ctx context.Context, msg kafka.Message) error

// ConsumerConfig — настройки ConsumerGroup'а.
type ConsumerConfig struct {
	// Brokers — список host:port. Пустой → ошибка.
	Brokers []string
	// Topic — единственный топик для подписки.
	Topic string
	// GroupID — consumer group id (для горизонтального масштабирования).
	GroupID string
	// MinBytes / MaxBytes — fetch hints. Default: 10KB / 10MB.
	MinBytes int
	MaxBytes int
	// MaxWait — макс. время ожидания при пустом топике. 0 = 1s.
	MaxWait time.Duration
}

// Consumer — ConsumerGroup с явным Run-loop'ом.
type Consumer struct {
	r       *kafka.Reader
	handler HandlerFunc
}

// NewConsumer создаёт ConsumerGroup-reader. Возвращает ошибку при пустых brokers.
func NewConsumer(cfg ConsumerConfig, handler HandlerFunc) (*Consumer, error) {
	if len(cfg.Brokers) == 0 {
		return nil, errors.New("kafka: empty brokers list")
	}
	if cfg.Topic == "" {
		return nil, errors.New("kafka: empty topic")
	}
	if cfg.GroupID == "" {
		return nil, errors.New("kafka: empty group id")
	}
	if handler == nil {
		return nil, errors.New("kafka: nil handler")
	}

	if cfg.MinBytes == 0 {
		cfg.MinBytes = 10e3
	}
	if cfg.MaxBytes == 0 {
		cfg.MaxBytes = 10e6
	}
	if cfg.MaxWait == 0 {
		cfg.MaxWait = time.Second
	}

	r := kafka.NewReader(kafka.ReaderConfig{
		Brokers:        cfg.Brokers,
		GroupID:        cfg.GroupID,
		Topic:          cfg.Topic,
		MinBytes:       cfg.MinBytes,
		MaxBytes:       cfg.MaxBytes,
		MaxWait:        cfg.MaxWait,
		StartOffset:    kafka.FirstOffset,
		CommitInterval: 0, // sync commit на каждом успешном handler
	})

	return &Consumer{r: r, handler: handler}, nil
}

// Run — блокирующий цикл потребления. Возврат при ctx.Done().
// В случае ошибки handler — лог + повтор сообщения после re-fetch.
func (c *Consumer) Run(ctx context.Context, onError func(err error, msg kafka.Message)) error {
	for {
		// FetchMessage не коммитит автоматически — это делает CommitMessages ниже.
		msg, err := c.r.FetchMessage(ctx)
		if err != nil {
			if ctx.Err() != nil {
				return ctx.Err()
			}
			if onError != nil {
				onError(fmt.Errorf("fetch: %w", err), msg)
			}
			continue
		}

		if err := c.handler(ctx, msg); err != nil {
			if onError != nil {
				onError(fmt.Errorf("handle: %w", err), msg)
			}
			// Не коммитим — сообщение перечитается.
			continue
		}

		if err := c.r.CommitMessages(ctx, msg); err != nil {
			if ctx.Err() != nil {
				return ctx.Err()
			}
			if onError != nil {
				onError(fmt.Errorf("commit: %w", err), msg)
			}
		}
	}
}

// Close закрывает reader.
func (c *Consumer) Close() error {
	return c.r.Close()
}

// ----------------------------------------------------------------------------
// Helpers
// ----------------------------------------------------------------------------

// SplitBrokers парсит строку "host1:9092,host2:9092" → []string.
// Пустая строка → пустой слайс. Пробелы вокруг entries обрезаются.
func SplitBrokers(s string) []string {
	if s == "" {
		return nil
	}
	parts := strings.Split(s, ",")
	out := make([]string, 0, len(parts))
	for _, p := range parts {
		if v := strings.TrimSpace(p); v != "" {
			out = append(out, v)
		}
	}
	return out
}
