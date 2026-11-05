package service

import (
	"context"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/repository"
)

type FreeTalkSession struct {
	Allowed, Unlimited  bool
	ExpiresAt, ResetsAt time.Time
}

func (s *Service) unlimitedFreeTalk(userID string) bool {
	if userID == "" {
		return false
	}
	for _, id := range strings.Split(s.cfg.FreeTalkUnlimitedUserIDs, ",") {
		if strings.TrimSpace(id) == userID {
			return true
		}
	}
	return false
}

func (s *Service) freeTalkConversation(ctx context.Context, userID, conversationID string) error {
	if userID == "" || conversationID == "" {
		return fmt.Errorf("%w: user and conversation required", ErrInvalidArgument)
	}
	c, err := s.conversations.GetByID(ctx, conversationID)
	if errors.Is(err, repository.ErrNotFound) {
		return ErrNotFound
	}
	if err != nil {
		return err
	}
	if c.UserID != userID {
		return ErrForbidden
	}
	if c.IsEnded() || c.Scenario != model.ScenarioFreeChat {
		return fmt.Errorf("%w: invalid free talk conversation", ErrInvalidArgument)
	}
	return nil
}
func (s *Service) ReserveFreeTalk(ctx context.Context, userID, conversationID string) (*FreeTalkSession, error) {
	if err := s.freeTalkConversation(ctx, userID, conversationID); err != nil {
		return nil, err
	}
	limits := s.limitsFor(ctx, userID)
	if limits.Plan == model.PlanPremium || s.unlimitedFreeTalk(userID) {
		return &FreeTalkSession{Allowed: true, Unlimited: true, ResetsAt: limits.ResetsAt}, nil
	}
	if s.freeTalkSessions == nil {
		return nil, fmt.Errorf("free talk storage unavailable")
	}
	existing, expires, err := s.freeTalkSessions.Reserve(ctx, userID, conversationID)
	if err != nil {
		return nil, err
	}
	return &FreeTalkSession{Allowed: existing == conversationID && time.Now().Before(expires), ExpiresAt: expires, ResetsAt: limits.ResetsAt}, nil
}
func (s *Service) CheckFreeTalk(ctx context.Context, userID, conversationID string) error {
	if err := s.freeTalkConversation(ctx, userID, conversationID); err != nil {
		return err
	}
	if s.limitsFor(ctx, userID).Plan == model.PlanPremium || s.unlimitedFreeTalk(userID) {
		return nil
	}
	if s.freeTalkSessions == nil {
		return fmt.Errorf("free talk storage unavailable")
	}
	active, err := s.freeTalkSessions.Active(ctx, userID, conversationID)
	if err != nil {
		return err
	}
	if !active {
		return ErrQuotaExceeded
	}
	return nil
}
