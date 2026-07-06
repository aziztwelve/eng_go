package postgres

import (
	"context"
	"database/sql"
	"fmt"
	"strings"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type trackRepository struct {
	pool *pgxpool.Pool
}

// NewTrackRepository создаёт новый репозиторий learning tracks.
func NewTrackRepository(pool *pgxpool.Pool) repository.TrackRepository {
	return &trackRepository{pool: pool}
}

func scanTrack(scan func(...interface{}) error) (*model.Track, error) {
	t := &model.Track{}
	var description, iconURL, language, level sql.NullString
	var createdBy sql.NullString
	if err := scan(
		&t.ID,
		&t.Code,
		&t.Title,
		&description,
		&iconURL,
		&language,
		&level,
		&t.TrackType,
		&t.IsPublished,
		&t.SortOrder,
		&t.Motivation,
		&createdBy,
		&t.CreatedAt,
		&t.UpdatedAt,
	); err != nil {
		return nil, err
	}
	t.Description = description.String
	t.IconURL = iconURL.String
	t.Language = language.String
	t.Level = level.String
	t.CreatedBy = createdBy.String
	if t.Motivation == nil {
		t.Motivation = []string{}
	}
	return t, nil
}

const trackSelectCols = `id, code, title, description, icon_url, language, level,
		track_type, is_published, sort_order, motivation, created_by, created_at, updated_at`

// Create создаёт трек.
func (r *trackRepository) Create(ctx context.Context, track *model.Track) error {
	if track.ID == "" {
		track.ID = uuid.New().String()
	}
	if track.TrackType == "" {
		track.TrackType = model.TrackTypeThematic
	}

	query := `
		INSERT INTO learning_tracks
			(id, code, title, description, icon_url, language, level,
			 track_type, is_published, sort_order, created_by)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)
		RETURNING created_at, updated_at
	`

	return r.pool.QueryRow(ctx, query,
		track.ID,
		track.Code,
		track.Title,
		nullStringPtr(track.Description),
		nullStringPtr(track.IconURL),
		nullStringPtr(track.Language),
		nullStringPtr(track.Level),
		track.TrackType,
		track.IsPublished,
		track.SortOrder,
		nullStringPtr(track.CreatedBy),
	).Scan(&track.CreatedAt, &track.UpdatedAt)
}

// GetByID — выборка по ID.
func (r *trackRepository) GetByID(ctx context.Context, id string) (*model.Track, error) {
	query := `SELECT ` + trackSelectCols + ` FROM learning_tracks WHERE id = $1`
	return scanTrack(r.pool.QueryRow(ctx, query, id).Scan)
}

// GetByCode — выборка по уникальному коду.
func (r *trackRepository) GetByCode(ctx context.Context, code string) (*model.Track, error) {
	query := `SELECT ` + trackSelectCols + ` FROM learning_tracks WHERE code = $1`
	return scanTrack(r.pool.QueryRow(ctx, query, code).Scan)
}

// Update обновляет редактируемые поля трека.
func (r *trackRepository) Update(ctx context.Context, track *model.Track) error {
	query := `
		UPDATE learning_tracks
		SET title = $2, description = $3, icon_url = $4, language = $5,
		    level = $6, track_type = $7, sort_order = $8
		WHERE id = $1
		RETURNING updated_at
	`
	return r.pool.QueryRow(ctx, query,
		track.ID,
		track.Title,
		nullStringPtr(track.Description),
		nullStringPtr(track.IconURL),
		nullStringPtr(track.Language),
		nullStringPtr(track.Level),
		track.TrackType,
		track.SortOrder,
	).Scan(&track.UpdatedAt)
}

// Delete удаляет трек (lessons остаются, связи каскадно).
func (r *trackRepository) Delete(ctx context.Context, id string) error {
	_, err := r.pool.Exec(ctx, `DELETE FROM learning_tracks WHERE id = $1`, id)
	return err
}

// List возвращает страницу треков с фильтрами.
func (r *trackRepository) List(ctx context.Context, filters repository.TrackListFilters) ([]*model.Track, int, error) {
	var conds []string
	var args []interface{}
	pos := 1

	if filters.Language != nil {
		conds = append(conds, fmt.Sprintf("language = $%d", pos))
		args = append(args, *filters.Language)
		pos++
	}
	if filters.Level != nil {
		conds = append(conds, fmt.Sprintf("UPPER(level) = UPPER($%d)", pos))
		args = append(args, *filters.Level)
		pos++
	}
	if filters.TrackType != nil {
		conds = append(conds, fmt.Sprintf("track_type = $%d", pos))
		args = append(args, *filters.TrackType)
		pos++
	}
	if len(filters.Motivation) > 0 {
		// Трек подходит если его motivation пустой (универсальный) ИЛИ пересекается с запрошенными целями
		conds = append(conds, fmt.Sprintf("(motivation = '{}' OR motivation && $%d::text[])", pos))
		args = append(args, filters.Motivation)
		pos++
	}
	if filters.Search != "" {
		conds = append(conds, fmt.Sprintf("(title ILIKE $%d OR code ILIKE $%d)", pos, pos))
		args = append(args, "%"+filters.Search+"%")
		pos++
	}
	if !filters.IncludeUnpublished {
		conds = append(conds, "is_published = true")
	}

	where := ""
	if len(conds) > 0 {
		where = "WHERE " + strings.Join(conds, " AND ")
	}

	var total int
	if err := r.pool.QueryRow(ctx, "SELECT COUNT(*) FROM learning_tracks "+where, args...).Scan(&total); err != nil {
		return nil, 0, err
	}

	limit := filters.Limit
	if limit <= 0 {
		limit = 20
	}
	query := fmt.Sprintf(`SELECT %s FROM learning_tracks %s
		ORDER BY sort_order ASC, created_at DESC LIMIT $%d OFFSET $%d`,
		trackSelectCols, where, pos, pos+1)
	args = append(args, limit, filters.Offset)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var tracks []*model.Track
	for rows.Next() {
		t, err := scanTrack(rows.Scan)
		if err != nil {
			return nil, 0, err
		}
		tracks = append(tracks, t)
	}
	return tracks, total, nil
}

// Publish меняет статус публикации.
func (r *trackRepository) Publish(ctx context.Context, id string, isPublished bool) error {
	_, err := r.pool.Exec(ctx, `UPDATE learning_tracks SET is_published = $2 WHERE id = $1`, id, isPublished)
	return err
}

// AddLesson привязывает урок к треку.
func (r *trackRepository) AddLesson(ctx context.Context, trackID, lessonID string, orderIndex int32) error {
	query := `
		INSERT INTO track_lessons (track_id, lesson_id, order_index)
		VALUES ($1, $2, $3)
		ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index
	`
	_, err := r.pool.Exec(ctx, query, trackID, lessonID, orderIndex)
	return err
}

// RemoveLesson отвязывает урок от трека.
func (r *trackRepository) RemoveLesson(ctx context.Context, trackID, lessonID string) error {
	_, err := r.pool.Exec(ctx, `DELETE FROM track_lessons WHERE track_id = $1 AND lesson_id = $2`, trackID, lessonID)
	return err
}

// ListLessons возвращает уроки трека в порядке order_index.
func (r *trackRepository) ListLessons(ctx context.Context, trackID string) ([]*model.Lesson, error) {
	query := `
		SELECT l.id, l.module_id, l.title, l.description, tl.order_index, l.created_at, l.updated_at
		FROM track_lessons tl
		JOIN lessons l ON l.id = tl.lesson_id
		WHERE tl.track_id = $1
		ORDER BY tl.order_index ASC
	`
	rows, err := r.pool.Query(ctx, query, trackID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var lessons []*model.Lesson
	for rows.Next() {
		lesson := &model.Lesson{}
		var moduleID sql.NullString
		if err := rows.Scan(
			&lesson.ID,
			&moduleID,
			&lesson.Title,
			&lesson.Description,
			&lesson.OrderIndex,
			&lesson.CreatedAt,
			&lesson.UpdatedAt,
		); err != nil {
			return nil, err
		}
		lesson.ModuleID = moduleID.String
		lessons = append(lessons, lesson)
	}
	return lessons, nil
}

// ReorderLessons атомарно переустанавливает order_index по списку lesson IDs.
func (r *trackRepository) ReorderLessons(ctx context.Context, trackID string, lessonOrder []string) error {
	tx, err := r.pool.Begin(ctx)
	if err != nil {
		return err
	}
	defer tx.Rollback(ctx)

	for i, lessonID := range lessonOrder {
		_, err := tx.Exec(ctx,
			`UPDATE track_lessons SET order_index = $3 WHERE track_id = $1 AND lesson_id = $2`,
			trackID, lessonID, int32(i))
		if err != nil {
			return err
		}
	}
	return tx.Commit(ctx)
}

// ensure trackRepository uses pgxpool import to avoid unused error if file is moved
var _ = (*pgxpool.Pool)(nil)

// ============================================================
// User plan (Phase 8) — персональный набор треков пользователя
// ============================================================

// SelectPlanCandidates подбирает опубликованные треки под профиль.
// Если goal задан: фильтр (motivation пуст ИЛИ пересекается с целью),
// целевые ранжируются выше универсальных. Если goal пустой — только level+language.
func (r *trackRepository) SelectPlanCandidates(ctx context.Context, language, level, goal string) ([]*model.Track, error) {
	var (
		conds = []string{"is_published = true"}
		args  []interface{}
		pos   = 1
	)
	if language != "" {
		conds = append(conds, fmt.Sprintf("language = $%d", pos))
		args = append(args, language)
		pos++
	}
	if level != "" {
		conds = append(conds, fmt.Sprintf("UPPER(level) = UPPER($%d)", pos))
		args = append(args, level)
		pos++
	}

	orderBy := "sort_order ASC, title ASC"
	if goal != "" {
		// целевые (motivation && [goal]) ИЛИ универсальные (motivation = '{}')
		conds = append(conds, fmt.Sprintf("(motivation = '{}' OR motivation && ARRAY[$%d]::text[])", pos))
		// целевые выше универсальных
		orderBy = fmt.Sprintf("(motivation && ARRAY[$%d]::text[]) DESC, sort_order ASC, title ASC", pos)
		args = append(args, goal)
		pos++
	}

	query := fmt.Sprintf(`SELECT %s FROM learning_tracks WHERE %s ORDER BY %s`,
		trackSelectCols, strings.Join(conds, " AND "), orderBy)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var tracks []*model.Track
	for rows.Next() {
		t, err := scanTrack(rows.Scan)
		if err != nil {
			return nil, err
		}
		tracks = append(tracks, t)
	}
	return tracks, rows.Err()
}

// UpsertUserTrack добавляет/обновляет трек в плане. Идемпотентно: не сбрасывает
// уже completed-статус и не затирает manual-источник при повторной генерации.
func (r *trackRepository) UpsertUserTrack(ctx context.Context, ut *model.UserTrack) error {
	query := `
		INSERT INTO user_tracks (user_id, track_id, order_index, status, source, added_at, updated_at)
		VALUES ($1, $2, $3, $4, $5, NOW(), NOW())
		ON CONFLICT (user_id, track_id) DO UPDATE SET
			order_index = EXCLUDED.order_index,
			status = CASE WHEN user_tracks.status = 'completed' THEN user_tracks.status ELSE EXCLUDED.status END,
			source = CASE WHEN user_tracks.source = 'manual' THEN user_tracks.source ELSE EXCLUDED.source END,
			updated_at = NOW()
	`
	_, err := r.pool.Exec(ctx, query, ut.UserID, ut.Track.ID, ut.OrderIndex, ut.Status, ut.Source)
	return err
}

// ListUserTracks возвращает персональный план пользователя в порядке order_index.
func (r *trackRepository) ListUserTracks(ctx context.Context, userID string) ([]*model.UserTrack, error) {
	query := `
		SELECT t.id, t.code, t.title, t.description, t.icon_url, t.language, t.level,
		       t.track_type, t.is_published, t.sort_order, t.motivation, t.created_by, t.created_at, t.updated_at,
		       ut.order_index, ut.status, ut.source, ut.added_at
		FROM user_tracks ut
		JOIN learning_tracks t ON t.id = ut.track_id
		WHERE ut.user_id = $1
		ORDER BY ut.order_index ASC
	`
	rows, err := r.pool.Query(ctx, query, userID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var result []*model.UserTrack
	for rows.Next() {
		t := &model.Track{}
		var description, iconURL, language, level, createdBy sql.NullString
		ut := &model.UserTrack{UserID: userID, Track: t}
		if err := rows.Scan(
			&t.ID, &t.Code, &t.Title, &description, &iconURL, &language, &level,
			&t.TrackType, &t.IsPublished, &t.SortOrder, &t.Motivation, &createdBy, &t.CreatedAt, &t.UpdatedAt,
			&ut.OrderIndex, &ut.Status, &ut.Source, &ut.AddedAt,
		); err != nil {
			return nil, err
		}
		t.Description = description.String
		t.IconURL = iconURL.String
		t.Language = language.String
		t.Level = level.String
		t.CreatedBy = createdBy.String
		if t.Motivation == nil {
			t.Motivation = []string{}
		}
		result = append(result, ut)
	}
	return result, rows.Err()
}

// DeleteUserTrack убирает трек из плана пользователя.
func (r *trackRepository) DeleteUserTrack(ctx context.Context, userID, trackID string) error {
	_, err := r.pool.Exec(ctx, `DELETE FROM user_tracks WHERE user_id = $1 AND track_id = $2`, userID, trackID)
	return err
}

// CountUserTracks возвращает число треков в плане (для ленивой генерации).
func (r *trackRepository) CountUserTracks(ctx context.Context, userID string) (int, error) {
	var n int
	err := r.pool.QueryRow(ctx, `SELECT COUNT(*) FROM user_tracks WHERE user_id = $1`, userID).Scan(&n)
	return n, err
}
