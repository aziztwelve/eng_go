package service

import (
	"context"
	"fmt"
	"time"

	"github.com/elearning/ai-service/internal/model"
)

// CheckQuota — проверяет, может ли юзер сделать вызов указанного типа.
// Если premium — всегда true. Если free и лимит достигнут — ErrQuotaExceeded.
//
// chatDelta / voiceMinutes / writingDelta — сколько пытается израсходовать.
// Для chat/writing обычно 1, для voice — длительность аудио в минутах.
func (s *Service) CheckQuota(ctx context.Context, userID string, kind model.QuotaKind, want float64) error {
	if userID == "" {
		return fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}

	limits := s.limitsFor(ctx, userID)
	q, err := s.quotas.Get(ctx, userID, time.Now())
	if err != nil {
		return fmt.Errorf("get quota: %w", err)
	}

	switch kind {
	case model.QuotaKindChat:
		if model.IsUnlimited(limits.ChatLimit) {
			return nil
		}
		if q.ChatRequests+int32(want) > limits.ChatLimit {
			return ErrQuotaExceeded
		}
	case model.QuotaKindVoice:
		if model.IsUnlimitedFloat(limits.VoiceLimit) {
			return nil
		}
		if q.VoiceMinutes+want > limits.VoiceLimit {
			return ErrQuotaExceeded
		}
	case model.QuotaKindWriting:
		if model.IsUnlimited(limits.WritingLimit) {
			return nil
		}
		if q.WritingChecks+int32(want) > limits.WritingLimit {
			return ErrQuotaExceeded
		}
	default:
		return fmt.Errorf("%w: unknown quota kind %q", ErrInvalidArgument, kind)
	}
	return nil
}

// IncrementQuota — увеличивает счётчик после успешного AI-call'а.
// Не валит caller'a при ошибке БД (ошибка только логируется внешним кодом).
func (s *Service) IncrementQuota(ctx context.Context, userID string, kind model.QuotaKind, delta float64) error {
	if userID == "" {
		return fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	switch kind {
	case model.QuotaKindChat:
		return s.quotas.Increment(ctx, userID, time.Now(), int32(delta), 0, 0)
	case model.QuotaKindVoice:
		return s.quotas.Increment(ctx, userID, time.Now(), 0, delta, 0)
	case model.QuotaKindWriting:
		return s.quotas.Increment(ctx, userID, time.Now(), 0, 0, int32(delta))
	default:
		return fmt.Errorf("%w: unknown quota kind %q", ErrInvalidArgument, kind)
	}
}

// QuotaStatus — данные для GetQuotaStatus RPC.
type QuotaStatus struct {
	ChatUsed           int32
	ChatLimit          int32
	VoiceMinutesUsed   float64
	VoiceMinutesLimit  float64
	WritingUsed        int32
	WritingLimit       int32
	Plan               string
	ResetsAt           time.Time
}

// GetQuotaStatus — текущие счётчики и лимиты юзера.
func (s *Service) GetQuotaStatus(ctx context.Context, userID string) (*QuotaStatus, error) {
	if userID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	limits := s.limitsFor(ctx, userID)
	q, err := s.quotas.Get(ctx, userID, time.Now())
	if err != nil {
		return nil, fmt.Errorf("get quota: %w", err)
	}
	return &QuotaStatus{
		ChatUsed:          q.ChatRequests,
		ChatLimit:         limits.ChatLimit,
		VoiceMinutesUsed:  q.VoiceMinutes,
		VoiceMinutesLimit: limits.VoiceLimit,
		WritingUsed:       q.WritingChecks,
		WritingLimit:      limits.WritingLimit,
		Plan:              string(limits.Plan),
		ResetsAt:          limits.ResetsAt,
	}, nil
}

// limitsFor — для юзера. На MVP — все free (user-service не отдаёт is_premium).
func (s *Service) limitsFor(ctx context.Context, userID string) model.QuotaLimits {
	plan := model.PlanFree
	if s.user != nil {
		if p, _ := s.user.GetProfile(ctx, userID); p != nil && p.IsPremium {
			plan = model.PlanPremium
		}
	}

	now := time.Now().UTC()
	tomorrow := time.Date(now.Year(), now.Month(), now.Day()+1, 0, 0, 0, 0, time.UTC)

	if plan == model.PlanPremium {
		return model.QuotaLimits{
			Plan:         model.PlanPremium,
			ChatLimit:    s.cfg.PremiumChatLimit,
			VoiceLimit:   s.cfg.PremiumVoiceMinutesLimit,
			WritingLimit: s.cfg.PremiumWritingLimit,
			ResetsAt:     tomorrow,
		}
	}
	return model.QuotaLimits{
		Plan:         model.PlanFree,
		ChatLimit:    s.cfg.FreeChatLimit,
		VoiceLimit:   s.cfg.FreeVoiceMinutesLimit,
		WritingLimit: s.cfg.FreeWritingLimit,
		ResetsAt:     tomorrow,
	}
}
