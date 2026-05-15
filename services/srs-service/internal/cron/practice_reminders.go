// practice_reminders.go — почасовой триггер для push'а practice_reminder.
//
// Стратегия: каждый час (UTC) пробегаем DISTINCT user_id с due items
// пагинацией. Для каждого:
//   1. Загружаем timezone (user-client с TTL-кэшем).
//   2. UTC → локальный hour. Если != reminder_hour → skip.
//   3. Берём Stats(user, now, local_today_start).
//   4. Если DueNow > 0 И ReviewedToday == 0 → notif.Send(practice_reminder,
//      dedup="practice_reminder:YYYY-MM-DD").
//
// Дедуп — на стороне notifications-service по ключу, так что повторные
// тики безопасны. Любые ошибки notif/user — non-fatal, только лог.
package cron

import (
	"context"
	"encoding/json"
	"sync"
	"time"

	"go.uber.org/zap"

	notifclient "github.com/elearning/srs-service/internal/client/notifications"
	userclient "github.com/elearning/srs-service/internal/client/user"
	"github.com/elearning/srs-service/internal/repository"
	"github.com/elearning/platform/pkg/logger"
)

// RemindersConfig — настройки practice_reminder cron'а.
type RemindersConfig struct {
	// Local hour (0..23) когда шлём напоминание. Default 19.
	ReminderHour int
	// Размер пакета per-tick (пагинация по user_id).
	BatchSize int
}

// DefaultReminders — sane defaults.
var DefaultReminders = RemindersConfig{
	ReminderHour: 19,
	BatchSize:    500,
}

// RemindersScheduler — отдельный планировщик для practice_reminder.
type RemindersScheduler struct {
	items repository.SRSItemRepository
	user  userclient.Client
	notif notifclient.Client
	cfg   RemindersConfig

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

// NewRemindersScheduler — конструктор. notif/user могут быть nil
// (тогда фолбэк на noop — удобно в dev / тестах).
func NewRemindersScheduler(
	items repository.SRSItemRepository,
	user userclient.Client,
	notif notifclient.Client,
	cfg RemindersConfig,
) *RemindersScheduler {
	if cfg.BatchSize <= 0 {
		cfg.BatchSize = DefaultReminders.BatchSize
	}
	if cfg.ReminderHour < 0 || cfg.ReminderHour > 23 {
		cfg.ReminderHour = DefaultReminders.ReminderHour
	}
	if notif == nil {
		notif = notifclient.NewNoop()
	}
	if user == nil {
		user = userclient.NewNoopClient()
	}
	return &RemindersScheduler{
		items: items, user: user, notif: notif, cfg: cfg,
	}
}

// Start — запускает hourly tick.
func (r *RemindersScheduler) Start(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	r.cancel = cancel
	r.wg.Add(1)
	go r.loop(ctx)
	logger.Info(ctx, "⏰ srs practice_reminder cron started",
		zap.Int("reminder_hour", r.cfg.ReminderHour),
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
	sent := 0
	scanned := 0
	for {
		ids, err := r.items.ListUserIDsWithDue(ctx, ranAt, r.cfg.BatchSize, offset)
		if err != nil {
			logger.Warn(ctx, "list users with due", zap.Error(err))
			return
		}
		if len(ids) == 0 {
			break
		}
		for _, uid := range ids {
			scanned++
			if r.maybeRemind(ctx, uid, ranAt) {
				sent++
			}
		}
		if len(ids) < r.cfg.BatchSize {
			break
		}
		offset += r.cfg.BatchSize
	}
	logger.Debug(ctx, "practice_reminder tick done",
		zap.Time("ran_at", ranAt),
		zap.Int("scanned", scanned),
		zap.Int("sent", sent),
	)
}

// maybeRemind — для одного юзера проверяет local hour + due/reviewed_today
// и шлёт push. Возвращает true, если отправлен.
func (r *RemindersScheduler) maybeRemind(ctx context.Context, userID string, ranAtUTC time.Time) bool {
	loc := r.userLocation(ctx, userID)
	local := ranAtUTC.In(loc)
	if local.Hour() != r.cfg.ReminderHour {
		return false
	}

	todayLocal := time.Date(local.Year(), local.Month(), local.Day(), 0, 0, 0, 0, loc)
	stats, err := r.items.Stats(ctx, userID, ranAtUTC, todayLocal)
	if err != nil {
		logger.Debug(ctx, "stats for reminder failed",
			zap.String("user_id", userID), zap.Error(err))
		return false
	}
	if stats.DueNow <= 0 || stats.ReviewedToday > 0 {
		return false
	}

	data, _ := json.Marshal(map[string]string{
		"kind": "practice_reminder",
		"date": todayLocal.Format("2006-01-02"),
	})
	err = r.notif.Send(ctx, notifclient.SendInput{
		UserID:   userID,
		Channel:  "practice_reminder",
		Title:    "📚 Время повторить",
		Body:     "Карточки уже ждут — пара минут и progress в кармане.",
		Data:     data,
		DedupKey: "practice_reminder:" + todayLocal.Format("2006-01-02"),
	})
	if err != nil {
		logger.Debug(ctx, "practice_reminder send failed",
			zap.String("user_id", userID), zap.Error(err))
		return false
	}
	return true
}

// userLocation — IANA tz пользователя, либо UTC при любой проблеме.
func (r *RemindersScheduler) userLocation(ctx context.Context, userID string) *time.Location {
	tz, err := r.user.Timezone(ctx, userID)
	if err != nil || tz == "" {
		return time.UTC
	}
	loc, err := time.LoadLocation(tz)
	if err != nil {
		return time.UTC
	}
	return loc
}
