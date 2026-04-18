package kafka

import (
	"context"
	"encoding/json"
	"time"

	"github.com/segmentio/kafka-go"
	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
)

// ProgressUpdatedEvent представляет событие обновления прогресса
type ProgressUpdatedEvent struct {
	EventType                string    `json:"event_type"`
	UserID                   string    `json:"user_id"`
	CourseID                 string    `json:"course_id"`
	LessonID                 string    `json:"lesson_id"`
	StepID                   string    `json:"step_id"`
	StepType                 string    `json:"step_type"`
	Completed                bool      `json:"completed"`
	Score                    *float64  `json:"score,omitempty"`
	LessonProgressPercentage float64   `json:"lesson_progress_percentage"`
	Timestamp                time.Time `json:"timestamp"`
}

// Producer представляет Kafka producer для событий прогресса
type Producer struct {
	writer *kafka.Writer
}

// NewProgressProducer создает новый Kafka producer
func NewProgressProducer(brokers []string) *Producer {
	writer := &kafka.Writer{
		Addr:     kafka.TCP(brokers...),
		Topic:    "progress.updated",
		Balancer: &kafka.LeastBytes{},
	}

	return &Producer{
		writer: writer,
	}
}

// PublishProgressUpdated публикует событие обновления прогресса
func (p *Producer) PublishProgressUpdated(ctx context.Context, event *ProgressUpdatedEvent) error {
	event.Timestamp = time.Now()

	data, err := json.Marshal(event)
	if err != nil {
		logger.Error(ctx, "Failed to marshal progress event", zap.Error(err))
		return err
	}

	msg := kafka.Message{
		Key:   []byte(event.UserID),
		Value: data,
	}

	err = p.writer.WriteMessages(ctx, msg)
	if err != nil {
		logger.Error(ctx, "Failed to publish progress event to Kafka",
			zap.Error(err),
			zap.String("user_id", event.UserID),
			zap.String("step_id", event.StepID),
		)
		return err
	}

	logger.Info(ctx, "📊 Published progress.updated event",
		zap.String("user_id", event.UserID),
		zap.String("course_id", event.CourseID),
		zap.String("lesson_id", event.LessonID),
		zap.String("step_id", event.StepID),
		zap.Float64("progress", event.LessonProgressPercentage),
	)

	return nil
}

// Close закрывает producer
func (p *Producer) Close() error {
	return p.writer.Close()
}
