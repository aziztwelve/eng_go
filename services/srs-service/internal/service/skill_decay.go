package service

import (
	"context"
	"math"

	"github.com/elearning/srs-service/internal/model"
)

// InitSkill — idempotent create. Если skill уже есть, возвращает
// существующий (created=false).
func (s *service) InitSkill(ctx context.Context, userID, skillID string, skillType model.SkillType, decayRate float64) (*model.SkillDecay, bool, error) {
	if userID == "" || skillID == "" {
		return nil, false, ErrInvalidArgument
	}
	if !skillType.IsValid() {
		return nil, false, ErrInvalidArgument
	}
	if decayRate <= 0 {
		decayRate = model.DefaultDecayRate
	}
	if decayRate > 1 {
		decayRate = 1
	}
	skill := &model.SkillDecay{
		UserID:          userID,
		SkillID:         skillID,
		SkillType:       skillType,
		InitialStrength: model.DefaultInitStrength,
		CurrentStrength: model.DefaultInitStrength,
		DecayRate:       decayRate,
		LastPracticedAt: s.clock(),
	}
	return s.skills.Upsert(ctx, skill)
}

// StrengthenSkill — добавляет delta к current_strength, clamp [0..1].
// Также обновляет last_practiced_at (для следующего decay-цикла).
func (s *service) StrengthenSkill(ctx context.Context, userID, skillID string, amount float64) (*model.SkillDecay, error) {
	if userID == "" || skillID == "" {
		return nil, ErrInvalidArgument
	}
	if amount <= 0 {
		return nil, ErrInvalidArgument
	}

	cur, err := s.skills.Get(ctx, userID, skillID)
	if err != nil {
		return nil, err
	}
	newStrength := math.Min(1.0, math.Max(0.0, cur.CurrentStrength+amount))
	now := s.clock()
	if err := s.skills.UpdateStrength(ctx, userID, skillID, newStrength, now); err != nil {
		return nil, err
	}
	cur.CurrentStrength = newStrength
	cur.LastPracticedAt = now
	return cur, nil
}

func (s *service) GetSkillStrengths(ctx context.Context, userID string, skillType model.SkillType, limit, offset int) ([]*model.SkillDecay, int, error) {
	if userID == "" {
		return nil, 0, ErrInvalidArgument
	}
	if skillType != "" && !skillType.IsValid() {
		return nil, 0, ErrInvalidArgument
	}
	return s.skills.List(ctx, userID, skillType, limit, offset)
}

func (s *service) GetWeakSkills(ctx context.Context, userID string, skillType model.SkillType, limit int) ([]*model.SkillDecay, error) {
	if userID == "" {
		return nil, ErrInvalidArgument
	}
	if skillType != "" && !skillType.IsValid() {
		return nil, ErrInvalidArgument
	}
	return s.skills.GetWeak(ctx, userID, skillType, limit)
}

// RunDailyDecay — батч-decay. userID="" → все юзеры (вызов из cron).
// Иначе — только указанный (для тестов/админки).
func (s *service) RunDailyDecay(ctx context.Context, userID string) (int32, error) {
	return s.skills.ApplyDailyDecay(ctx, userID, s.clock())
}
