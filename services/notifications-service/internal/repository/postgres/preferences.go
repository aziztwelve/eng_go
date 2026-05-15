package postgres

import (
	"context"
	"errors"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/notifications-service/internal/repository"
)

const prefsCols = `user_id,
	practice_reminder_enabled, streak_risk_enabled, daily_goal_enabled, achievement_enabled,
	quiet_hours_start, quiet_hours_end, timezone, updated_at`

type prefsRepo struct {
	pool *pgxpool.Pool
}

// NewPreferencesRepository — конструктор.
func NewPreferencesRepository(pool *pgxpool.Pool) repository.PreferencesRepository {
	return &prefsRepo{pool: pool}
}

func scanPrefs(scan func(...any) error) (*model.UserPreferences, error) {
	p := &model.UserPreferences{}
	if err := scan(
		&p.UserID,
		&p.PracticeReminderEnabled, &p.StreakRiskEnabled, &p.DailyGoalEnabled, &p.AchievementEnabled,
		&p.QuietHoursStart, &p.QuietHoursEnd, &p.Timezone, &p.UpdatedAt,
	); err != nil {
		return nil, err
	}
	return p, nil
}

func (r *prefsRepo) Get(ctx context.Context, userID string) (*model.UserPreferences, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT `+prefsCols+`
		FROM user_preferences
		WHERE user_id = $1
	`, userID)
	p, err := scanPrefs(row.Scan)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	return p, err
}

func (r *prefsRepo) Upsert(ctx context.Context, p *model.UserPreferences) (*model.UserPreferences, error) {
	row := r.pool.QueryRow(ctx, `
		INSERT INTO user_preferences (
			user_id,
			practice_reminder_enabled, streak_risk_enabled, daily_goal_enabled, achievement_enabled,
			quiet_hours_start, quiet_hours_end, timezone, updated_at
		) VALUES (
			$1,
			$2, $3, $4, $5,
			$6, $7, $8, NOW()
		)
		ON CONFLICT (user_id) DO UPDATE
			SET practice_reminder_enabled = EXCLUDED.practice_reminder_enabled,
			    streak_risk_enabled       = EXCLUDED.streak_risk_enabled,
			    daily_goal_enabled        = EXCLUDED.daily_goal_enabled,
			    achievement_enabled       = EXCLUDED.achievement_enabled,
			    quiet_hours_start         = EXCLUDED.quiet_hours_start,
			    quiet_hours_end           = EXCLUDED.quiet_hours_end,
			    timezone                  = EXCLUDED.timezone,
			    updated_at                = NOW()
		RETURNING `+prefsCols+`
	`,
		p.UserID,
		p.PracticeReminderEnabled, p.StreakRiskEnabled, p.DailyGoalEnabled, p.AchievementEnabled,
		p.QuietHoursStart, p.QuietHoursEnd, p.Timezone,
	)
	return scanPrefs(row.Scan)
}
