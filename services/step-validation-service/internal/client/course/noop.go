package course

import "context"

// noopClient — fallback, когда `COURSE_SERVICE_ADDR` пуст.
// GetStep всегда возвращает ErrCourseUnavailable: без шага мы не можем
// валидировать ответ. Это намеренно — submission service должен
// возвращать INVALID_ARGUMENT/UNAVAILABLE наверх.
type noopClient struct{}

// NewNoopClient — создаёт no-op fallback.
func NewNoopClient() Client {
	return &noopClient{}
}

func (noopClient) GetStep(context.Context, string) (*Step, error) {
	return nil, ErrCourseUnavailable
}

func (noopClient) MarkStepComplete(context.Context, MarkCompletedRequest) error {
	return nil
}

func (noopClient) AddVocabularyAsFlashcard(context.Context, string, string, string) error {
	return nil
}
