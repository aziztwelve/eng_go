// Package service содержит бизнес-логику gamification-service.
// Здесь один Service, который объединяет все подсистемы (stats, xp, hearts,
// streak, achievements, daily-goal). Подсистемы тесно связаны (например,
// AddXP должен апдейтить stats, прогресс daily-goal и проверять achievements),
// поэтому держим их вместе.
package service

import (
	"context"
	"time"

	notifclient "github.com/elearning/gamification-service/internal/client/notifications"
	userclient "github.com/elearning/gamification-service/internal/client/user"
	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/publisher"
	"github.com/elearning/gamification-service/internal/repository"
)

// Service — корневой бизнес-сервис gamification.
type Service struct {
	cfg       Config
	stats     repository.StatsRepository
	xp        repository.XPRepository
	dailyGoal repository.DailyGoalRepository
	streak    repository.StreakRepository
	ach       repository.AchievementRepository
	// user — клиент к user-service для achievement-критериев, которым нужны
	// профильные данные (date_of_birth для `birthday`). Не должен быть nil:
	// передавайте `userclient.NewNoopClient()`, если интеграция не нужна.
	user userclient.Client

	// xpPub — Phase 4: publisher событий xp.gained в Kafka. Не должен быть nil
	// — передавайте `publisher.NoopPublisher{}`, если Kafka не используется.
	xpPub publisher.XPPublisher

	// notif — клиент к notifications-service. Не nil: noopClient если адрес
	// не задан. Используется для achievement-пушей и cron-планировщиков.
	notif notifclient.Client

	// now позволяет инжектить часы в тестах.
	now func() time.Time
}

// Config — бизнес-настройки, прокинутые из app/config.
type Config struct {
	MaxHearts          int
	HeartRegenInterval time.Duration
	DefaultDailyXP     int
	StreakFreezeMax    int
}

// New собирает Service.
func New(
	cfg Config,
	stats repository.StatsRepository,
	xp repository.XPRepository,
	dailyGoal repository.DailyGoalRepository,
	streak repository.StreakRepository,
	ach repository.AchievementRepository,
	user userclient.Client,
) *Service {
	if cfg.MaxHearts <= 0 {
		cfg.MaxHearts = 5
	}
	if cfg.HeartRegenInterval <= 0 {
		cfg.HeartRegenInterval = 30 * time.Minute
	}
	if cfg.DefaultDailyXP <= 0 {
		cfg.DefaultDailyXP = 20
	}
	if cfg.StreakFreezeMax <= 0 {
		cfg.StreakFreezeMax = 2
	}
	if user == nil {
		user = userclient.NewNoopClient()
	}
	return &Service{
		cfg:       cfg,
		stats:     stats,
		xp:        xp,
		dailyGoal: dailyGoal,
		streak:    streak,
		ach:       ach,
		user:      user,
		xpPub:     publisher.NoopPublisher{},
		notif:     notifclient.NewNoop(),
		now:       func() time.Time { return time.Now().UTC() },
	}
}

// WithNotifications переопределяет notifications-клиент. По умолчанию
// noop; вызывайте этот сеттер из app, если NOTIFICATIONS_ADDR задан.
func (s *Service) WithNotifications(n notifclient.Client) *Service {
	if n == nil {
		n = notifclient.NewNoop()
	}
	s.notif = n
	return s
}

// WithXPPublisher переопределяет publisher событий xp.gained.
// По умолчанию используется NoopPublisher; вызывайте этот сеттер из app
// при наличии Kafka brokers.
func (s *Service) WithXPPublisher(p publisher.XPPublisher) *Service {
	if p == nil {
		p = publisher.NoopPublisher{}
	}
	s.xpPub = p
	return s
}

// WithClock переопределяет источник времени (для тестов).
func (s *Service) WithClock(now func() time.Time) *Service {
	s.now = now
	return s
}

// ensureStats возвращает (или создает) запись user_stats.
func (s *Service) ensureStats(ctx context.Context, userID string) (*model.UserStats, error) {
	return s.stats.GetOrCreate(ctx, userID, s.cfg.MaxHearts)
}

// today возвращает дату (00:00 UTC).
//
// Deprecated: используется только для процессов, не привязанных к
// календарной дате конкретного пользователя (cron'ы, ResetWeeklyXP, …).
// Для streak/daily-goal/achievement-критериев используй `todayInTZ`.
func (s *Service) today() time.Time {
	t := s.now()
	return time.Date(t.Year(), t.Month(), t.Day(), 0, 0, 0, 0, time.UTC)
}

// UserLocation возвращает *time.Location для пользователя на основе
// profile.timezone. Если профиль / зона пуст(а) либо имя зоны невалидно,
// возвращается time.UTC. Ошибка user-client'а трактуется как "UTC".
//
// Кэш профиля живет внутри grpcClient (см. profileCacheTTL), поэтому
// частые вызовы за step-completion стоят O(1) после прогрева.
//
// Экспортирован, чтобы cron-планировщики могли использовать ту же
// логику бакетирования по timezone.
func (s *Service) UserLocation(ctx context.Context, userID string) *time.Location {
	tz, err := s.user.Timezone(ctx, userID)
	if err != nil || tz == "" {
		return time.UTC
	}
	loc, err := time.LoadLocation(tz)
	if err != nil {
		return time.UTC
	}
	return loc
}

// nowInTZ возвращает s.now(), сконвертированное в зону пользователя.
// Используется для time_of_day / date / birthday — критериев, чувствительных
// к календарю.
func (s *Service) nowInTZ(ctx context.Context, userID string) time.Time {
	return s.now().In(s.UserLocation(ctx, userID))
}

// UserReminderSlot возвращает онбординговое окно напоминаний пользователя:
// "morning" | "day" | "evening" | "flex". Пустая строка — слот не задан
// (caller использует default-окно из RemindersConfig).
//
// Ошибка user-client'а гасится → "" (значение неизвестно).
func (s *Service) UserReminderSlot(ctx context.Context, userID string) string {
	slot, err := s.user.ReminderSlot(ctx, userID)
	if err != nil {
		return ""
	}
	return slot
}

// todayInTZ — 00:00 текущего дня в локальной зоне пользователя.
// Используется как ключ в streak/daily-goal таблицах, чтобы границы дня
// совпадали с тем, что видит пользователь в UI.
//
// Запись в БД хранится как date (без зоны), но смысл — "локальный день в
// зоне юзера на момент записи". Это компромисс: если пользователь переедет
// в другую зону и сместится граница дня, на стыке возможна потеря streak'а
// или дубль daily-goal на ±1 день. В рамках MVP считаем допустимым.
func (s *Service) todayInTZ(ctx context.Context, userID string) time.Time {
	t := s.nowInTZ(ctx, userID)
	return time.Date(t.Year(), t.Month(), t.Day(), 0, 0, 0, 0, t.Location())
}
