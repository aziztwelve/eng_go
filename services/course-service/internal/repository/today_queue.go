package repository

import (
	"context"
	"time"

	"github.com/elearning/course-service/internal/model"
)

// TodayQueueRepository — приоритетная очередь "На сегодня" для flashcards.
// Не влияет на SM-2 расписание; используется для фильтра practice-сессии.
type TodayQueueRepository interface {
	// Pin — добавляет (user, flashcard, date) в очередь. Идемпотентен:
	// повторный pin того же дня возвращает существующий added_at.
	// Если flashcard принадлежит другому юзеру или archived → ErrFlashcardNotFound.
	Pin(ctx context.Context, userID, flashcardID string, date time.Time) (addedAt time.Time, err error)

	// Unpin — удаляет запись. Возвращает true если что-то реально удалили.
	Unpin(ctx context.Context, userID, flashcardID string, date time.Time) (deleted bool, err error)

	// ListForDate — все карточки юзера, запиннутые на эту дату.
	// JOIN'им user_flashcards и сразу выставляем pinned_today=true.
	ListForDate(ctx context.Context, userID string, date time.Time) ([]*model.Flashcard, error)
}
