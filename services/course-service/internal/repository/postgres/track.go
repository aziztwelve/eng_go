package postgres

import (
	"context"
	"database/sql"
	"encoding/json"
	"fmt"
	"strings"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"
	"google.golang.org/grpc/metadata"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// CtxLangKey — ключ в gRPC metadata для языка контента ("ru"/"en"/"kk").
// Gateway выставляет его из Accept-Language или ?lang=.
const CtxLangKey = "x-content-lang"

// langFromCtx — язык контента из metadata ("" → дефолт ru в resolveI18N).
func langFromCtx(ctx context.Context) string {
	if md, ok := metadata.FromIncomingContext(ctx); ok {
		if vals := md.Get(CtxLangKey); len(vals) > 0 {
			return strings.TrimSpace(vals[0])
		}
	}
	return ""
}

type trackRepository struct {
	pool *pgxpool.Pool
}

// NewTrackRepository создаёт новый репозиторий learning tracks.
func NewTrackRepository(pool *pgxpool.Pool) repository.TrackRepository {
	return &trackRepository{pool: pool}
}

func scanI18N(raw []byte) map[string]string {
	if len(raw) == 0 {
		return nil
	}
	m := map[string]string{}
	_ = json.Unmarshal(raw, &m)
	return m
}

// resolveI18N — выбор строки на запрошенном языке с фолбэками:
// lang → ru → en → первая непустая → базовое значение.
func resolveI18N(m map[string]string, base, lang string) string {
	if v := strings.TrimSpace(m[lang]); v != "" {
		return v
	}
	if v := strings.TrimSpace(m["ru"]); v != "" {
		return v
	}
	if v := strings.TrimSpace(m["en"]); v != "" {
		return v
	}
	for _, v := range m {
		if strings.TrimSpace(v) != "" {
			return v
		}
	}
	return base
}

func scanTrack(scan func(...interface{}) error, lang string) (*model.Track, error) {
	t := &model.Track{}
	var description, iconURL, language, level sql.NullString
	var createdBy sql.NullString
	var titleI18N, descrI18N []byte
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
		&titleI18N,
		&descrI18N,
	); err != nil {
		return nil, err
	}
	t.TitleI18N = scanI18N(titleI18N)
	t.DescriptionI18N = scanI18N(descrI18N)
	// title/description из БД — базовое (ru) значение; подменяем на локаль.
	t.Title = resolveI18N(t.TitleI18N, t.Title, lang)
	if description.Valid {
		t.Description = resolveI18N(t.DescriptionI18N, description.String, lang)
	} else {
		t.Description = ""
	}
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
		track_type, is_published, sort_order, motivation, created_by, created_at, updated_at,
		title_i18n, description_i18n`

// Create создаёт трек.
func (r *trackRepository) Create(ctx context.Context, track *model.Track) error {
	if track.ID == "" {
		track.ID = uuid.New().String()
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
	return scanTrack(r.pool.QueryRow(ctx, query, id).Scan, langFromCtx(ctx))
}

// GetByCode — выборка по уникальному коду.
func (r *trackRepository) GetByCode(ctx context.Context, code string) (*model.Track, error) {
	query := `SELECT ` + trackSelectCols + ` FROM learning_tracks WHERE code = $1`
	return scanTrack(r.pool.QueryRow(ctx, query, code).Scan, langFromCtx(ctx))
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
		t, err := scanTrack(rows.Scan, langFromCtx(ctx))
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
		SELECT l.id, l.module_id, l.title, l.description, tl.order_index, l.created_at, l.updated_at,
		       l.title_i18n, l.description_i18n
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

	lang := langFromCtx(ctx)
	var lessons []*model.Lesson
	for rows.Next() {
		lesson := &model.Lesson{}
		var moduleID sql.NullString
		var titleI18N, descrI18N []byte
		if err := rows.Scan(
			&lesson.ID,
			&moduleID,
			&lesson.Title,
			&lesson.Description,
			&lesson.OrderIndex,
			&lesson.CreatedAt,
			&lesson.UpdatedAt,
			&titleI18N,
			&descrI18N,
		); err != nil {
			return nil, err
		}
		lesson.ModuleID = moduleID.String
		lesson.TitleI18N = scanI18N(titleI18N)
		lesson.DescriptionI18N = scanI18N(descrI18N)
		lesson.Title = resolveI18N(lesson.TitleI18N, lesson.Title, lang)
		lesson.Description = resolveI18N(lesson.DescriptionI18N, lesson.Description, lang)
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
		t, err := scanTrack(rows.Scan, langFromCtx(ctx))
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
		       t.title_i18n, t.description_i18n,
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

	lang := langFromCtx(ctx)
	var result []*model.UserTrack
	for rows.Next() {
		t := &model.Track{}
		var description, iconURL, language, level, createdBy sql.NullString
		var titleI18N, descrI18N []byte
		ut := &model.UserTrack{UserID: userID, Track: t}
		if err := rows.Scan(
			&t.ID, &t.Code, &t.Title, &description, &iconURL, &language, &level,
			&t.TrackType, &t.IsPublished, &t.SortOrder, &t.Motivation, &createdBy, &t.CreatedAt, &t.UpdatedAt,
			&titleI18N, &descrI18N,
			&ut.OrderIndex, &ut.Status, &ut.Source, &ut.AddedAt,
		); err != nil {
			return nil, err
		}
		t.TitleI18N = scanI18N(titleI18N)
		t.DescriptionI18N = scanI18N(descrI18N)
		t.Title = resolveI18N(t.TitleI18N, t.Title, lang)
		t.Description = resolveI18N(t.DescriptionI18N, description.String, lang)
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

func (r *trackRepository) ListVocabulary(ctx context.Context, trackID, userID, search string, limit, offset int) ([]*model.TrackVocabularyEntry, int, error) {
	conds := []string{"tv.track_id = $1"}
	args := []interface{}{trackID}
	pos := 2
	if search != "" {
		conds = append(conds, fmt.Sprintf("(v.word ILIKE $%d OR v.translation ILIKE $%d)", pos, pos))
		args = append(args, "%"+search+"%")
		pos++
	}
	where := strings.Join(conds, " AND ")
	var total int
	if err := r.pool.QueryRow(ctx, "SELECT COUNT(*) FROM track_vocabulary tv JOIN vocabulary v ON v.id = tv.vocabulary_id WHERE "+where, args...).Scan(&total); err != nil {
		return nil, 0, err
	}
	if limit <= 0 || limit > 100 {
		limit = 50
	}
	query := fmt.Sprintf(`SELECT v.id, v.language, v.word, v.translation, v.target_language,
		v.audio_url, v.image_url, v.level, v.pos, v.transcription, v.definition, v.example_sentence,
		v.created_at, v.updated_at, tv.lesson_id, tv.first_seen_order,
		EXISTS (
			SELECT 1 FROM user_flashcards f WHERE f.user_id = NULLIF($%d, '')::uuid AND f.vocabulary_id = v.id AND f.archived_at IS NULL
		)
		FROM track_vocabulary tv JOIN vocabulary v ON v.id = tv.vocabulary_id
		WHERE %s ORDER BY tv.first_seen_order, v.id LIMIT $%d OFFSET $%d`, pos, where, pos+1, pos+2)
	args = append(args, userID, limit, offset)
	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()
	entries := make([]*model.TrackVocabularyEntry, 0)
	for rows.Next() {
		v := &model.VocabularyEntry{}
		var audio, image, level, posName, transcription, definition, example sql.NullString
		entry := &model.TrackVocabularyEntry{Vocabulary: v}
		if err := rows.Scan(&v.ID, &v.Language, &v.Word, &v.Translation, &v.TargetLanguage,
			&audio, &image, &level, &posName, &transcription, &definition, &example,
			&v.CreatedAt, &v.UpdatedAt, &entry.LessonID, &entry.FirstSeenOrder, &entry.Added); err != nil {
			return nil, 0, err
		}
		v.AudioURL, v.ImageURL, v.Level, v.POS, v.Transcription = audio.String, image.String, level.String, posName.String, transcription.String
		v.Definition, v.ExampleSentence = definition.String, example.String
		entries = append(entries, entry)
	}
	return entries, total, rows.Err()
}

func (r *trackRepository) VocabularyBelongsToTrack(ctx context.Context, trackID string, vocabularyIDs []string) (map[string]bool, error) {
	result := make(map[string]bool, len(vocabularyIDs))
	if len(vocabularyIDs) == 0 {
		return result, nil
	}
	rows, err := r.pool.Query(ctx, `SELECT vocabulary_id FROM track_vocabulary WHERE track_id = $1 AND vocabulary_id = ANY($2::uuid[])`, trackID, vocabularyIDs)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	for rows.Next() {
		var id string
		if err := rows.Scan(&id); err != nil {
			return nil, err
		}
		result[id] = true
	}
	return result, rows.Err()
}
