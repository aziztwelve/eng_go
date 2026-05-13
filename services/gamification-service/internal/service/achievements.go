package service

import (
	"context"
	"encoding/json"
	"fmt"
	"strings"
	"time"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/platform/pkg/logger"
	"go.uber.org/zap"
)

// AchievementTrigger — что произошло, чтобы проверка отфильтровала кандидатов.
type AchievementTrigger string

const (
	AchievementTriggerStepCompleted   AchievementTrigger = "step_completed"
	AchievementTriggerLessonCompleted AchievementTrigger = "lesson_completed"
	AchievementTriggerStreakUpdated   AchievementTrigger = "streak_updated"
	AchievementTriggerXPAdded         AchievementTrigger = "xp_added"
)

// criteria — формат поля JSONB в таблице achievements.
type criteria struct {
	Type     string `json:"type"`
	Value    int    `json:"value,omitempty"`
	HourFrom int    `json:"hour_from,omitempty"`
	HourTo   int    `json:"hour_to,omitempty"`
	MMDD     string `json:"mm_dd,omitempty"`
}

// ListAchievements возвращает каталог достижений.
func (s *Service) ListAchievements(ctx context.Context, category string, includeHidden bool) ([]*model.Achievement, error) {
	return s.ach.ListCatalog(ctx, category, includeHidden)
}

// ListUserAchievements — что пользователь уже разблокировал.
func (s *Service) ListUserAchievements(ctx context.Context, userID string) ([]*model.UserAchievement, error) {
	return s.ach.ListUser(ctx, userID)
}

// CheckAchievements проверяет всех кандидатов и разблокирует подходящих.
// trigger используется только для оптимизации (можно фильтровать категории),
// в MVP мы проверяем весь каталог.
func (s *Service) CheckAchievements(
	ctx context.Context,
	userID string,
	trigger AchievementTrigger,
) ([]*model.UserAchievement, error) {
	all, err := s.ach.ListCatalog(ctx, "", true)
	if err != nil {
		return nil, fmt.Errorf("list catalog: %w", err)
	}
	stats, err := s.ensureStats(ctx, userID)
	if err != nil {
		return nil, err
	}

	unlocked := make([]*model.UserAchievement, 0, 4)
	for _, a := range all {
		already, err := s.ach.HasUnlocked(ctx, userID, a.ID)
		if err != nil {
			return nil, err
		}
		if already {
			continue
		}
		ok, err := s.matchCriteria(ctx, userID, stats, a)
		if err != nil {
			logger.Warn(ctx, "achievement criteria check failed",
				zap.String("code", a.Code), zap.Error(err))
			continue
		}
		if !ok {
			continue
		}
		ua := &model.UserAchievement{
			UserID:        userID,
			AchievementID: a.ID,
			Progress:      0,
		}
		if err := s.ach.Unlock(ctx, ua); err != nil {
			return nil, fmt.Errorf("unlock %s: %w", a.Code, err)
		}
		ua.AchievementRef = a
		unlocked = append(unlocked, ua)

		// Награды: XP/gems.
		if a.XPReward > 0 {
			// Записываем как отдельную транзакцию (но без рекурсивной проверки —
			// дергаем напрямую insert + stats update, чтобы избежать петли).
			if err := s.awardXPNoCheck(ctx, userID, a.XPReward, model.XPReasonAchievement, &a.ID); err != nil {
				logger.Warn(ctx, "award achievement xp", zap.Error(err))
			}
			// Обновим локальную копию stats.
			if fresh, err := s.stats.Get(ctx, userID); err == nil {
				stats = fresh
			}
		}
		if a.GemsReward > 0 {
			stats.Gems += a.GemsReward
			if err := s.stats.Update(ctx, stats); err != nil {
				logger.Warn(ctx, "award gems", zap.Error(err))
			}
		}
	}
	_ = trigger
	return unlocked, nil
}

// awardXPNoCheck — внутренний хелпер, чтобы не запускать рекурсивную проверку
// achievements при выдаче награды за achievement.
func (s *Service) awardXPNoCheck(ctx context.Context, userID string, amount int, reason model.XPReason, sourceID *string) error {
	txn := &model.XPTransaction{
		UserID: userID, Amount: amount, Reason: reason, SourceID: sourceID,
	}
	if err := s.xp.Insert(ctx, txn); err != nil {
		return err
	}
	stats, err := s.stats.Get(ctx, userID)
	if err != nil {
		return err
	}
	stats.TotalXP += amount
	stats.WeeklyXP += amount
	stats.Level = CalcLevel(stats.TotalXP)
	return s.stats.Update(ctx, stats)
}

// matchCriteria проверяет, выполнено ли условие для конкретного достижения.
func (s *Service) matchCriteria(ctx context.Context, userID string, stats *model.UserStats, a *model.Achievement) (bool, error) {
	if len(a.Criteria) == 0 {
		return false, nil
	}
	var c criteria
	if err := json.Unmarshal(a.Criteria, &c); err != nil {
		return false, fmt.Errorf("unmarshal criteria: %w", err)
	}
	now := s.now()

	switch c.Type {
	case "streak":
		return stats.CurrentStreak >= c.Value, nil
	case "total_xp":
		return stats.TotalXP >= c.Value, nil
	case "daily_goal_completed":
		n, err := s.dailyGoal.CountCompleted(ctx, userID)
		if err != nil {
			return false, err
		}
		return n >= c.Value, nil
	case "steps_completed":
		return s.countXPByReason(ctx, userID, model.XPReasonStepCompleted, c.Value)
	case "lessons_completed":
		return s.countXPByReason(ctx, userID, model.XPReasonLessonCompleted, c.Value)
	case "time_of_day":
		hour := now.Hour()
		if c.HourFrom <= c.HourTo {
			return hour >= c.HourFrom && hour < c.HourTo, nil
		}
		// Wrap-around (например, 22-2)
		return hour >= c.HourFrom || hour < c.HourTo, nil
	case "date":
		// формат "MM-DD"
		if len(c.MMDD) != 5 {
			return false, nil
		}
		return fmt.Sprintf("%02d-%02d", now.Month(), now.Day()) == c.MMDD, nil
	case "weekend_pair":
		return s.checkWeekendPair(ctx, userID)
	case "comeback":
		// был ли пропуск >= c.Value дней до того, как сегодня выполнил.
		return s.checkComeback(ctx, userID, c.Value)
	case "courses_completed", "perfect_quizzes", "quiz_completed", "languages", "birthday":
		// MVP: требует данных от других сервисов — пока всегда false.
		return false, nil
	default:
		logger.Debug(ctx, "unknown achievement criteria type",
			zap.String("code", a.Code), zap.String("type", c.Type))
		return false, nil
	}
}

func (s *Service) countXPByReason(ctx context.Context, userID string, reason model.XPReason, target int) (bool, error) {
	// Сейчас xp-репо не дает count by reason, грузим страницу побольше и считаем.
	// При желании оптимизируется отдельным методом.
	const pageSize = 1000
	offset := 0
	matched := 0
	for {
		page, _, err := s.xp.ListByUser(ctx, userID, pageSize, offset)
		if err != nil {
			return false, err
		}
		for _, t := range page {
			if t.Reason == reason {
				matched++
				if matched >= target {
					return true, nil
				}
			}
		}
		if len(page) < pageSize {
			break
		}
		offset += pageSize
	}
	return false, nil
}

func (s *Service) checkWeekendPair(ctx context.Context, userID string) (bool, error) {
	// Ищем сегодняшний понедельник? Проще — последние 7 дней, найти пару Sat+Sun completed.
	days, err := s.streak.ListLast(ctx, userID, 14)
	if err != nil {
		return false, err
	}
	completed := make(map[string]bool, len(days))
	for _, d := range days {
		if d.Completed {
			completed[d.Date.Format("2006-01-02")] = true
		}
	}
	// Проверим прошедшие выходные.
	today := s.today()
	for i := 0; i < 7; i++ {
		day := today.AddDate(0, 0, -i)
		if day.Weekday() == time.Sunday {
			sat := day.AddDate(0, 0, -1)
			if completed[day.Format("2006-01-02")] && completed[sat.Format("2006-01-02")] {
				return true, nil
			}
		}
	}
	return false, nil
}

func (s *Service) checkComeback(ctx context.Context, userID string, gap int) (bool, error) {
	days, err := s.streak.ListLast(ctx, userID, gap+30)
	if err != nil {
		return false, err
	}
	// days отсортированы desc. Игнорируем сегодня (первый элемент с completed).
	completedDates := make([]time.Time, 0, len(days))
	for _, d := range days {
		if d.Completed {
			completedDates = append(completedDates, d.Date)
		}
	}
	if len(completedDates) < 2 {
		return false, nil
	}
	// gap между последним и предпоследним.
	diff := int(completedDates[0].Sub(completedDates[1]).Hours() / 24)
	return diff >= gap, nil
}

// EnsureCategory — небольшой util для логирования, чтобы линтер не ругался на неиспользуемый strings.
var _ = strings.ToLower
