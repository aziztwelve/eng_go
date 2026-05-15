package gamification

import (
	"context"

	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

type noopClient struct{}

// NewNoopClient — fallback при пустом GAMIFICATION_SERVICE_ADDR.
// Возвращает nil/nil — submission service сам интерпретирует это как
// «никакого XP/hearts side-effect, продолжаем».
func NewNoopClient() Client {
	return &noopClient{}
}

func (noopClient) AddXP(context.Context, AddXPRequest) (*gamificationv1.AddXPResponse, error) {
	return nil, nil
}

func (noopClient) LoseHeart(context.Context, string, string) (*gamificationv1.Hearts, error) {
	return nil, nil
}
