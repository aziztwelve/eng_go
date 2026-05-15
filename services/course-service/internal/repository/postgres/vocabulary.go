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

const vocabularySelectCols = `id, language, word, translation, target_language,
	audio_url, image_url, level, pos, created_at, updated_at`

type vocabularyRepository struct {
	pool *pgxpool.Pool
}

// NewVocabularyRepository — конструктор словаря.
func NewVocabularyRepository(pool *pgxpool.Pool) repository.VocabularyRepository {
	return &vocabularyRepository{pool: pool}
}

func scanVocabulary(scan func(...interface{}) error) (*model.VocabularyEntry, error) {
	v := &model.VocabularyEntry{}
	var audio, image, level, pos sql.NullString
	if err := scan(
		&v.ID,
		&v.Language,
		&v.Word,
		&v.Translation,
		&v.TargetLanguage,
		&audio,
		&image,
		&level,
		&pos,
		&v.CreatedAt,
		&v.UpdatedAt,
	); err != nil {
		return nil, err
	}
	v.AudioURL = audio.String
	v.ImageURL = image.String
	v.Level = level.String
	v.POS = pos.String
	return v, nil
}

func (r *vocabularyRepository) Create(ctx context.Context, e *model.VocabularyEntry) error {
	if e.ID == "" {
		e.ID = uuid.New().String()
	}
	query := `
		INSERT INTO vocabulary
			(id, language, word, translation, target_language,
			 audio_url, image_url, level, pos)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
		RETURNING created_at, updated_at
	`
	return r.pool.QueryRow(ctx, query,
		e.ID,
		e.Language,
		e.Word,
		e.Translation,
		e.TargetLanguage,
		nullStringPtr(e.AudioURL),
		nullStringPtr(e.ImageURL),
		nullStringPtr(e.Level),
		nullStringPtr(e.POS),
	).Scan(&e.CreatedAt, &e.UpdatedAt)
}

func (r *vocabularyRepository) GetByID(ctx context.Context, id string) (*model.VocabularyEntry, error) {
	query := `SELECT ` + vocabularySelectCols + ` FROM vocabulary WHERE id = $1`
	return scanVocabulary(r.pool.QueryRow(ctx, query, id).Scan)
}

func (r *vocabularyRepository) Update(ctx context.Context, e *model.VocabularyEntry) error {
	query := `
		UPDATE vocabulary
		SET word = $2, translation = $3,
		    audio_url = $4, image_url = $5,
		    level = $6, pos = $7
		WHERE id = $1
		RETURNING updated_at
	`
	return r.pool.QueryRow(ctx, query,
		e.ID,
		e.Word,
		e.Translation,
		nullStringPtr(e.AudioURL),
		nullStringPtr(e.ImageURL),
		nullStringPtr(e.Level),
		nullStringPtr(e.POS),
	).Scan(&e.UpdatedAt)
}

func (r *vocabularyRepository) Delete(ctx context.Context, id string) error {
	_, err := r.pool.Exec(ctx, `DELETE FROM vocabulary WHERE id = $1`, id)
	return err
}

func (r *vocabularyRepository) List(ctx context.Context, f repository.VocabularyListFilters) ([]*model.VocabularyEntry, int, error) {
	var conds []string
	var args []interface{}
	pos := 1
	add := func(cond string, val interface{}) {
		conds = append(conds, fmt.Sprintf(cond, pos))
		args = append(args, val)
		pos++
	}
	if f.Language != nil {
		add("language = $%d", *f.Language)
	}
	if f.TargetLanguage != nil {
		add("target_language = $%d", *f.TargetLanguage)
	}
	if f.Level != nil {
		add("level = $%d", *f.Level)
	}
	if f.POS != nil {
		add("pos = $%d", *f.POS)
	}
	if f.Search != "" {
		conds = append(conds, fmt.Sprintf("(word ILIKE $%d OR translation ILIKE $%d)", pos, pos))
		args = append(args, "%"+f.Search+"%")
		pos++
	}

	where := ""
	if len(conds) > 0 {
		where = "WHERE " + strings.Join(conds, " AND ")
	}

	var total int
	if err := r.pool.QueryRow(ctx, "SELECT COUNT(*) FROM vocabulary "+where, args...).Scan(&total); err != nil {
		return nil, 0, err
	}

	limit := f.Limit
	if limit <= 0 {
		limit = 50
	}
	query := fmt.Sprintf(`SELECT %s FROM vocabulary %s
		ORDER BY language, word LIMIT $%d OFFSET $%d`,
		vocabularySelectCols, where, pos, pos+1)
	args = append(args, limit, f.Offset)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var entries []*model.VocabularyEntry
	for rows.Next() {
		v, err := scanVocabulary(rows.Scan)
		if err != nil {
			return nil, 0, err
		}
		entries = append(entries, v)
	}
	return entries, total, rows.Err()
}

// BulkCreate — best-effort batch insert. Использует ON CONFLICT DO NOTHING
// для дубликатов; позиционные `ids` сохранены для соответствия входному
// массиву (дубликаты получают пустую строку).
func (r *vocabularyRepository) BulkCreate(ctx context.Context, entries []*model.VocabularyEntry) ([]string, int, int, error) {
	ids := make([]string, len(entries))
	created, skipped := 0, 0

	tx, err := r.pool.Begin(ctx)
	if err != nil {
		return nil, 0, 0, err
	}
	defer func() { _ = tx.Rollback(ctx) }()

	for i, e := range entries {
		if e.ID == "" {
			e.ID = uuid.New().String()
		}
		var insertedID string
		err := tx.QueryRow(ctx, `
			INSERT INTO vocabulary
				(id, language, word, translation, target_language,
				 audio_url, image_url, level, pos)
			VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
			ON CONFLICT (language, word, target_language) DO NOTHING
			RETURNING id`,
			e.ID,
			e.Language,
			e.Word,
			e.Translation,
			e.TargetLanguage,
			nullStringPtr(e.AudioURL),
			nullStringPtr(e.ImageURL),
			nullStringPtr(e.Level),
			nullStringPtr(e.POS),
		).Scan(&insertedID)
		switch {
		case err == nil:
			ids[i] = insertedID
			created++
		case errors.Is(err, pgx.ErrNoRows):
			ids[i] = ""
			skipped++
		default:
			// Любая другая ошибка (CHECK constraint, типы) — фейл всей операции.
			var pgErr *pgconn.PgError
			if errors.As(err, &pgErr) {
				return nil, 0, 0, fmt.Errorf("bulk insert vocabulary[%d] (%s/%s→%s): %w",
					i, e.Language, e.Word, e.TargetLanguage, err)
			}
			return nil, 0, 0, err
		}
	}

	if err := tx.Commit(ctx); err != nil {
		return nil, 0, 0, err
	}
	return ids, created, skipped, nil
}
