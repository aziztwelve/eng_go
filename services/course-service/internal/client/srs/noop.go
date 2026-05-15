package srs

import (
	"context"

	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
)

// noopClient — заглушка для случаев, когда SRS_SERVICE_ADDR не задан.
type noopClient struct{}

// NewNoopClient создает no-op реализацию Client.
func NewNoopClient() Client {
	return &noopClient{}
}

func (n *noopClient) InitSkill(ctx context.Context, ev InitSkillEvent) error {
	logger.Debug(ctx, "srs.InitSkill (noop)",
		zap.String("user_id", ev.UserID),
		zap.String("skill_id", ev.SkillID),
		zap.String("skill_type", string(ev.SkillType)),
	)
	return nil
}

func (n *noopClient) StrengthenSkill(ctx context.Context, ev StrengthenSkillEvent) error {
	logger.Debug(ctx, "srs.StrengthenSkill (noop)",
		zap.String("user_id", ev.UserID),
		zap.String("skill_id", ev.SkillID),
		zap.String("skill_type", string(ev.SkillType)),
	)
	return nil
}
