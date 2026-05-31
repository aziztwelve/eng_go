package postgres

import (
	"context"
	"database/sql"
	"errors"
	"fmt"
	"strings"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgconn"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// flashcardSelectCols — список колонок для SELECT/RETURNING.
// Алиас `f.` — чтобы легко делать LEFT JOIN с today_queue.
const flashcardSelectCols = `
	f.id, f.user_id, f.source, f.vocabulary_id,
	f.word, f.translation, f.language, f.target_language,
	f.definition, f.example_sentence, f.audio_url, f.image_url,
	f.archived_at, f.created_at, f.updated_at
`

type flashcardRepository struct {
	pool *pgxpool.Pool
}

// NewFlashcardRepository — конструктор.
func NewFlashcardRepository(pool *pgxpool.Pool) repository.FlashcardRepository {
	return &flashcardRepository{pool: pool}
}

// scanFlashcard — общий scan'ер. Если `withPinned=true`, ожидаем доп.
// колонку pinned_today (bool) в конце.
func scanFlashcard(scan func(...interface{}) error, withPinned bool) (*model.Flashcard, error) {
	f := &model.Flashcard{}
	var (
		vocabID, definition, example, audio, image sql.NullString
		archivedAt                                 sql.NullTime
		pinned                                     sql.NullBool
	)
	dst := []interface{}{
		&f.ID,
		&f.UserID,
		&f.Source,
		&vocabID,
		&f.Word,
		&f.Translation,
		&f.Language,
		&f.TargetLanguage,
		&definition,
		&example,
		&audio,
		&image,
		&archivedAt,
		&f.CreatedAt,
		&f.UpdatedAt,
	}
	if withPinned {
		dst = append(dst, &pinned)
	}
	if err := scan(dst...); err != nil {
		return nil, err
	}
	f.VocabularyID = vocabID.String
	f.Definition = definition.String
	f.ExampleSentence = example.String
	f.AudioURL = audio.String
	f.ImageURL = image.String
	if archivedAt.Valid {
		t := archivedAt.Time
		f.ArchivedAt = &t
	}
	if withPinned {
		f.PinnedToday = pinned.Bool
	}
	return f, nil
}

func (r *flashcardRepository) Create(ctx context.Context, f *model.Flashcard) error {
	if f.ID == "" {
		f.ID = uuid.New().String()
	}
	if f.Source == "" {
		f.Source = model.FlashcardSourceManual
	}
	query := `
		INSERT INTO user_flashcards
			(id, user_id, source, vocabulary_id,
			 word, translation, language, target_language,
			 definition, example_sentence, audio_url, image_url)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
		RETURNING created_at, updated_at
	`
	err := r.pool.QueryRow(ctx, query,
		f.ID,
		f.UserID,
		f.Source,
		nullStringPtr(f.VocabularyID),
		f.Word,
		f.Translation,
		f.Language,
		f.TargetLanguage,
		nullStringPtr(f.Definition),
		nullStringPtr(f.ExampleSentence),
		nullStringPtr(f.AudioURL),
		nullStringPtr(f.ImageURL),
	).Scan(&f.CreatedAt, &f.UpdatedAt)
	if err != nil {
		// 23505 — unique violation (один и тот же vocabulary_id у user'а).
		var pgErr *pgconn.PgError
		if errors.As(err, &pgErr) && pgErr.Code == "23505" {
			return repository.ErrFlashcardConflict
		}
		return err
	}
	return nil
}

func (r *flashcardRepository) GetByID(ctx context.Context, userID, flashcardID string) (*model.Flashcard, error) {
	query := `SELECT ` + flashcardSelectCols + `,
		EXISTS(
			SELECT 1 FROM flashcard_today_queue q
			WHERE q.user_id = f.user_id
			  AND q.flashcard_id = f.id
			  AND q.queued_for_date = CURRENT_DATE
		) AS pinned_today
		FROM user_flashcards f
		WHERE f.id = $1 AND f.user_id = $2`
	flashcard, err := scanFlashcard(
		r.pool.QueryRow(ctx, query, flashcardID, userID).Scan,
		true,
	)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrFlashcardNotFound
		}
		return nil, err
	}
	return flashcard, nil
}

func (r *flashcardRepository) GetByVocabulary(ctx context.Context, userID, vocabularyID string) (*model.Flashcard, error) {
	query := `SELECT ` + flashcardSelectCols + `,
		EXISTS(
			SELECT 1 FROM flashcard_today_queue q
			WHERE q.user_id = f.user_id
			  AND q.flashcard_id = f.id
			  AND q.queued_for_date = CURRENT_DATE
		) AS pinned_today
		FROM user_flashcards f
		WHERE f.user_id = $1 AND f.vocabulary_id = $2
		  AND f.archived_at IS NULL
		LIMIT 1`
	flashcard, err := scanFlashcard(
		r.pool.QueryRow(ctx, query, userID, vocabularyID).Scan,
		true,
	)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrFlashcardNotFound
		}
		return nil, err
	}
	return flashcard, nil
}

func (r *flashcardRepository) Update(ctx context.Context, f *model.Flashcard) error {
	query := `
		UPDATE user_flashcards
		SET word = $3,
		    translation = $4,
		    definition = $5,
		    example_sentence = $6,
		    audio_url = $7,
		    image_url = $8
		WHERE id = $1 AND user_id = $2
		RETURNING updated_at
	`
	err := r.pool.QueryRow(ctx, query,
		f.ID,
		f.UserID,
		f.Word,
		f.Translation,
		nullStringPtr(f.Definition),
		nullStringPtr(f.ExampleSentence),
		nullStringPtr(f.AudioURL),
		nullStringPtr(f.ImageURL),
	).Scan(&f.UpdatedAt)
	if errors.Is(err, pgx.ErrNoRows) {
		return repository.ErrFlashcardNotFound
	}
	return err
}

func (r *flashcardRepository) Archive(ctx context.Context, userID, flashcardID string) error {
	tag, err := r.pool.Exec(ctx, `
		UPDATE user_flashcards
		SET archived_at = NOW()
		WHERE id = $1 AND user_id = $2 AND archived_at IS NULL`,
		flashcardID, userID,
	)
	if err != nil {
		return err
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrFlashcardNotFound
	}
	return nil
}

func (r *flashcardRepository) List(ctx context.Context, f repository.FlashcardListFilters) ([]*model.Flashcard, int, error) {
	conds := []string{"f.user_id = $1"}
	args := []interface{}{f.UserID}
	pos := 2
	add := func(cond string, val interface{}) {
		conds = append(conds, fmt.Sprintf(cond, pos))
		args = append(args, val)
		pos++
	}

	if !f.IncludeArchived {
		conds = append(conds, "f.archived_at IS NULL")
	}
	if f.Source != "" {
		add("f.source = $%d", f.Source)
	}
	if f.Search != "" {
		conds = append(conds, fmt.Sprintf("lower(f.word) LIKE $%d", pos))
		args = append(args, "%"+strings.ToLower(f.Search)+"%")
		pos++
	}

	// JOIN today_queue либо для фильтра OnlyPinnedToday, либо чтобы
	// заполнить pinned_today для UI. Используем LEFT JOIN с EXISTS-subquery
	// в SELECT, чтобы не дублировать строки.
	if f.OnlyPinnedToday {
		conds = append(conds, fmt.Sprintf(`EXISTS(
			SELECT 1 FROM flashcard_today_queue q
			WHERE q.user_id = f.user_id
			  AND q.flashcard_id = f.id
			  AND q.queued_for_date = CURRENT_DATE
		)`))
	}

	where := strings.Join(conds, " AND ")

	var total int
	if err := r.pool.QueryRow(ctx,
		"SELECT COUNT(*) FROM user_flashcards f WHERE "+where,
		args...,
	).Scan(&total); err != nil {
		return nil, 0, err
	}

	limit := f.Limit
	if limit <= 0 {
		limit = 50
	}
	if limit > 200 {
		limit = 200
	}

	query := fmt.Sprintf(`
		SELECT %s,
		EXISTS(
			SELECT 1 FROM flashcard_today_queue q
			WHERE q.user_id = f.user_id
			  AND q.flashcard_id = f.id
			  AND q.queued_for_date = CURRENT_DATE
		) AS pinned_today
		FROM user_flashcards f
		WHERE %s
		ORDER BY f.created_at DESC
		LIMIT $%d OFFSET $%d`,
		flashcardSelectCols, where, pos, pos+1,
	)
	args = append(args, limit, f.Offset)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var items []*model.Flashcard
	for rows.Next() {
		fc, err := scanFlashcard(rows.Scan, true)
		if err != nil {
			return nil, 0, err
		}
		items = append(items, fc)
	}
	return items, total, rows.Err()
}

// BulkCreate — best-effort batch insert. Дубликаты по uniq (user_id,
// vocabulary_id) WHERE archived_at IS NULL → skipped++. Manual карточки
// (vocabulary_id IS NULL) — всегда создаются.
func (r *flashcardRepository) BulkCreate(ctx context.Context, items []*model.Flashcard) (int, int, error) {
	created, skipped := 0, 0

	tx, err := r.pool.Begin(ctx)
	if err != nil {
		return 0, 0, err
	}
	defer func() { _ = tx.Rollback(ctx) }()

	for i, f := range items {
		if f.ID == "" {
			f.ID = uuid.New().String()
		}
		if f.Source == "" {
			f.Source = model.FlashcardSourceManual
		}

		// Дедуп для карточек с vocabulary_id (manual всегда insert).
		if f.VocabularyID != "" {
			var existingID string
			err := tx.QueryRow(ctx, `
				SELECT id FROM user_flashcards
				WHERE user_id = $1 AND vocabulary_id = $2
				  AND archived_at IS NULL
				LIMIT 1`,
				f.UserID, f.VocabularyID,
			).Scan(&existingID)
			if err == nil {
				skipped++
				continue
			}
			if !errors.Is(err, pgx.ErrNoRows) {
				return 0, 0, fmt.Errorf("bulk flashcards[%d] dedup: %w", i, err)
			}
		}

		err := tx.QueryRow(ctx, `
			INSERT INTO user_flashcards
				(id, user_id, source, vocabulary_id,
				 word, translation, language, target_language,
				 definition, example_sentence, audio_url, image_url)
			VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12)
			RETURNING created_at, updated_at`,
			f.ID,
			f.UserID,
			f.Source,
			nullStringPtr(f.VocabularyID),
			f.Word,
			f.Translation,
			f.Language,
			f.TargetLanguage,
			nullStringPtr(f.Definition),
			nullStringPtr(f.ExampleSentence),
			nullStringPtr(f.AudioURL),
			nullStringPtr(f.ImageURL),
		).Scan(&f.CreatedAt, &f.UpdatedAt)
		switch {
		case err == nil:
			created++
		default:
			var pgErr *pgconn.PgError
			if errors.As(err, &pgErr) && pgErr.Code == "23505" {
				// Гонка: между dedup-SELECT и INSERT успели вставить.
				skipped++
				continue
			}
			return 0, 0, fmt.Errorf("bulk flashcards[%d] insert: %w", i, err)
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return 0, 0, err
	}
	return created, skipped, nil
}

// Stats — агрегаты по non-archived карточкам юзера. SRS-зависимые поля
// (learning_count / mastered_count / today_completed) пока возвращают 0:
// требуют JOIN с srs.user_srs_items и srs.review_history. Заполнение —
// в следующем sprint'е (расширение srs.Client). TotalCount и TodayDue
// (pinned for today) — считаем сейчас.
func (r *flashcardRepository) Stats(ctx context.Context, userID string) (repository.FlashcardStats, error) {
	var s repository.FlashcardStats
	err := r.pool.QueryRow(ctx, `
		SELECT
			COUNT(*) FILTER (WHERE archived_at IS NULL) AS total,
			COUNT(*) FILTER (WHERE archived_at IS NULL AND EXISTS(
				SELECT 1 FROM flashcard_today_queue q
				WHERE q.user_id = f.user_id
				  AND q.flashcard_id = f.id
				  AND q.queued_for_date = CURRENT_DATE
			)) AS today_due
		FROM user_flashcards f
		WHERE f.user_id = $1`,
		userID,
	).Scan(&s.TotalCount, &s.TodayDue)
	if err != nil {
		return s, err
	}
	// learning_count / mastered_count / today_completed → 0 до SRS integration.
	return s, nil
}
