package postgres

import (
	"context"
	"database/sql"
	"errors"
	"fmt"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

type statsRepository struct {
	pool *pgxpool.Pool
}

// NewStatsRepository создает PG-реализацию StatsRepository.
func NewStatsRepository(pool *pgxpool.Pool) repository.StatsRepository {
	return &statsRepository{pool: pool}
}

const statsColumns = `user_id, level, total_xp, weekly_xp, current_streak, max_streak,
	last_lesson_at, hearts, max_hearts, next_heart_at, gems, streak_freezes,
	learned_languages, created_at, updated_at`

func scanStats(row pgx.Row) (*model.UserStats, error) {
	s := &model.UserStats{}
	var lastLesson, nextHeart sql.NullTime
	err := row.Scan(
		&s.UserID, &s.Level, &s.TotalXP, &s.WeeklyXP, &s.CurrentStreak, &s.MaxStreak,
		&lastLesson, &s.Hearts, &s.MaxHearts, &nextHeart, &s.Gems, &s.StreakFreezes,
		&s.LearnedLanguages, &s.CreatedAt, &s.UpdatedAt,
	)
	if err != nil {
		return nil, err
	}
	if lastLesson.Valid {
		t := lastLesson.Time
		s.LastLessonAt = &t
	}
	if nextHeart.Valid {
		t := nextHeart.Time
		s.NextHeartAt = &t
	}
	return s, nil
}

func (r *statsRepository) Get(ctx context.Context, userID string) (*model.UserStats, error) {
	q := `SELECT ` + statsColumns + ` FROM user_stats WHERE user_id = $1`
	stats, err := scanStats(r.pool.QueryRow(ctx, q, userID))
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	if err != nil {
		return nil, fmt.Errorf("get stats: %w", err)
	}
	return stats, nil
}

func (r *statsRepository) Create(ctx context.Context, s *model.UserStats) error {
	q := `INSERT INTO user_stats (
		user_id, level, total_xp, weekly_xp, current_streak, max_streak,
		last_lesson_at, hearts, max_hearts, next_heart_at, gems, streak_freezes,
		learned_languages
	) VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11,$12,$13)`
	langs := s.LearnedLanguages
	if langs == nil {
		langs = []string{}
	}
	_, err := r.pool.Exec(ctx, q,
		s.UserID, s.Level, s.TotalXP, s.WeeklyXP, s.CurrentStreak, s.MaxStreak,
		s.LastLessonAt, s.Hearts, s.MaxHearts, s.NextHeartAt, s.Gems, s.StreakFreezes,
		langs,
	)
	if err != nil {
		return fmt.Errorf("insert stats: %w", err)
	}
	return nil
}

func (r *statsRepository) GetOrCreate(ctx context.Context, userID string, maxHearts int) (*model.UserStats, error) {
	stats, err := r.Get(ctx, userID)
	if err == nil {
		return stats, nil
	}
	if !errors.Is(err, repository.ErrNotFound) {
		return nil, err
	}
	now := time.Now().UTC()
	stats = &model.UserStats{
		UserID:    userID,
		Level:     1,
		Hearts:    maxHearts,
		MaxHearts: maxHearts,
		CreatedAt: now,
		UpdatedAt: now,
	}
	q := `INSERT INTO user_stats (user_id, hearts, max_hearts)
		VALUES ($1, $2, $3)
		ON CONFLICT (user_id) DO NOTHING`
	if _, err := r.pool.Exec(ctx, q, userID, maxHearts, maxHearts); err != nil {
		return nil, fmt.Errorf("upsert stats: %w", err)
	}
	return r.Get(ctx, userID)
}

func (r *statsRepository) Update(ctx context.Context, s *model.UserStats) error {
	q := `UPDATE user_stats SET
		level=$2, total_xp=$3, weekly_xp=$4, current_streak=$5, max_streak=$6,
		last_lesson_at=$7, hearts=$8, max_hearts=$9, next_heart_at=$10,
		gems=$11, streak_freezes=$12, learned_languages=$13, updated_at=NOW()
		WHERE user_id=$1`
	langs := s.LearnedLanguages
	if langs == nil {
		langs = []string{}
	}
	ct, err := r.pool.Exec(ctx, q,
		s.UserID, s.Level, s.TotalXP, s.WeeklyXP, s.CurrentStreak, s.MaxStreak,
		s.LastLessonAt, s.Hearts, s.MaxHearts, s.NextHeartAt, s.Gems, s.StreakFreezes,
		langs,
	)
	if err != nil {
		return fmt.Errorf("update stats: %w", err)
	}
	if ct.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *statsRepository) ListReadyForHeartRegen(ctx context.Context, now time.Time, limit int) ([]string, error) {
	if limit <= 0 {
		limit = 1000
	}
	q := `SELECT user_id FROM user_stats
		WHERE hearts < max_hearts AND next_heart_at IS NOT NULL AND next_heart_at <= $1
		LIMIT $2`
	rows, err := r.pool.Query(ctx, q, now, limit)
	if err != nil {
		return nil, fmt.Errorf("list ready for regen: %w", err)
	}
	defer rows.Close()
	ids := make([]string, 0, limit)
	for rows.Next() {
		var id string
		if err := rows.Scan(&id); err != nil {
			return nil, err
		}
		ids = append(ids, id)
	}
	return ids, rows.Err()
}

func (r *statsRepository) ResetWeeklyXP(ctx context.Context) error {
	_, err := r.pool.Exec(ctx, `UPDATE user_stats SET weekly_xp = 0, updated_at = NOW()`)
	if err != nil {
		return fmt.Errorf("reset weekly xp: %w", err)
	}
	return nil
}

// ListAllUserIDs — постраничный enumerate всех user_stats. Stable order
// по user_id (UUID).
func (r *statsRepository) ListAllUserIDs(ctx context.Context, limit, offset int) ([]string, error) {
	if limit <= 0 {
		limit = 500
	}
	if offset < 0 {
		offset = 0
	}
	rows, err := r.pool.Query(ctx, `
		SELECT user_id::text FROM user_stats ORDER BY user_id LIMIT $1 OFFSET $2
	`, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var out []string
	for rows.Next() {
		var s string
		if err := rows.Scan(&s); err != nil {
			return nil, err
		}
		out = append(out, s)
	}
	return out, rows.Err()
}
