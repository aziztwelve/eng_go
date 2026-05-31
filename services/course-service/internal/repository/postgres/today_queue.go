package postgres

import (
	"context"
	"errors"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type todayQueueRepository struct {
	pool *pgxpool.Pool
}

// NewTodayQueueRepository — конструктор.
func NewTodayQueueRepository(pool *pgxpool.Pool) repository.TodayQueueRepository {
	return &todayQueueRepository{pool: pool}
}

// Pin — добавляет в очередь. Если запись уже есть → no-op (возвращаем
// существующий added_at). Если flashcard не принадлежит юзеру или
// archived — ErrFlashcardNotFound (FK ON DELETE CASCADE сработает на
// уровне БД, но мы предварительно валидируем).
func (r *todayQueueRepository) Pin(ctx context.Context, userID, flashcardID string, date time.Time) (time.Time, error) {
	// Проверка owner + не-archived.
	var ok bool
	err := r.pool.QueryRow(ctx, `
		SELECT EXISTS(
			SELECT 1 FROM user_flashcards
			WHERE id = $1 AND user_id = $2 AND archived_at IS NULL
		)`, flashcardID, userID,
	).Scan(&ok)
	if err != nil {
		return time.Time{}, err
	}
	if !ok {
		return time.Time{}, repository.ErrFlashcardNotFound
	}

	// ON CONFLICT DO UPDATE … RETURNING — атомарно достаём added_at
	// (возвращаем существующий, если запись уже была).
	var addedAt time.Time
	err = r.pool.QueryRow(ctx, `
		INSERT INTO flashcard_today_queue (user_id, flashcard_id, queued_for_date)
		VALUES ($1, $2, $3)
		ON CONFLICT (user_id, flashcard_id, queued_for_date)
		DO UPDATE SET added_at = flashcard_today_queue.added_at
		RETURNING added_at`,
		userID, flashcardID, date,
	).Scan(&addedAt)
	return addedAt, err
}

func (r *todayQueueRepository) Unpin(ctx context.Context, userID, flashcardID string, date time.Time) (bool, error) {
	tag, err := r.pool.Exec(ctx, `
		DELETE FROM flashcard_today_queue
		WHERE user_id = $1 AND flashcard_id = $2 AND queued_for_date = $3`,
		userID, flashcardID, date,
	)
	if err != nil {
		return false, err
	}
	return tag.RowsAffected() > 0, nil
}

func (r *todayQueueRepository) ListForDate(ctx context.Context, userID string, date time.Time) ([]*model.Flashcard, error) {
	// JOIN with user_flashcards. archived_at IS NULL — не показываем
	// архивированные даже если они были запиннуты ранее.
	query := `SELECT ` + flashcardSelectCols + `, TRUE AS pinned_today
		FROM flashcard_today_queue q
		JOIN user_flashcards f ON f.id = q.flashcard_id
		WHERE q.user_id = $1
		  AND q.queued_for_date = $2
		  AND f.archived_at IS NULL
		ORDER BY q.added_at ASC`

	rows, err := r.pool.Query(ctx, query, userID, date)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, nil
		}
		return nil, err
	}
	defer rows.Close()

	var items []*model.Flashcard
	for rows.Next() {
		fc, err := scanFlashcard(rows.Scan, true)
		if err != nil {
			return nil, err
		}
		items = append(items, fc)
	}
	return items, rows.Err()
}
