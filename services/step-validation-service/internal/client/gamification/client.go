package gamification

import (
	"context"

	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// AddXPRequest — параметры начисления XP.
type AddXPRequest struct {
	UserID   string
	Amount   int32
	Reason   gamificationv1.XPReason
	SourceID string
}

// Client — узкий интерфейс gamification-service.
type Client interface {
	AddXP(ctx context.Context, req AddXPRequest) (*gamificationv1.AddXPResponse, error)
	LoseHeart(ctx context.Context, userID, sourceID string) (*gamificationv1.Hearts, error)
}
