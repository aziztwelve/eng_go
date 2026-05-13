// Package v1 содержит gRPC handlers для GamificationService.
package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/gamification-service/internal/converter"
	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
	"github.com/elearning/gamification-service/internal/service"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// API — реализация gRPC GamificationService.
type API struct {
	gamificationv1.UnimplementedGamificationServiceServer
	svc *service.Service
}

// New создает API.
func New(svc *service.Service) *API {
	return &API{svc: svc}
}

// --- Stats ---

func (a *API) InitializeUser(ctx context.Context, req *gamificationv1.InitializeUserRequest) (*gamificationv1.UserStats, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.InitializeUser(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.UserStatsToProto(stats), nil
}

func (a *API) GetUserStats(ctx context.Context, req *gamificationv1.GetUserStatsRequest) (*gamificationv1.UserStats, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.GetUserStats(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.UserStatsToProto(stats), nil
}

// --- XP ---

func (a *API) AddXP(ctx context.Context, req *gamificationv1.AddXPRequest) (*gamificationv1.AddXPResponse, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	if req.GetAmount() <= 0 {
		return nil, status.Error(codes.InvalidArgument, "amount must be > 0")
	}
	var src *string
	if req.GetSourceId() != "" {
		s := req.SourceId
		src = &s
	}
	res, err := a.svc.AddXP(ctx, req.UserId, int(req.Amount), converter.XPReasonFromProto(req.Reason), src)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return addXPResultToProto(res), nil
}

func (a *API) GetXPHistory(ctx context.Context, req *gamificationv1.GetXPHistoryRequest) (*gamificationv1.XPHistoryResponse, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	txs, total, err := a.svc.GetXPHistory(ctx, req.UserId, int(req.GetLimit()), int(req.GetOffset()))
	if err != nil {
		return nil, toGRPCError(err)
	}
	out := &gamificationv1.XPHistoryResponse{Total: int32(total)}
	for _, t := range txs {
		out.Transactions = append(out.Transactions, converter.XPTransactionToProto(t))
	}
	return out, nil
}

// --- Hearts ---

func (a *API) LoseHeart(ctx context.Context, req *gamificationv1.LoseHeartRequest) (*gamificationv1.Hearts, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.LoseHeart(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.HeartsToProto(stats), nil
}

func (a *API) RefillHearts(ctx context.Context, req *gamificationv1.RefillHeartsRequest) (*gamificationv1.Hearts, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.RefillHearts(ctx, req.UserId, int(req.GetAmount()))
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.HeartsToProto(stats), nil
}

func (a *API) CheckHearts(ctx context.Context, req *gamificationv1.CheckHeartsRequest) (*gamificationv1.Hearts, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.CheckHearts(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.HeartsToProto(stats), nil
}

// --- Daily Goal ---

func (a *API) GetDailyGoal(ctx context.Context, req *gamificationv1.GetDailyGoalRequest) (*gamificationv1.DailyGoal, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	g, p, err := a.svc.GetDailyGoal(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.DailyGoalToProto(g, p), nil
}

func (a *API) UpdateDailyGoal(ctx context.Context, req *gamificationv1.UpdateDailyGoalRequest) (*gamificationv1.DailyGoal, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	g, err := a.svc.UpdateDailyGoal(ctx, req.UserId, int(req.GetTargetXp()))
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.DailyGoalToProto(g, nil), nil
}

// --- Streak ---

func (a *API) UpdateStreak(ctx context.Context, req *gamificationv1.UpdateStreakRequest) (*gamificationv1.Streak, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.UpdateStreak(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.StreakToProto(stats), nil
}

func (a *API) GetStreakHistory(ctx context.Context, req *gamificationv1.GetStreakHistoryRequest) (*gamificationv1.StreakHistory, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	days, err := a.svc.GetStreakHistory(ctx, req.UserId, int(req.GetDays()))
	if err != nil {
		return nil, toGRPCError(err)
	}
	return &gamificationv1.StreakHistory{
		UserId: req.UserId,
		Days:   converter.StreakDaysToProto(days),
	}, nil
}

func (a *API) UseStreakFreeze(ctx context.Context, req *gamificationv1.UseStreakFreezeRequest) (*gamificationv1.Streak, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.UseStreakFreeze(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return converter.StreakToProto(stats), nil
}

// --- Achievements ---

func (a *API) ListAchievements(ctx context.Context, req *gamificationv1.ListAchievementsRequest) (*gamificationv1.AchievementsResponse, error) {
	list, err := a.svc.ListAchievements(ctx, req.GetCategory(), req.GetIncludeHidden())
	if err != nil {
		return nil, toGRPCError(err)
	}
	out := &gamificationv1.AchievementsResponse{}
	for _, x := range list {
		out.Achievements = append(out.Achievements, converter.AchievementToProto(x))
	}
	return out, nil
}

func (a *API) GetUserAchievements(ctx context.Context, req *gamificationv1.GetUserAchievementsRequest) (*gamificationv1.UserAchievementsResponse, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	list, err := a.svc.ListUserAchievements(ctx, req.UserId)
	if err != nil {
		return nil, toGRPCError(err)
	}
	return &gamificationv1.UserAchievementsResponse{
		Achievements: converter.UserAchievementsToProto(list),
	}, nil
}

func (a *API) CheckAchievements(ctx context.Context, req *gamificationv1.CheckAchievementsRequest) (*gamificationv1.UnlockedAchievementsResponse, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	unlocked, err := a.svc.CheckAchievements(ctx, req.UserId, service.AchievementTrigger(req.GetTrigger()))
	if err != nil {
		return nil, toGRPCError(err)
	}
	return &gamificationv1.UnlockedAchievementsResponse{
		Unlocked: converter.UserAchievementsToProto(unlocked),
	}, nil
}

// --- Hooks (от course-service) ---

func (a *API) OnStepCompleted(ctx context.Context, req *gamificationv1.OnStepCompletedRequest) (*gamificationv1.OnStepCompletedResponse, error) {
	if req.GetUserId() == "" || req.GetStepId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and step_id are required")
	}
	res, err := a.svc.OnStepCompleted(ctx, service.StepCompletedInput{
		UserID:    req.UserId,
		StepID:    req.StepId,
		LessonID:  req.LessonId,
		StepKind:  req.GetStepKind(),
		IsCorrect: req.GetIsCorrect(),
		Score:     req.GetScore(),
	})
	if err != nil {
		return nil, toGRPCError(err)
	}
	out := &gamificationv1.OnStepCompletedResponse{}
	if res.XP != nil {
		out.Xp = addXPResultToProto(res.XP)
		out.Streak = converter.StreakToProto(res.XP.Stats)
	}
	return out, nil
}

func (a *API) OnLessonCompleted(ctx context.Context, req *gamificationv1.OnLessonCompletedRequest) (*gamificationv1.OnLessonCompletedResponse, error) {
	if req.GetUserId() == "" || req.GetLessonId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and lesson_id are required")
	}
	res, err := a.svc.OnLessonCompleted(ctx, service.LessonCompletedInput{
		UserID:   req.UserId,
		LessonID: req.LessonId,
	})
	if err != nil {
		return nil, toGRPCError(err)
	}
	return &gamificationv1.OnLessonCompletedResponse{
		Xp: addXPResultToProto(res),
	}, nil
}

// --- helpers ---

func toGRPCError(err error) error {
	if err == nil {
		return nil
	}
	if errors.Is(err, repository.ErrNotFound) {
		return status.Error(codes.NotFound, err.Error())
	}
	return status.Error(codes.Internal, err.Error())
}

func addXPResultToProto(r *service.AddXPResult) *gamificationv1.AddXPResponse {
	if r == nil {
		return nil
	}
	out := &gamificationv1.AddXPResponse{
		Transaction:          converter.XPTransactionToProto(r.Transaction),
		Stats:                converter.UserStatsToProto(r.Stats),
		LeveledUp:            r.LeveledUp,
		NewLevel:             int32(r.NewLevel),
		UnlockedAchievements: converter.UserAchievementsToProto(r.UnlockedAchievements),
		DailyGoalProgress:    converter.DailyGoalProgressToProto(r.DailyGoalProgress),
	}
	return out
}

// чтобы линтер не ругался на неиспользуемые импорты при изменениях.
var (
	_ = timestamppb.Now
	_ = model.XPReasonStepCompleted
)
