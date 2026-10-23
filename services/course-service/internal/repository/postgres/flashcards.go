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
	f.transcription,
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
		vocabID, definition, example, audio, image, transcription sql.NullString
		archivedAt                                                sql.NullTime
		pinned                                                    sql.NullBool
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
		&transcription,
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
	f.Transcription = transcription.String
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
			 definition, example_sentence, audio_url, image_url,
			 transcription)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
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
		nullStringPtr(f.Transcription),
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
	return flashcard, hydrateFlashcardSRS(ctx, r.pool, []*model.Flashcard{flashcard})
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
	return flashcard, hydrateFlashcardSRS(ctx, r.pool, []*model.Flashcard{flashcard})
}

func (r *flashcardRepository) Update(ctx context.Context, f *model.Flashcard) error {
	query := `
		UPDATE user_flashcards
		SET word = $3,
		    translation = $4,
		    definition = $5,
		    example_sentence = $6,
		    audio_url = $7,
		    image_url = $8,
		    transcription = $9
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
		nullStringPtr(f.Transcription),
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
	if err := rows.Err(); err != nil {
		return nil, 0, err
	}
	rows.Close()
	if err := hydrateFlashcardSRS(ctx, r.pool, items); err != nil {
		return nil, 0, err
	}
	return items, total, nil
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
	if len(items) > 0 {
		// Serialize batches for this owner, including old clients without vocabulary UUIDs.
		if _, err := tx.Exec(ctx, `SELECT pg_advisory_xact_lock(hashtextextended($1, 0))`, "flashcards|"+items[0].UserID); err != nil {
			return 0, 0, err
		}
	}

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

		if f.VocabularyID == "" && f.Source != model.FlashcardSourceManual {
			var exists bool
			if err := tx.QueryRow(ctx, `SELECT EXISTS(SELECT 1 FROM user_flashcards
                WHERE user_id=$1 AND archived_at IS NULL AND source IN ('lesson','bank')
                AND lower(btrim(word))=lower(btrim($2)) AND translation=$3
                AND language=$4 AND target_language=$5 AND COALESCE(definition,'')=$6)`,
				f.UserID, f.Word, f.Translation, f.Language, f.TargetLanguage, f.Definition).Scan(&exists); err != nil {
				return 0, 0, err
			}
			if exists {
				skipped++
				continue
			}
		}
		err := tx.QueryRow(ctx, `
			INSERT INTO user_flashcards
				(id, user_id, source, vocabulary_id,
				 word, translation, language, target_language,
				 definition, example_sentence, audio_url, image_url,
				 transcription)
			VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13)
            ON CONFLICT DO NOTHING
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
			nullStringPtr(f.Transcription),
		).Scan(&f.CreatedAt, &f.UpdatedAt)
		switch {
		case err == nil:
			created++
		default:
			if errors.Is(err, pgx.ErrNoRows) {
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

// Stats counts only active personal cards; dates use the same UTC day as today queue.
func (r *flashcardRepository) Stats(ctx context.Context, userID string) (repository.FlashcardStats, error) {
	var stats repository.FlashcardStats
	err := r.pool.QueryRow(ctx, `
 SELECT COUNT(*),
 COUNT(*) FILTER(WHERE s.last_reviewed_at IS NOT NULL AND s.strength<0.8),
 COUNT(*) FILTER(WHERE s.strength>=0.8),
 COUNT(*) FILTER(WHERE EXISTS(SELECT 1 FROM flashcard_today_queue q WHERE q.user_id=f.user_id AND q.flashcard_id=f.id AND q.queued_for_date=(NOW() AT TIME ZONE 'UTC')::date)),
 COUNT(*) FILTER(WHERE (s.last_reviewed_at AT TIME ZONE 'UTC')::date=(NOW() AT TIME ZONE 'UTC')::date),
 COUNT(*) FILTER(WHERE EXISTS(SELECT 1 FROM flashcard_today_queue q WHERE q.user_id=f.user_id AND q.flashcard_id=f.id AND q.queued_for_date=(NOW() AT TIME ZONE 'UTC')::date)
 AND ((s.last_reviewed_at AT TIME ZONE 'UTC')::date IS DISTINCT FROM (NOW() AT TIME ZONE 'UTC')::date))
 FROM user_flashcards f LEFT JOIN flashcard_srs_state s ON s.user_id=f.user_id AND s.flashcard_id=f.id
 WHERE f.user_id=$1 AND f.archived_at IS NULL`, userID).Scan(&stats.TotalCount, &stats.LearningCount, &stats.MasteredCount, &stats.TodayDue, &stats.TodayCompleted, &stats.TodayRemaining)
	return stats, err
}
