package postgres

import (
	"context"
	"errors"
	"fmt"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

type achievementRepository struct {
	pool *pgxpool.Pool
}

func NewAchievementRepository(pool *pgxpool.Pool) repository.AchievementRepository {
	return &achievementRepository{pool: pool}
}

const achColumns = `id, code, title, COALESCE(description,''), COALESCE(icon_url,''),
	COALESCE(category,''), tier, xp_reward, gems_reward, criteria, is_hidden, created_at`

func scanAchievement(row pgx.Row) (*model.Achievement, error) {
	a := &model.Achievement{}
	err := row.Scan(&a.ID, &a.Code, &a.Title, &a.Description, &a.IconURL,
		&a.Category, &a.Tier, &a.XPReward, &a.GemsReward, &a.Criteria, &a.IsHidden, &a.CreatedAt)
	if err != nil {
		return nil, err
	}
	return a, nil
}

func (r *achievementRepository) ListCatalog(ctx context.Context, category string, includeHidden bool) ([]*model.Achievement, error) {
	q := `SELECT ` + achColumns + ` FROM achievements WHERE 1=1`
	args := []interface{}{}
	if category != "" {
		args = append(args, category)
		q += fmt.Sprintf(" AND category = $%d", len(args))
	}
	if !includeHidden {
		q += " AND is_hidden = FALSE"
	}
	q += " ORDER BY category, tier, code"

	rows, err := r.pool.Query(ctx, q, args...)
	if err != nil {
		return nil, fmt.Errorf("list catalog: %w", err)
	}
	defer rows.Close()
	out := make([]*model.Achievement, 0, 32)
	for rows.Next() {
		a, err := scanAchievement(rows)
		if err != nil {
			return nil, err
		}
		out = append(out, a)
	}
	return out, rows.Err()
}

func (r *achievementRepository) GetByCode(ctx context.Context, code string) (*model.Achievement, error) {
	q := `SELECT ` + achColumns + ` FROM achievements WHERE code = $1`
	a, err := scanAchievement(r.pool.QueryRow(ctx, q, code))
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	if err != nil {
		return nil, fmt.Errorf("get by code: %w", err)
	}
	return a, nil
}

func (r *achievementRepository) ListUser(ctx context.Context, userID string) ([]*model.UserAchievement, error) {
	q := `SELECT ua.user_id, ua.achievement_id, ua.progress, ua.unlocked_at,
		a.id, a.code, a.title, COALESCE(a.description,''), COALESCE(a.icon_url,''),
		COALESCE(a.category,''), a.tier, a.xp_reward, a.gems_reward, a.criteria, a.is_hidden, a.created_at
		FROM user_achievements ua
		INNER JOIN achievements a ON a.id = ua.achievement_id
		WHERE ua.user_id = $1
		ORDER BY ua.unlocked_at DESC`
	rows, err := r.pool.Query(ctx, q, userID)
	if err != nil {
		return nil, fmt.Errorf("list user achievements: %w", err)
	}
	defer rows.Close()
	out := make([]*model.UserAchievement, 0, 16)
	for rows.Next() {
		ua := &model.UserAchievement{AchievementRef: &model.Achievement{}}
		a := ua.AchievementRef
		if err := rows.Scan(
			&ua.UserID, &ua.AchievementID, &ua.Progress, &ua.UnlockedAt,
			&a.ID, &a.Code, &a.Title, &a.Description, &a.IconURL,
			&a.Category, &a.Tier, &a.XPReward, &a.GemsReward, &a.Criteria, &a.IsHidden, &a.CreatedAt,
		); err != nil {
			return nil, err
		}
		out = append(out, ua)
	}
	return out, rows.Err()
}

func (r *achievementRepository) HasUnlocked(ctx context.Context, userID, achievementID string) (bool, error) {
	var exists bool
	err := r.pool.QueryRow(ctx,
		`SELECT EXISTS(SELECT 1 FROM user_achievements WHERE user_id = $1 AND achievement_id = $2)`,
		userID, achievementID,
	).Scan(&exists)
	if err != nil {
		return false, fmt.Errorf("has unlocked: %w", err)
	}
	return exists, nil
}

func (r *achievementRepository) Unlock(ctx context.Context, ua *model.UserAchievement) error {
	q := `INSERT INTO user_achievements (user_id, achievement_id, progress, unlocked_at)
		VALUES ($1, $2, $3, NOW())
		ON CONFLICT (user_id, achievement_id) DO NOTHING
		RETURNING unlocked_at`
	err := r.pool.QueryRow(ctx, q, ua.UserID, ua.AchievementID, ua.Progress).Scan(&ua.UnlockedAt)
	if errors.Is(err, pgx.ErrNoRows) {
		// уже было — не считаем ошибкой
		return nil
	}
	if err != nil {
		return fmt.Errorf("unlock: %w", err)
	}
	return nil
}
