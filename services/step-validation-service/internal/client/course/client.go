package course

import (
	"context"

	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// Step — нужный нам срез контента шага.
// Клиент возвращает её через GetStep.
type Step struct {
	ID         string
	LessonID   string
	Type       string
	Title      string
	Content    string // raw JSON
	OrderIndex int32
}

// MarkCompletedRequest — параметры для course-service.MarkStepComplete.
type MarkCompletedRequest struct {
	UserID           string
	StepID           string
	TimeSpentSeconds int32
	Score            *float64
	Attempts         *int32
	SourceType       string
	SourceID         string
}

// Client — узкий интерфейс course-service для step-validation-service.
type Client interface {
	GetStep(ctx context.Context, stepID string) (*Step, error)
	MarkStepComplete(ctx context.Context, req MarkCompletedRequest) error
	// AddXPResponse-like от gamification client — не нужен, мы напрямую
	// вызываем gamification.Client.
}

// AsCourseProtoStep — хелпер для тестов: конвертирует proto-Step в
// внутреннее представление.
func AsCourseProtoStep(s *coursev1.Step) *Step {
	if s == nil {
		return nil
	}
	return &Step{
		ID:         s.Id,
		LessonID:   s.LessonId,
		Type:       s.Type,
		Title:      s.Title,
		Content:    s.Content,
		OrderIndex: s.OrderIndex,
	}
}
