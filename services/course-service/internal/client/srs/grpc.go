package srs

import (
	"context"
	"fmt"
	"time"

	"go.uber.org/zap"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	"github.com/elearning/platform/pkg/logger"
	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
)

// grpcClient — реальная реализация Client.
type grpcClient struct {
	conn   *grpc.ClientConn
	client srsv1.SRSServiceClient
}

// NewGRPCClient устанавливает соединение и возвращает Client.
// Закрытие соединения должно регистрироваться в closer'е приложением.
func NewGRPCClient(ctx context.Context, addr string) (Client, func() error, error) {
	dialCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()
	conn, err := grpc.DialContext(
		dialCtx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, nil, fmt.Errorf("dial srs %s: %w", addr, err)
	}
	c := &grpcClient{conn: conn, client: srsv1.NewSRSServiceClient(conn)}
	return c, conn.Close, nil
}

func mapSkillType(t SkillType) srsv1.SkillType {
	switch t {
	case SkillTypeModule:
		return srsv1.SkillType_SKILL_TYPE_MODULE
	case SkillTypeLesson:
		return srsv1.SkillType_SKILL_TYPE_LESSON
	default:
		return srsv1.SkillType_SKILL_TYPE_UNSPECIFIED
	}
}

func (c *grpcClient) InitSkill(ctx context.Context, ev InitSkillEvent) error {
	_, err := c.client.InitSkill(ctx, &srsv1.InitSkillRequest{
		UserId:    ev.UserID,
		SkillId:   ev.SkillID,
		SkillType: mapSkillType(ev.SkillType),
		DecayRate: ev.DecayRate,
	})
	if err != nil {
		logger.Warn(ctx, "srs.InitSkill failed (non-fatal)",
			zap.String("user_id", ev.UserID),
			zap.String("skill_id", ev.SkillID),
			zap.String("skill_type", string(ev.SkillType)),
			zap.Error(err),
		)
	}
	return err
}

func (c *grpcClient) StrengthenSkill(ctx context.Context, ev StrengthenSkillEvent) error {
	_, err := c.client.StrengthenSkill(ctx, &srsv1.StrengthenSkillRequest{
		UserId:  ev.UserID,
		SkillId: ev.SkillID,
		Amount:  ev.Amount,
	})
	if err != nil {
		logger.Warn(ctx, "srs.StrengthenSkill failed (non-fatal)",
			zap.String("user_id", ev.UserID),
			zap.String("skill_id", ev.SkillID),
			zap.String("skill_type", string(ev.SkillType)),
			zap.Error(err),
		)
	}
	return err
}
