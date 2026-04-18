package kafka

import (
	"context"
	"encoding/json"
	"time"

	"github.com/segmentio/kafka-go"
	"go.uber.org/zap"

	"github.com/elearning/course-service/internal/service"
	"github.com/elearning/platform/pkg/logger"
)

// OrderPaidEvent представляет событие оплаты заказа
type OrderPaidEvent struct {
	OrderID  string    `json:"order_id"`
	UserID   string    `json:"user_id"`
	CourseID string    `json:"course_id"`
	PaidAt   time.Time `json:"paid_at"`
}

// Consumer представляет Kafka consumer
type Consumer struct {
	reader            *kafka.Reader
	enrollmentService service.EnrollmentService
}

// NewConsumer создает новый Kafka consumer
func NewConsumer(brokers []string, groupID string, enrollmentService service.EnrollmentService) *Consumer {
	reader := kafka.NewReader(kafka.ReaderConfig{
		Brokers:  brokers,
		Topic:    "order.paid",
		GroupID:  groupID,
		MinBytes: 10e3,
		MaxBytes: 10e6,
	})

	return &Consumer{
		reader:            reader,
		enrollmentService: enrollmentService,
	}
}

// Start запускает consumer
func (c *Consumer) Start(ctx context.Context) error {
	logger.Info(ctx, "🎧 Starting Kafka consumer for order.paid topic")

	for {
		select {
		case <-ctx.Done():
			logger.Info(ctx, "Stopping Kafka consumer")
			return c.reader.Close()
		default:
			msg, err := c.reader.ReadMessage(ctx)
			if err != nil {
				logger.Error(ctx, "Failed to read Kafka message", zap.Error(err))
				continue
			}

			if err := c.handleMessage(ctx, msg); err != nil {
				logger.Error(ctx, "Failed to handle Kafka message",
					zap.Error(err),
					zap.String("topic", msg.Topic),
					zap.Int("partition", msg.Partition),
					zap.Int64("offset", msg.Offset),
				)
			}
		}
	}
}

// handleMessage обрабатывает сообщение из Kafka
func (c *Consumer) handleMessage(ctx context.Context, msg kafka.Message) error {
	var event OrderPaidEvent
	if err := json.Unmarshal(msg.Value, &event); err != nil {
		return err
	}

	logger.Info(ctx, "📦 Processing order.paid event",
		zap.String("order_id", event.OrderID),
		zap.String("user_id", event.UserID),
		zap.String("course_id", event.CourseID),
	)

	// Записываем пользователя на курс
	_, err := c.enrollmentService.EnrollUser(ctx, event.UserID, event.CourseID)
	if err != nil {
		return err
	}

	logger.Info(ctx, "✅ User enrolled successfully",
		zap.String("user_id", event.UserID),
		zap.String("course_id", event.CourseID),
	)

	return nil
}

// Close закрывает consumer
func (c *Consumer) Close() error {
	return c.reader.Close()
}
