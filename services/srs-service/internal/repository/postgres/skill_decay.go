package postgres

import (
	"context"
	"errors"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
)

const skillDecayCols = `user_id, skill_id, skill_type,
	initial_strength, current_strength, decay_rate,
	last_practiced_at, created_at, updated_at`

type skillDecayRepo struct {
	pool *pgxpool.Pool
}

// NewSkillDecayRepository — конструктор.
func NewSkillDecayRepository(pool *pgxpool.Pool) repository.SkillDecayRepository {
	return &skillDecayRepo{pool: pool}
}

func scanSkillDecay(scan func(...any) error) (*model.SkillDecay, error) {
	s := &model.SkillDecay{}
	var skillType string
	if err := scan(
		&s.UserID, &s.SkillID, &skillType,
		&s.InitialStrength, &s.CurrentStrength, &s.DecayRate,
		&s.LastPracticedAt, &s.CreatedAt, &s.UpdatedAt,
	); err != nil {
		return nil, err
	}
	s.SkillType = model.SkillType(skillType)
	return s, nil
}

// Upsert — INSERT ... ON CONFLICT (user_id, skill_id) DO UPDATE SET
// updated_at = updated_at (no-op) RETURNING + (xmax = 0) AS was_inserted.
//
// Это даёт нам атомарный get-or-create без ситуации "вставка прошла
// но мы потом затёрли current_strength". При уже существующей записи
// возвращаются текущие значения — initial_strength / decay_rate из
// запроса не применяются (это нормально: повторный InitSkill —
// idempotent, не пересоздаёт навык).
func (r *skillDecayRepo) Upsert(ctx context.Context, s *model.SkillDecay) (*model.SkillDecay, bool, error) {
	if s.DecayRate == 0 {
		s.DecayRate = model.DefaultDecayRate
	}
	if s.InitialStrength == 0 {
		s.InitialStrength = model.DefaultInitStrength
	}
	if s.CurrentStrength == 0 {
		s.CurrentStrength = s.InitialStrength
	}
	if s.LastPracticedAt.IsZero() {
		s.LastPracticedAt = time.Now().UTC()
	}

	row := r.pool.QueryRow(ctx, `
		INSERT INTO user_skill_decay (
			user_id, skill_id, skill_type,
			initial_strength, current_strength, decay_rate,
			last_practiced_at
		) VALUES ($1, $2, $3, $4, $5, $6, $7)
		ON CONFLICT (user_id, skill_id) DO UPDATE
			SET updated_at = user_skill_decay.updated_at
		RETURNING `+skillDecayCols+`, (xmax = 0) AS was_inserted
	`,
		s.UserID, s.SkillID, string(s.SkillType),
		s.InitialStrength, s.CurrentStrength, s.DecayRate,
		s.LastPracticedAt,
	)
	res := &model.SkillDecay{}
	var skillType string
	var wasInserted bool
	if err := row.Scan(
		&res.UserID, &res.SkillID, &skillType,
		&res.InitialStrength, &res.CurrentStrength, &res.DecayRate,
		&res.LastPracticedAt, &res.CreatedAt, &res.UpdatedAt, &wasInserted,
	); err != nil {
		return nil, false, err
	}
	res.SkillType = model.SkillType(skillType)
	return res, wasInserted, nil
}

func (r *skillDecayRepo) Get(ctx context.Context, userID, skillID string) (*model.SkillDecay, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT `+skillDecayCols+`
		FROM user_skill_decay
		WHERE user_id = $1 AND skill_id = $2
	`, userID, skillID)
	s, err := scanSkillDecay(row.Scan)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	return s, err
}

func (r *skillDecayRepo) UpdateStrength(ctx context.Context, userID, skillID string, strength float64, practicedAt time.Time) error {
	tag, err := r.pool.Exec(ctx, `
		UPDATE user_skill_decay
		   SET current_strength  = LEAST(1.0, GREATEST(0.0, $3)),
		       last_practiced_at = $4,
		       updated_at        = NOW()
		 WHERE user_id = $1 AND skill_id = $2
	`, userID, skillID, strength, practicedAt)
	if err != nil {
		return err
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *skillDecayRepo) List(ctx context.Context, userID string, skillType model.SkillType, limit, offset int) ([]*model.SkillDecay, int, error) {
	if limit <= 0 {
		limit = 50
	}
	args := []any{userID}
	where := `user_id = $1`
	if skillType != "" {
		args = append(args, string(skillType))
		where += ` AND skill_type = $2`
	}

	var total int
	if err := r.pool.QueryRow(ctx,
		`SELECT COUNT(*) FROM user_skill_decay WHERE `+where,
		args...,
	).Scan(&total); err != nil {
		return nil, 0, err
	}

	args = append(args, limit, offset)
	rows, err := r.pool.Query(ctx, `
		SELECT `+skillDecayCols+`
		FROM user_skill_decay
		WHERE `+where+`
		ORDER BY current_strength ASC, last_practiced_at ASC
		LIMIT $`+itoa(len(args)-1)+` OFFSET $`+itoa(len(args)),
		args...,
	)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()
	out, err := scanSkillDecays(rows)
	return out, total, err
}

func (r *skillDecayRepo) GetWeak(ctx context.Context, userID string, skillType model.SkillType, limit int) ([]*model.SkillDecay, error) {
	if limit <= 0 {
		limit = 10
	}
	args := []any{userID}
	where := `user_id = $1`
	if skillType != "" {
		args = append(args, string(skillType))
		where += ` AND skill_type = $2`
	}
	args = append(args, limit)
	rows, err := r.pool.Query(ctx, `
		SELECT `+skillDecayCols+`
		FROM user_skill_decay
		WHERE `+where+`
		ORDER BY current_strength ASC
		LIMIT $`+itoa(len(args)),
		args...,
	)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	return scanSkillDecays(rows)
}

// ApplyDailyDecay — батч-UPDATE: уменьшаем current_strength на
// decay_rate * days_since_last_practice, clamp [0..1].
// Затрагивает только записи с last_practiced_at < (now - 1 day),
// чтобы не "ржавить" сразу после практики.
func (r *skillDecayRepo) ApplyDailyDecay(ctx context.Context, userID string, now time.Time) (int32, error) {
	args := []any{now}
	where := `last_practiced_at < $1 - INTERVAL '1 day'`
	if userID != "" {
		args = append(args, userID)
		where += ` AND user_id = $2`
	}
	tag, err := r.pool.Exec(ctx, `
		UPDATE user_skill_decay
		   SET current_strength = GREATEST(0.0,
		           current_strength - decay_rate *
		               EXTRACT(EPOCH FROM ($1 - last_practiced_at)) / 86400.0
		       ),
		       updated_at = NOW()
		 WHERE `+where, args...)
	if err != nil {
		return 0, err
	}
	return int32(tag.RowsAffected()), nil
}

func scanSkillDecays(rows pgx.Rows) ([]*model.SkillDecay, error) {
	var out []*model.SkillDecay
	for rows.Next() {
		s, err := scanSkillDecay(rows.Scan)
		if err != nil {
			return nil, err
		}
		out = append(out, s)
	}
	return out, rows.Err()
}
