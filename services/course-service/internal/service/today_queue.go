package service

import (
	"context"
	"errors"
	"fmt"
	"time"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// TodayQueueService — управление priority queue "На сегодня".
//
// Timezone handling: на phase-7 v1 используется UTC `time.Now().UTC()`
// если caller не передал явную дату. Per-user TZ (через user.Client) —
// TODO в следующих sprint'ах (см. progressService.todayInTZ как пример).
type TodayQueueService interface {
	Pin(ctx context.Context, userID, flashcardID, dateStr string) (addedAt time.Time, resolvedDate time.Time, err error)
	Unpin(ctx context.Context, userID, flashcardID, dateStr string) error
	List(ctx context.Context, userID, dateStr string) (items []*model.Flashcard, resolvedDate time.Time, err error)
}

type todayQueueService struct {
	repo repository.TodayQueueRepository
}

// NewTodayQueueService — конструктор.
func NewTodayQueueService(repo repository.TodayQueueRepository) TodayQueueService {
	return &todayQueueService{repo: repo}
}

// parseQueueDate — `YYYY-MM-DD` → time.Time (UTC midnight). Empty → today UTC.
// На уровне БД колонка DATE без TZ — храним «как день».
func parseQueueDate(dateStr string) (time.Time, error) {
	if dateStr == "" {
		now := time.Now().UTC()
		return time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, time.UTC), nil
	}
	t, err := time.Parse("2006-01-02", dateStr)
	if err != nil {
		return time.Time{}, fmt.Errorf("invalid queued_for_date %q (expected YYYY-MM-DD): %w", dateStr, err)
	}
	return t, nil
}

func (s *todayQueueService) Pin(ctx context.Context, userID, flashcardID, dateStr string) (time.Time, time.Time, error) {
	if userID == "" || flashcardID == "" {
		return time.Time{}, time.Time{}, errors.New("today_queue: user_id and flashcard_id are required")
	}
	date, err := parseQueueDate(dateStr)
	if err != nil {
		return time.Time{}, time.Time{}, err
	}
	addedAt, err := s.repo.Pin(ctx, userID, flashcardID, date)
	if err != nil {
		return time.Time{}, time.Time{}, err
	}
	return addedAt, date, nil
}

func (s *todayQueueService) Unpin(ctx context.Context, userID, flashcardID, dateStr string) error {
	if userID == "" || flashcardID == "" {
		return errors.New("today_queue: user_id and flashcard_id are required")
	}
	date, err := parseQueueDate(dateStr)
	if err != nil {
		return err
	}
	// Unpin без записи — не ошибка (идемпотентность).
	_, err = s.repo.Unpin(ctx, userID, flashcardID, date)
	return err
}

func (s *todayQueueService) List(ctx context.Context, userID, dateStr string) ([]*model.Flashcard, time.Time, error) {
	if userID == "" {
		return nil, time.Time{}, errors.New("today_queue: user_id is required")
	}
	date, err := parseQueueDate(dateStr)
	if err != nil {
		return nil, time.Time{}, err
	}
	items, err := s.repo.ListForDate(ctx, userID, date)
	if err != nil {
		return nil, time.Time{}, err
	}
	return items, date, nil
}
