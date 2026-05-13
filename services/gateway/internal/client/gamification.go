package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// GamificationClient — gRPC обертка для gamification-service.
type GamificationClient struct {
	conn   *grpc.ClientConn
	client gamificationv1.GamificationServiceClient
}

// NewGamificationClient устанавливает соединение.
func NewGamificationClient(ctx context.Context, addr string) (*GamificationClient, error) {
	conn, err := grpc.DialContext(
		ctx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, err
	}
	return &GamificationClient{
		conn:   conn,
		client: gamificationv1.NewGamificationServiceClient(conn),
	}, nil
}

// Close закрывает соединение.
func (c *GamificationClient) Close() error {
	return c.conn.Close()
}

// --- Stats ---

func (c *GamificationClient) GetUserStats(ctx context.Context, userID string) (*gamificationv1.UserStats, error) {
	return c.client.GetUserStats(ctx, &gamificationv1.GetUserStatsRequest{UserId: userID})
}

// --- Hearts ---

func (c *GamificationClient) CheckHearts(ctx context.Context, userID string) (*gamificationv1.Hearts, error) {
	return c.client.CheckHearts(ctx, &gamificationv1.CheckHeartsRequest{UserId: userID})
}

func (c *GamificationClient) RefillHearts(ctx context.Context, userID string, reason gamificationv1.RefillReason, amount int32) (*gamificationv1.Hearts, error) {
	return c.client.RefillHearts(ctx, &gamificationv1.RefillHeartsRequest{
		UserId: userID, Reason: reason, Amount: amount,
	})
}

// --- Daily Goal ---

func (c *GamificationClient) GetDailyGoal(ctx context.Context, userID string) (*gamificationv1.DailyGoal, error) {
	return c.client.GetDailyGoal(ctx, &gamificationv1.GetDailyGoalRequest{UserId: userID})
}

func (c *GamificationClient) UpdateDailyGoal(ctx context.Context, userID string, target int32) (*gamificationv1.DailyGoal, error) {
	return c.client.UpdateDailyGoal(ctx, &gamificationv1.UpdateDailyGoalRequest{
		UserId: userID, TargetXp: target,
	})
}

// --- Streak ---

func (c *GamificationClient) GetStreakHistory(ctx context.Context, userID string, days int32) (*gamificationv1.StreakHistory, error) {
	return c.client.GetStreakHistory(ctx, &gamificationv1.GetStreakHistoryRequest{
		UserId: userID, Days: days,
	})
}

func (c *GamificationClient) UseStreakFreeze(ctx context.Context, userID string) (*gamificationv1.Streak, error) {
	return c.client.UseStreakFreeze(ctx, &gamificationv1.UseStreakFreezeRequest{UserId: userID})
}

// --- Achievements ---

func (c *GamificationClient) ListAchievements(ctx context.Context, category string, includeHidden bool) (*gamificationv1.AchievementsResponse, error) {
	return c.client.ListAchievements(ctx, &gamificationv1.ListAchievementsRequest{
		Category: category, IncludeHidden: includeHidden,
	})
}

func (c *GamificationClient) GetUserAchievements(ctx context.Context, userID string) (*gamificationv1.UserAchievementsResponse, error) {
	return c.client.GetUserAchievements(ctx, &gamificationv1.GetUserAchievementsRequest{UserId: userID})
}

// --- XP history ---

func (c *GamificationClient) GetXPHistory(ctx context.Context, userID string, limit, offset int32) (*gamificationv1.XPHistoryResponse, error) {
	return c.client.GetXPHistory(ctx, &gamificationv1.GetXPHistoryRequest{
		UserId: userID, Limit: limit, Offset: offset,
	})
}
