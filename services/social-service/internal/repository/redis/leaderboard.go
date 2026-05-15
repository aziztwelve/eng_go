// Package redis — реализация LeaderboardRepo через Redis Sorted Sets.
//
// Ключ: "leaderboard:cohort:{uuid}". Score = weekly_xp (float64). Member = user_id.
//
// Идемпотентность операций важна т.к. Kafka consumer at-least-once: повторный
// xp.gained event приведёт к двойному инкременту. Это допустимый компромисс для
// leaderboard (см. PHASE_4_PROGRESS.md "Идемпотентность Kafka consumer'а").
package redis

import (
	"context"
	"errors"
	"fmt"

	"github.com/google/uuid"
	goredis "github.com/redis/go-redis/v9"

	"github.com/elearning/social-service/internal/repository"
)

// LeaderboardRepository — Redis-реализация repository.LeaderboardRepo.
type LeaderboardRepository struct {
	client *goredis.Client
}

func NewLeaderboardRepository(client *goredis.Client) *LeaderboardRepository {
	return &LeaderboardRepository{client: client}
}

func cohortKey(cohortID uuid.UUID) string {
	return "leaderboard:cohort:" + cohortID.String()
}

func (r *LeaderboardRepository) AddXP(ctx context.Context, cohortID, userID uuid.UUID, amount int) error {
	if amount == 0 {
		return nil
	}
	if err := r.client.ZIncrBy(ctx, cohortKey(cohortID), float64(amount), userID.String()).Err(); err != nil {
		return fmt.Errorf("redis zincrby: %w", err)
	}
	return nil
}

func (r *LeaderboardRepository) SetXP(ctx context.Context, cohortID, userID uuid.UUID, score int) error {
	z := goredis.Z{Score: float64(score), Member: userID.String()}
	if err := r.client.ZAdd(ctx, cohortKey(cohortID), z).Err(); err != nil {
		return fmt.Errorf("redis zadd: %w", err)
	}
	return nil
}

func (r *LeaderboardRepository) GetTop(ctx context.Context, cohortID uuid.UUID, limit int) ([]repository.LeaderboardScore, error) {
	if limit <= 0 {
		limit = 30
	}
	res, err := r.client.ZRevRangeWithScores(ctx, cohortKey(cohortID), 0, int64(limit-1)).Result()
	if err != nil {
		return nil, fmt.Errorf("redis zrevrange: %w", err)
	}
	out := make([]repository.LeaderboardScore, 0, len(res))
	for _, z := range res {
		uid, err := uuid.Parse(fmt.Sprint(z.Member))
		if err != nil {
			continue // skip malformed
		}
		out = append(out, repository.LeaderboardScore{
			UserID:   uid,
			WeeklyXP: int(z.Score),
		})
	}
	return out, nil
}

func (r *LeaderboardRepository) GetRank(ctx context.Context, cohortID, userID uuid.UUID) (int, error) {
	rank, err := r.client.ZRevRank(ctx, cohortKey(cohortID), userID.String()).Result()
	if err != nil {
		if errors.Is(err, goredis.Nil) {
			return 0, repository.ErrNotFound
		}
		return 0, fmt.Errorf("redis zrevrank: %w", err)
	}
	return int(rank) + 1, nil // 1-based
}

func (r *LeaderboardRepository) GetScore(ctx context.Context, cohortID, userID uuid.UUID) (int, error) {
	score, err := r.client.ZScore(ctx, cohortKey(cohortID), userID.String()).Result()
	if err != nil {
		if errors.Is(err, goredis.Nil) {
			return 0, repository.ErrNotFound
		}
		return 0, fmt.Errorf("redis zscore: %w", err)
	}
	return int(score), nil
}

func (r *LeaderboardRepository) Reset(ctx context.Context, cohortID uuid.UUID) error {
	if err := r.client.Del(ctx, cohortKey(cohortID)).Err(); err != nil {
		return fmt.Errorf("redis del: %w", err)
	}
	return nil
}
