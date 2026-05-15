// Reminders cron — почасовой триггер для streak_risk + daily_goal push'ей.
//
// Стратегия: каждый час (UTC) пробегаем всех юзеров пагинацией. Для
// каждого:
//   1. Загружаем timezone (через user-client с TTL-кэшем — задержка
//      обычно ~0 для горячих юзеров).
//   2. Конвертируем UTC → локальный hour.
//   3. Если local_hour == streak_risk_hour (default 20) и streak за
//      сегодня НЕ сохранён → notif.Send(channel=streak_risk, ignore_quiet_hours=true).
//   4. Если local_hour == daily_goal_hour (default 21) и daily_goal
//      НЕ выполнен → notif.Send(channel=daily_goal).
//
// Дедуп — на стороне notifications-service (ключ `<channel>:YYYY-MM-DD`),
// так что повторные тики безопасны.

package cron

import (
	"context"
	"encoding/json"
	"errors"
	"sync"
	"time"

	"go.uber.org/zap"

	notifclient "github.com/elearning/gamification-service/internal/client/notifications"
	"github.com/elearning/gamification-service/internal/repository"
	"github.com/elearning/gamification-service/internal/service"
	"github.com/elearning/platform/pkg/logger"
)

// RemindersConfig — настройки notification cron'а.
type RemindersConfig struct {
	// Local hour (0..23) когда шлём streak_risk (если не сохранён).
	StreakRiskHour int
	// Local hour (0..23) когда шлём daily_goal (если не выполнен).
	DailyGoalHour int
	// Размер пакета per-tick (для пагинации user_stats).
	BatchSize int
}

// Defaults — sane defaults для дев-окружения.
var DefaultReminders = RemindersConfig{
	StreakRiskHour: 20,
	DailyGoalHour:  21,
	BatchSize:      500,
}

// RemindersScheduler — отдельный планировщик для streak_risk + daily_goal.
//
// Не использует существующий Scheduler, чтобы не смешивать ответственности
// (regen hearts / weekly reset / notifications).
type RemindersScheduler struct {
	svc       *service.Service
	statsRepo repository.StatsRepository
	streakRpo repository.StreakRepository
	notif     notifclient.Client
	cfg       RemindersConfig

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

// NewRemindersScheduler — конструктор. notif может быть nil (тогда
// планировщик ничего не шлёт, только логирует — удобно в dev).
func NewRemindersScheduler(
	svc *service.Service,
	stats repository.StatsRepository,
	streakRpo repository.StreakRepository,
	notif notifclient.Client,
	cfg RemindersConfig,
) *RemindersScheduler {
	if cfg.BatchSize <= 0 {
		cfg.BatchSize = DefaultReminders.BatchSize
	}
	if cfg.StreakRiskHour < 0 || cfg.StreakRiskHour > 23 {
		cfg.StreakRiskHour = DefaultReminders.StreakRiskHour
	}
	if cfg.DailyGoalHour < 0 || cfg.DailyGoalHour > 23 {
		cfg.DailyGoalHour = DefaultReminders.DailyGoalHour
	}
	if notif == nil {
		notif = notifclient.NewNoop()
	}
	return &RemindersScheduler{
		svc: svc, statsRepo: stats, streakRpo: streakRpo,
		notif: notif, cfg: cfg,
	}
}

// Start — запускает hourly tick.
func (r *RemindersScheduler) Start(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	r.cancel = cancel
	r.wg.Add(1)
	go r.loop(ctx)
	logger.Info(ctx, "⏰ reminders cron started",
		zap.Int("streak_hour", r.cfg.StreakRiskHour),
		zap.Int("daily_goal_hour", r.cfg.DailyGoalHour),
		zap.Int("batch", r.cfg.BatchSize),
	)
}

// Stop — graceful.
func (r *RemindersScheduler) Stop() {
	if r.cancel != nil {
		r.cancel()
	}
	r.wg.Wait()
}

func (r *RemindersScheduler) loop(ctx context.Context) {
	defer r.wg.Done()
	// Запускаем сразу, потом каждый час на «:00».
	r.tick(ctx, time.Now().UTC())
	for {
		next := nextTopOfHour(time.Now().UTC())
		wait := time.Until(next)
		select {
		case <-ctx.Done():
			return
		case <-time.After(wait):
			r.tick(ctx, next)
		}
	}
}

func nextTopOfHour(now time.Time) time.Time {
	return now.Truncate(time.Hour).Add(time.Hour)
}

func (r *RemindersScheduler) tick(ctx context.Context, ranAt time.Time) {
	offset := 0
	totalStreak, totalGoal := 0, 0
	for {
		ids, err := r.statsRepo.ListAllUserIDs(ctx, r.cfg.BatchSize, offset)
		if err != nil {
			logger.Warn(ctx, "list users for reminders", zap.Error(err))
			return
		}
		if len(ids) == 0 {
			break
		}
		for _, uid := range ids {
			s, g := r.maybeRemind(ctx, uid, ranAt)
			totalStreak += s
			totalGoal += g
		}
		if len(ids) < r.cfg.BatchSize {
			break
		}
		offset += r.cfg.BatchSize
	}
	logger.Debug(ctx, "reminders tick done",
		zap.Time("ran_at", ranAt),
		zap.Int("streak_sent", totalStreak),
		zap.Int("daily_goal_sent", totalGoal),
	)
}

// maybeRemind проверяет один user'ов локальный час и шлёт push'и при
// совпадении. Возвращает (streak_sent, daily_goal_sent) — 0/1 для каждого.
func (r *RemindersScheduler) maybeRemind(ctx context.Context, userID string, ranAtUTC time.Time) (int, int) {
	loc := r.svc.UserLocation(ctx, userID)
	local := ranAtUTC.In(loc)
	hour := local.Hour()

	// Только в часы триггеров делаем работу. tick на :00 каждого часа,
	// поэтому проверка точная.
	if hour != r.cfg.StreakRiskHour && hour != r.cfg.DailyGoalHour {
		return 0, 0
	}

	streakSent, goalSent := 0, 0

	if hour == r.cfg.StreakRiskHour {
		todayLocal := time.Date(local.Year(), local.Month(), local.Day(), 0, 0, 0, 0, loc)
		day, err := r.streakRpo.Get(ctx, userID, todayLocal)
		// repository.ErrNotFound → ещё не было completion'а сегодня.
		isMissing := errors.Is(err, repository.ErrNotFound)
		isOpen := day != nil && !day.Completed
		if isMissing || isOpen {
			if r.send(ctx, userID, "streak_risk",
				"🔥 Не теряй стрик!",
				"Сегодня ещё не было урока. Сохрани свой streak, пока не поздно.",
				todayLocal.Format("2006-01-02"),
				true,
			) {
				streakSent = 1
			}
		}
	}

	if hour == r.cfg.DailyGoalHour {
		_, prog, err := r.svc.GetDailyGoal(ctx, userID)
		if err == nil && prog != nil && !prog.Completed {
			if r.send(ctx, userID, "daily_goal",
				"🎯 Дневная цель",
				"Чуть-чуть до сегодняшней цели — давай добьём?",
				prog.Date.Format("2006-01-02"),
				false,
			) {
				goalSent = 1
			}
		}
	}

	return streakSent, goalSent
}

// send — обёртка над notif.Send с дедуп-ключом и `data` payload.
func (r *RemindersScheduler) send(ctx context.Context, userID, channel, title, body, datePart string, ignoreQuiet bool) bool {
	data, _ := json.Marshal(map[string]string{"kind": channel, "date": datePart})
	err := r.notif.Send(ctx, notifclient.SendInput{
		UserID:           userID,
		Channel:          channel,
		Title:            title,
		Body:             body,
		Data:             data,
		DedupKey:         channel + ":" + datePart,
		IgnoreQuietHours: ignoreQuiet,
	})
	if err != nil {
		logger.Debug(ctx, "reminder send failed",
			zap.String("user_id", userID),
			zap.String("channel", channel),
			zap.Error(err),
		)
		return false
	}
	return true
}
