// Package converter переводит внутренние model'ы в protobuf и обратно.
package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/service"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

func ts(t *timestamppb.Timestamp) *timestamppb.Timestamp { return t }

// UserStatsToProto.
func UserStatsToProto(s *model.UserStats) *gamificationv1.UserStats {
	if s == nil {
		return nil
	}
	info := service.CalcLevelInfo(s.TotalXP)
	out := &gamificationv1.UserStats{
		UserId:        s.UserID,
		Level:         int32(s.Level),
		TotalXp:       int32(s.TotalXP),
		WeeklyXp:      int32(s.WeeklyXP),
		NextLevelXp:   int32(info.XPToNext),
		CurrentStreak: int32(s.CurrentStreak),
		MaxStreak:     int32(s.MaxStreak),
		Hearts:        int32(s.Hearts),
		MaxHearts:     int32(s.MaxHearts),
		Gems:          int32(s.Gems),
		StreakFreezes: int32(s.StreakFreezes),
		CreatedAt:     timestamppb.New(s.CreatedAt),
		UpdatedAt:     timestamppb.New(s.UpdatedAt),
	}
	if s.LastLessonAt != nil {
		out.LastLessonAt = timestamppb.New(*s.LastLessonAt)
	}
	if s.NextHeartAt != nil {
		out.NextHeartAt = timestamppb.New(*s.NextHeartAt)
	}
	return out
}

// HeartsToProto собирает Hearts из stats.
func HeartsToProto(s *model.UserStats) *gamificationv1.Hearts {
	if s == nil {
		return nil
	}
	h := &gamificationv1.Hearts{
		UserId:    s.UserID,
		Hearts:    int32(s.Hearts),
		MaxHearts: int32(s.MaxHearts),
	}
	if s.NextHeartAt != nil {
		h.NextHeartAt = timestamppb.New(*s.NextHeartAt)
	}
	return h
}

// StreakToProto.
func StreakToProto(s *model.UserStats) *gamificationv1.Streak {
	if s == nil {
		return nil
	}
	st := &gamificationv1.Streak{
		UserId:        s.UserID,
		CurrentStreak: int32(s.CurrentStreak),
		MaxStreak:     int32(s.MaxStreak),
		StreakFreezes: int32(s.StreakFreezes),
	}
	if s.LastLessonAt != nil {
		st.LastLessonAt = timestamppb.New(*s.LastLessonAt)
	}
	return st
}

// XPTransactionToProto.
func XPTransactionToProto(t *model.XPTransaction) *gamificationv1.XPTransaction {
	if t == nil {
		return nil
	}
	src := ""
	if t.SourceID != nil {
		src = *t.SourceID
	}
	return &gamificationv1.XPTransaction{
		Id:        t.ID,
		UserId:    t.UserID,
		Amount:    int32(t.Amount),
		Reason:    xpReasonToProto(t.Reason),
		SourceId:  src,
		CreatedAt: timestamppb.New(t.CreatedAt),
	}
}

func xpReasonToProto(r model.XPReason) gamificationv1.XPReason {
	switch r {
	case model.XPReasonStepCompleted:
		return gamificationv1.XPReason_XP_REASON_STEP_COMPLETED
	case model.XPReasonLessonCompleted:
		return gamificationv1.XPReason_XP_REASON_LESSON_COMPLETED
	case model.XPReasonDailyGoal:
		return gamificationv1.XPReason_XP_REASON_DAILY_GOAL
	case model.XPReasonAchievement:
		return gamificationv1.XPReason_XP_REASON_ACHIEVEMENT
	case model.XPReasonStreakBonus:
		return gamificationv1.XPReason_XP_REASON_STREAK_BONUS
	case model.XPReasonPractice:
		return gamificationv1.XPReason_XP_REASON_PRACTICE
	default:
		return gamificationv1.XPReason_XP_REASON_UNSPECIFIED
	}
}

// XPReasonFromProto.
func XPReasonFromProto(r gamificationv1.XPReason) model.XPReason {
	switch r {
	case gamificationv1.XPReason_XP_REASON_STEP_COMPLETED:
		return model.XPReasonStepCompleted
	case gamificationv1.XPReason_XP_REASON_LESSON_COMPLETED:
		return model.XPReasonLessonCompleted
	case gamificationv1.XPReason_XP_REASON_DAILY_GOAL:
		return model.XPReasonDailyGoal
	case gamificationv1.XPReason_XP_REASON_ACHIEVEMENT:
		return model.XPReasonAchievement
	case gamificationv1.XPReason_XP_REASON_STREAK_BONUS:
		return model.XPReasonStreakBonus
	case gamificationv1.XPReason_XP_REASON_PRACTICE:
		return model.XPReasonPractice
	default:
		return ""
	}
}

// DailyGoalToProto.
func DailyGoalToProto(g *model.DailyGoal, p *model.DailyGoalProgress) *gamificationv1.DailyGoal {
	if g == nil {
		return nil
	}
	out := &gamificationv1.DailyGoal{
		UserId:    g.UserID,
		TargetXp:  int32(g.TargetXP),
		UpdatedAt: timestamppb.New(g.UpdatedAt),
	}
	if p != nil {
		out.Today = DailyGoalProgressToProto(p)
	}
	return out
}

// DailyGoalProgressToProto.
func DailyGoalProgressToProto(p *model.DailyGoalProgress) *gamificationv1.DailyGoalProgress {
	if p == nil {
		return nil
	}
	out := &gamificationv1.DailyGoalProgress{
		UserId:    p.UserID,
		Date:      p.Date.Format("2006-01-02"),
		XpEarned:  int32(p.XPEarned),
		Goal:      int32(p.Goal),
		Completed: p.Completed,
	}
	if p.CompletedAt != nil {
		out.CompletedAt = timestamppb.New(*p.CompletedAt)
	}
	return out
}

// StreakDaysToProto.
func StreakDaysToProto(days []*model.StreakDay) []*gamificationv1.StreakDay {
	out := make([]*gamificationv1.StreakDay, 0, len(days))
	for _, d := range days {
		out = append(out, &gamificationv1.StreakDay{
			Date:       d.Date.Format("2006-01-02"),
			Completed:  d.Completed,
			UsedFreeze: d.UsedFreeze,
		})
	}
	return out
}

// AchievementToProto.
func AchievementToProto(a *model.Achievement) *gamificationv1.Achievement {
	if a == nil {
		return nil
	}
	return &gamificationv1.Achievement{
		Id:            a.ID,
		Code:          a.Code,
		Title:         a.Title,
		Description:   a.Description,
		IconUrl:       a.IconURL,
		Category:      a.Category,
		Tier:          int32(a.Tier),
		XpReward:      int32(a.XPReward),
		GemsReward:    int32(a.GemsReward),
		CriteriaJson:  string(a.Criteria),
		IsHidden:      a.IsHidden,
		CreatedAt:     timestamppb.New(a.CreatedAt),
	}
}

// UserAchievementToProto.
func UserAchievementToProto(ua *model.UserAchievement) *gamificationv1.UserAchievement {
	if ua == nil {
		return nil
	}
	return &gamificationv1.UserAchievement{
		UserId:      ua.UserID,
		Achievement: AchievementToProto(ua.AchievementRef),
		Progress:    int32(ua.Progress),
		UnlockedAt:  timestamppb.New(ua.UnlockedAt),
	}
}

// UserAchievementsToProto — массив.
func UserAchievementsToProto(xs []*model.UserAchievement) []*gamificationv1.UserAchievement {
	out := make([]*gamificationv1.UserAchievement, 0, len(xs))
	for _, x := range xs {
		out = append(out, UserAchievementToProto(x))
	}
	return out
}

// _ = ts чтобы импорт timestamppb не сидел впустую если убрать.
var _ = ts
