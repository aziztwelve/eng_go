// Package service — оркестратор notifications-service.
package service

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"time"

	"go.uber.org/zap"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/notifications-service/internal/repository"
	"github.com/elearning/notifications-service/internal/sender"
	"github.com/elearning/platform/pkg/logger"
)

// Sentinel ошибки (мапятся в gRPC коды в API слое).
var (
	ErrInvalidArgument = errors.New("invalid argument")
	ErrUserNotFound    = errors.New("user not found")
)

// Service — top-level фасад.
type Service struct {
	devices    repository.DeviceTokenRepository
	prefs      repository.PreferencesRepository
	logs       repository.NotificationLogRepository
	dispatcher *sender.Dispatcher
	dryRun     bool

	// now — инжектируемая «текущее время». Для тестов.
	now func() time.Time
}

// New — конструктор.
func New(
	devices repository.DeviceTokenRepository,
	prefs repository.PreferencesRepository,
	logs repository.NotificationLogRepository,
	dispatcher *sender.Dispatcher,
	dryRun bool,
) *Service {
	return &Service{
		devices:    devices,
		prefs:      prefs,
		logs:       logs,
		dispatcher: dispatcher,
		dryRun:     dryRun,
		now:        time.Now,
	}
}

// SetNow — для тестов, замораживает clock.
func (s *Service) SetNow(now func() time.Time) { s.now = now }

// === Devices ===

// RegisterDevice — идемпотентная регистрация устройства.
func (s *Service) RegisterDevice(ctx context.Context, in *model.DeviceToken) (*model.DeviceToken, bool, error) {
	if in.UserID == "" || !in.Platform.IsValid() || in.Token == "" {
		return nil, false, fmt.Errorf("%w: user_id, platform and token are required", ErrInvalidArgument)
	}
	if in.Platform == model.PlatformWeb {
		if in.Endpoint == "" || in.P256DH == "" || in.Auth == "" {
			return nil, false, fmt.Errorf("%w: web push requires endpoint+p256dh+auth", ErrInvalidArgument)
		}
	}
	return s.devices.Upsert(ctx, in)
}

// UnregisterDevice — отзыв по deviceID или (platform, token).
func (s *Service) UnregisterDevice(ctx context.Context, userID, deviceID string, platform model.Platform, token string) (int32, error) {
	if userID == "" {
		return 0, fmt.Errorf("%w: user_id is required", ErrInvalidArgument)
	}
	if deviceID != "" {
		return s.devices.RevokeByID(ctx, userID, deviceID)
	}
	if !platform.IsValid() || token == "" {
		return 0, fmt.Errorf("%w: device_id or (platform+token) required", ErrInvalidArgument)
	}
	return s.devices.RevokeByToken(ctx, userID, platform, token)
}

// ListDevices — все устройства юзера.
func (s *Service) ListDevices(ctx context.Context, userID string, includeRevoked bool) ([]*model.DeviceToken, error) {
	if userID == "" {
		return nil, fmt.Errorf("%w: user_id is required", ErrInvalidArgument)
	}
	if includeRevoked {
		return s.devices.ListAll(ctx, userID)
	}
	return s.devices.ListActive(ctx, userID)
}

// === Preferences ===

// GetPreferences — текущие prefs или дефолтные если записи ещё нет.
// Возвращает (prefs, defaultsUsed).
func (s *Service) GetPreferences(ctx context.Context, userID string) (*model.UserPreferences, bool, error) {
	if userID == "" {
		return nil, false, fmt.Errorf("%w: user_id is required", ErrInvalidArgument)
	}
	p, err := s.prefs.Get(ctx, userID)
	if errors.Is(err, repository.ErrNotFound) {
		return model.DefaultPreferences(userID), true, nil
	}
	if err != nil {
		return nil, false, err
	}
	return p, false, nil
}

// UpdatePreferences — PUT-семантика.
func (s *Service) UpdatePreferences(ctx context.Context, p *model.UserPreferences) (*model.UserPreferences, error) {
	if p == nil || p.UserID == "" {
		return nil, fmt.Errorf("%w: user_id is required", ErrInvalidArgument)
	}
	if p.QuietHoursStart < 0 || p.QuietHoursStart > 23 ||
		p.QuietHoursEnd < 0 || p.QuietHoursEnd > 23 {
		return nil, fmt.Errorf("%w: quiet_hours must be in 0..23", ErrInvalidArgument)
	}
	return s.prefs.Upsert(ctx, p)
}

// === Send ===

// SendResult — что вернулось в SendNotification ответе.
type SendResult struct {
	Log              *model.NotificationLog
	SkippedPref      bool
	SkippedQuiet     bool
	SkippedDedup     bool
	SkippedNoDevices bool
}

// SendInput — параметры отправки (без proto-зависимости).
type SendInput struct {
	UserID  string
	Channel model.Channel

	Title string
	Body  string
	Data  json.RawMessage

	DedupKey         string
	DedupWindowSec   int32
	ScheduledAt      *time.Time
	IgnoreQuietHours bool
	IgnorePrefs      bool
}

// SendNotification — основной API для доменных сервисов.
func (s *Service) SendNotification(ctx context.Context, in SendInput) (*SendResult, error) {
	if in.UserID == "" || !in.Channel.IsValid() || in.Title == "" {
		return nil, fmt.Errorf("%w: user_id, channel, title required", ErrInvalidArgument)
	}
	now := s.now().UTC()

	// 1. Prefs check.
	prefs, _, err := s.GetPreferences(ctx, in.UserID)
	if err != nil {
		return nil, fmt.Errorf("get prefs: %w", err)
	}
	if !in.IgnorePrefs && !prefs.IsChannelEnabled(in.Channel) {
		return s.recordSkipped(ctx, in, now, model.SkippedPref)
	}

	// 2. Quiet hours check.
	if !in.IgnoreQuietHours && isInQuietHours(prefs, now) {
		return s.recordSkipped(ctx, in, now, model.SkippedQuietHours)
	}

	// 3. Dedup.
	dedupKey := in.DedupKey
	if dedupKey == "" {
		dedupKey = defaultDedupKey(in.Channel, now)
	}
	windowSec := in.DedupWindowSec
	if windowSec <= 0 {
		windowSec = 24 * 3600
	}
	since := now.Add(-time.Duration(windowSec) * time.Second)
	if existing, err := s.logs.FindDedup(ctx, in.UserID, in.Channel, dedupKey, since); err == nil {
		// Запись уже есть в окне — это идемпотентный «skip dedup».
		return &SendResult{Log: existing, SkippedDedup: true}, nil
	} else if !errors.Is(err, repository.ErrNotFound) {
		return nil, fmt.Errorf("find dedup: %w", err)
	}

	// 4. Найти активные устройства.
	devices, err := s.devices.ListActive(ctx, in.UserID)
	if err != nil {
		return nil, fmt.Errorf("list devices: %w", err)
	}
	if len(devices) == 0 {
		return s.recordSkipped(ctx, in, now, model.SkippedNoDevices)
	}

	// 5. Создать log-запись со статусом queued.
	logRec := &model.NotificationLog{
		UserID:           in.UserID,
		Channel:          in.Channel,
		Kind:             string(in.Channel),
		Title:            in.Title,
		Body:             in.Body,
		Data:             in.Data,
		DedupKey:         dedupKey,
		Status:           model.StatusQueued,
		DevicesAttempted: int32(len(devices)),
		ScheduledAt:      in.ScheduledAt,
	}
	if err := s.logs.Create(ctx, logRec); err != nil {
		if errors.Is(err, repository.ErrAlreadyExists) {
			// Race condition с другим инстансом — ок.
			existing, ferr := s.logs.FindDedup(ctx, in.UserID, in.Channel, dedupKey, since)
			if ferr == nil {
				return &SendResult{Log: existing, SkippedDedup: true}, nil
			}
		}
		return nil, fmt.Errorf("create log: %w", err)
	}

	// 6. Доставка. На MVP — синхронно. Потом можно вынести в worker
	// pool, но сначала важна корректность.
	if s.dryRun {
		// В dry-run считаем доставку успешной (status=sent), фактически ничего не шлём.
		sent := now
		_ = s.logs.UpdateStatus(ctx, logRec.ID, model.StatusSent, "", logRec.DevicesAttempted, logRec.DevicesAttempted, &sent)
		logRec.Status = model.StatusSent
		logRec.DevicesSucceeded = logRec.DevicesAttempted
		logRec.SentAt = &sent
		return &SendResult{Log: logRec}, nil
	}

	outcomes := s.dispatcher.SendAll(ctx, devices, sender.Message{
		Title: in.Title,
		Body:  in.Body,
		Data:  in.Data,
	})

	var succeeded int32
	var lastErr string
	for i, o := range outcomes {
		if o.OK {
			succeeded++
			continue
		}
		lastErr = o.Error
		// Soft revoke если push-провайдер сказал «токен мёртв».
		if o.ShouldRevoke {
			if _, err := s.devices.RevokeByID(ctx, in.UserID, devices[i].ID); err != nil {
				logger.Warn(ctx, "device revoke failed", zap.String("device_id", devices[i].ID), zap.Error(err))
			}
		}
	}

	status := model.StatusSent
	if succeeded == 0 {
		status = model.StatusFailed
	}
	sentAt := now
	if err := s.logs.UpdateStatus(ctx, logRec.ID, status, lastErr, logRec.DevicesAttempted, succeeded, &sentAt); err != nil {
		return nil, fmt.Errorf("update status: %w", err)
	}
	logRec.Status = status
	logRec.DevicesSucceeded = succeeded
	logRec.Error = lastErr
	logRec.SentAt = &sentAt
	return &SendResult{Log: logRec}, nil
}

// recordSkipped — пишет SKIPPED-запись в лог и возвращает SendResult с нужными флагами.
func (s *Service) recordSkipped(ctx context.Context, in SendInput, now time.Time, reason model.SkippedReason) (*SendResult, error) {
	dedupKey := in.DedupKey
	if dedupKey == "" {
		dedupKey = defaultDedupKey(in.Channel, now)
	}
	logRec := &model.NotificationLog{
		UserID:        in.UserID,
		Channel:       in.Channel,
		Kind:          string(in.Channel),
		Title:         in.Title,
		Body:          in.Body,
		Data:          in.Data,
		DedupKey:      dedupKey + ":skip:" + string(reason), // другой ключ → не блокирует будущие отправки
		Status:        model.StatusSkipped,
		SkippedReason: reason,
		ScheduledAt:   in.ScheduledAt,
	}
	if err := s.logs.Create(ctx, logRec); err != nil && !errors.Is(err, repository.ErrAlreadyExists) {
		return nil, fmt.Errorf("create log: %w", err)
	}
	return &SendResult{
		Log:              logRec,
		SkippedPref:      reason == model.SkippedPref,
		SkippedQuiet:     reason == model.SkippedQuietHours,
		SkippedNoDevices: reason == model.SkippedNoDevices,
	}, nil
}

// defaultDedupKey — слот по календарной дате в UTC. Большинство наших
// напоминаний — daily-cap (один пуш «time to practice» в день максимум).
func defaultDedupKey(c model.Channel, now time.Time) string {
	return string(c) + ":" + now.Format("2006-01-02")
}

// isInQuietHours — переводит now в TZ юзера и проверяет окно.
// Если TZ невалидный или пустой — считаем что окно не действует
// (UTC + дефолтный 22-08 — это уже не локальное время юзера).
func isInQuietHours(p *model.UserPreferences, now time.Time) bool {
	if p.QuietHoursStart == p.QuietHoursEnd {
		return false
	}
	tz := p.Timezone
	if tz == "" {
		// Без TZ нельзя честно посчитать локальный час — лучше не
		// блокировать отправку, чтобы не молчать.
		return false
	}
	loc, err := time.LoadLocation(tz)
	if err != nil {
		return false
	}
	hour := now.In(loc).Hour()
	return p.IsInQuietHours(hour)
}

// === Inbox ===

// ListNotifications — лента.
func (s *Service) ListNotifications(ctx context.Context, userID string, readFilter int, limit, offset int) ([]*model.NotificationLog, int, int, error) {
	if userID == "" {
		return nil, 0, 0, fmt.Errorf("%w: user_id is required", ErrInvalidArgument)
	}
	return s.logs.List(ctx, userID, readFilter, limit, offset)
}

// MarkRead — пометить прочитанным.
func (s *Service) MarkRead(ctx context.Context, userID, notificationID string) (int32, error) {
	if userID == "" {
		return 0, fmt.Errorf("%w: user_id is required", ErrInvalidArgument)
	}
	return s.logs.MarkRead(ctx, userID, notificationID)
}
