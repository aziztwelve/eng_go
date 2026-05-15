package service

import (
	"context"
	"errors"
	"os"
	"testing"
	"time"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/notifications-service/internal/repository"
	"github.com/elearning/notifications-service/internal/sender"
	"github.com/elearning/platform/pkg/logger"
)

// TestMain — инициализируем глобальный logger как nop, иначе LogSender
// при отправке упадёт в nil-pointer.
func TestMain(m *testing.M) {
	logger.InitForBenchmark()
	os.Exit(m.Run())
}

// === fakes ===

type fakeDeviceRepo struct {
	devices []*model.DeviceToken
}

func (f *fakeDeviceRepo) Upsert(_ context.Context, d *model.DeviceToken) (*model.DeviceToken, bool, error) {
	for _, e := range f.devices {
		if e.UserID == d.UserID && e.Platform == d.Platform && e.Token == d.Token {
			e.LastSeenAt = time.Now().UTC()
			e.RevokedAt = nil
			return e, false, nil
		}
	}
	d.LastSeenAt = time.Now().UTC()
	d.CreatedAt = time.Now().UTC()
	if d.ID == "" {
		d.ID = "dev-" + d.UserID + "-" + string(d.Platform) + "-" + d.Token
	}
	f.devices = append(f.devices, d)
	return d, true, nil
}

func (f *fakeDeviceRepo) RevokeByID(_ context.Context, userID, id string) (int32, error) {
	for _, d := range f.devices {
		if d.UserID == userID && d.ID == id && d.RevokedAt == nil {
			now := time.Now().UTC()
			d.RevokedAt = &now
			return 1, nil
		}
	}
	return 0, nil
}

func (f *fakeDeviceRepo) RevokeByToken(_ context.Context, userID string, p model.Platform, token string) (int32, error) {
	for _, d := range f.devices {
		if d.UserID == userID && d.Platform == p && d.Token == token && d.RevokedAt == nil {
			now := time.Now().UTC()
			d.RevokedAt = &now
			return 1, nil
		}
	}
	return 0, nil
}

func (f *fakeDeviceRepo) ListActive(_ context.Context, userID string) ([]*model.DeviceToken, error) {
	var out []*model.DeviceToken
	for _, d := range f.devices {
		if d.UserID == userID && d.IsActive() {
			out = append(out, d)
		}
	}
	return out, nil
}

func (f *fakeDeviceRepo) ListAll(_ context.Context, userID string) ([]*model.DeviceToken, error) {
	var out []*model.DeviceToken
	for _, d := range f.devices {
		if d.UserID == userID {
			out = append(out, d)
		}
	}
	return out, nil
}

type fakePrefsRepo struct {
	prefs map[string]*model.UserPreferences
}

func (f *fakePrefsRepo) Get(_ context.Context, userID string) (*model.UserPreferences, error) {
	p, ok := f.prefs[userID]
	if !ok {
		return nil, repository.ErrNotFound
	}
	return p, nil
}

func (f *fakePrefsRepo) Upsert(_ context.Context, p *model.UserPreferences) (*model.UserPreferences, error) {
	if f.prefs == nil {
		f.prefs = map[string]*model.UserPreferences{}
	}
	p.UpdatedAt = time.Now().UTC()
	f.prefs[p.UserID] = p
	return p, nil
}

type fakeLogRepo struct {
	logs []*model.NotificationLog
}

func (f *fakeLogRepo) Create(_ context.Context, n *model.NotificationLog) error {
	for _, e := range f.logs {
		if e.UserID == n.UserID && e.Channel == n.Channel && e.DedupKey == n.DedupKey {
			return repository.ErrAlreadyExists
		}
	}
	if n.ID == "" {
		n.ID = "log-" + n.UserID + "-" + n.DedupKey
	}
	n.CreatedAt = time.Now().UTC()
	cp := *n
	f.logs = append(f.logs, &cp)
	return nil
}

func (f *fakeLogRepo) FindDedup(_ context.Context, userID string, c model.Channel, dedupKey string, since time.Time) (*model.NotificationLog, error) {
	for _, e := range f.logs {
		if e.UserID == userID && e.Channel == c && e.DedupKey == dedupKey && !e.CreatedAt.Before(since) {
			return e, nil
		}
	}
	return nil, repository.ErrNotFound
}

func (f *fakeLogRepo) UpdateStatus(_ context.Context, id string, st model.SendStatus, errMsg string, attempted, succeeded int32, sentAt *time.Time) error {
	for _, e := range f.logs {
		if e.ID == id {
			e.Status = st
			e.Error = errMsg
			e.DevicesAttempted = attempted
			e.DevicesSucceeded = succeeded
			e.SentAt = sentAt
			return nil
		}
	}
	return repository.ErrNotFound
}

func (f *fakeLogRepo) List(_ context.Context, userID string, readFilter, limit, offset int) ([]*model.NotificationLog, int, int, error) {
	var out []*model.NotificationLog
	unread := 0
	for _, e := range f.logs {
		if e.UserID != userID {
			continue
		}
		if !e.IsRead {
			unread++
		}
		switch readFilter {
		case 0:
			if e.IsRead {
				continue
			}
		case 1:
			if !e.IsRead {
				continue
			}
		}
		out = append(out, e)
	}
	total := len(out)
	if offset >= total {
		return nil, total, unread, nil
	}
	end := offset + limit
	if end > total {
		end = total
	}
	return out[offset:end], total, unread, nil
}

func (f *fakeLogRepo) MarkRead(_ context.Context, userID, notificationID string) (int32, error) {
	var n int32
	for _, e := range f.logs {
		if e.UserID != userID || e.IsRead {
			continue
		}
		if notificationID != "" && e.ID != notificationID {
			continue
		}
		now := time.Now().UTC()
		e.IsRead = true
		e.ReadAt = &now
		n++
	}
	return n, nil
}

// newSvc — собирает Service для тестов.
func newSvc(t *testing.T) (*Service, *fakeDeviceRepo, *fakePrefsRepo, *fakeLogRepo) {
	t.Helper()
	d := &fakeDeviceRepo{}
	p := &fakePrefsRepo{}
	l := &fakeLogRepo{}
	disp := sender.NewDispatcher()
	disp.Register(sender.NewLogSender(model.PlatformWeb))
	disp.Register(sender.NewLogSender(model.PlatformExpo))
	svc := New(d, p, l, disp, false)
	return svc, d, p, l
}

// === Tests ===

func TestSendNotification_HappyPath(t *testing.T) {
	svc, dRepo, _, lRepo := newSvc(t)
	ctx := context.Background()
	now := time.Date(2026, 5, 15, 12, 0, 0, 0, time.UTC) // полдень UTC, не quiet
	svc.SetNow(func() time.Time { return now })

	if _, _, err := svc.RegisterDevice(ctx, &model.DeviceToken{
		UserID: "u1", Platform: model.PlatformExpo, Token: "expo-tok-1",
	}); err != nil {
		t.Fatalf("register: %v", err)
	}

	res, err := svc.SendNotification(ctx, SendInput{
		UserID:  "u1",
		Channel: model.ChannelPracticeReminder,
		Title:   "Time to practice",
		Body:    "5 cards waiting",
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}
	if res.SkippedPref || res.SkippedQuiet || res.SkippedDedup || res.SkippedNoDevices {
		t.Fatalf("unexpected skip flags: %+v", res)
	}
	if res.Log.Status != model.StatusSent {
		t.Errorf("status: got %s, want sent", res.Log.Status)
	}
	if res.Log.DevicesAttempted != 1 || res.Log.DevicesSucceeded != 1 {
		t.Errorf("counters: attempted=%d succeeded=%d", res.Log.DevicesAttempted, res.Log.DevicesSucceeded)
	}
	if len(lRepo.logs) != 1 {
		t.Errorf("logs: %d", len(lRepo.logs))
	}
	if got := dRepo.devices[0].Token; got != "expo-tok-1" {
		t.Errorf("device token: %s", got)
	}
}

func TestSendNotification_DedupSameDay(t *testing.T) {
	svc, _, _, _ := newSvc(t)
	ctx := context.Background()
	now := time.Date(2026, 5, 15, 12, 0, 0, 0, time.UTC)
	svc.SetNow(func() time.Time { return now })

	_, _, _ = svc.RegisterDevice(ctx, &model.DeviceToken{
		UserID: "u1", Platform: model.PlatformExpo, Token: "tok",
	})
	in := SendInput{UserID: "u1", Channel: model.ChannelPracticeReminder, Title: "x"}

	r1, err := svc.SendNotification(ctx, in)
	if err != nil {
		t.Fatalf("send 1: %v", err)
	}
	if r1.SkippedDedup {
		t.Fatalf("first send should not be deduped")
	}

	r2, err := svc.SendNotification(ctx, in)
	if err != nil {
		t.Fatalf("send 2: %v", err)
	}
	if !r2.SkippedDedup {
		t.Fatalf("second send same day should be deduped")
	}
	if r2.Log == nil || r2.Log.ID != r1.Log.ID {
		t.Errorf("dedup should return existing log: %+v vs %+v", r1.Log, r2.Log)
	}
}

func TestSendNotification_PrefsDisabled(t *testing.T) {
	svc, _, pRepo, _ := newSvc(t)
	ctx := context.Background()
	now := time.Date(2026, 5, 15, 12, 0, 0, 0, time.UTC)
	svc.SetNow(func() time.Time { return now })

	_, _, _ = svc.RegisterDevice(ctx, &model.DeviceToken{
		UserID: "u1", Platform: model.PlatformExpo, Token: "tok",
	})
	// Юзер выключил achievement push.
	prefs := model.DefaultPreferences("u1")
	prefs.AchievementEnabled = false
	if _, err := pRepo.Upsert(ctx, prefs); err != nil {
		t.Fatal(err)
	}

	res, err := svc.SendNotification(ctx, SendInput{
		UserID: "u1", Channel: model.ChannelAchievement, Title: "Got it!",
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}
	if !res.SkippedPref {
		t.Fatalf("should be skipped by pref")
	}
	if res.Log.Status != model.StatusSkipped || res.Log.SkippedReason != model.SkippedPref {
		t.Errorf("log status: %+v", res.Log)
	}
}

func TestSendNotification_QuietHours(t *testing.T) {
	svc, _, pRepo, _ := newSvc(t)
	ctx := context.Background()
	// 23:00 UTC = 02:00 Asia/Almaty (UTC+3 winter? actually +5/+6).
	// Простой кейс: установим TZ = UTC и quiet 22..8, шлём в 23:00.
	now := time.Date(2026, 5, 15, 23, 0, 0, 0, time.UTC)
	svc.SetNow(func() time.Time { return now })

	_, _, _ = svc.RegisterDevice(ctx, &model.DeviceToken{
		UserID: "u1", Platform: model.PlatformExpo, Token: "tok",
	})
	prefs := model.DefaultPreferences("u1")
	prefs.Timezone = "UTC"
	if _, err := pRepo.Upsert(ctx, prefs); err != nil {
		t.Fatal(err)
	}

	// 1) В quiet hours — должен пропуститься.
	res, err := svc.SendNotification(ctx, SendInput{
		UserID: "u1", Channel: model.ChannelPracticeReminder, Title: "x",
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}
	if !res.SkippedQuiet {
		t.Fatalf("should be skipped by quiet hours, got %+v", res)
	}

	// 2) С ignore_quiet_hours — отправится.
	res2, err := svc.SendNotification(ctx, SendInput{
		UserID: "u1", Channel: model.ChannelPracticeReminder, Title: "x2",
		IgnoreQuietHours: true,
	})
	if err != nil {
		t.Fatalf("send 2: %v", err)
	}
	if res2.SkippedQuiet || res2.SkippedPref {
		t.Fatalf("ignore_quiet_hours should bypass: %+v", res2)
	}
}

func TestSendNotification_NoDevices(t *testing.T) {
	svc, _, _, _ := newSvc(t)
	ctx := context.Background()
	svc.SetNow(func() time.Time { return time.Date(2026, 5, 15, 12, 0, 0, 0, time.UTC) })

	res, err := svc.SendNotification(ctx, SendInput{
		UserID: "u-no-devices", Channel: model.ChannelStreakRisk, Title: "x",
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}
	if !res.SkippedNoDevices {
		t.Fatalf("should be skipped due to no devices, got %+v", res)
	}
}

func TestRegisterDevice_Validation(t *testing.T) {
	svc, _, _, _ := newSvc(t)
	ctx := context.Background()

	cases := []struct {
		name string
		in   *model.DeviceToken
		ok   bool
	}{
		{"missing user", &model.DeviceToken{Platform: model.PlatformExpo, Token: "t"}, false},
		{"missing token", &model.DeviceToken{UserID: "u", Platform: model.PlatformExpo}, false},
		{"bad platform", &model.DeviceToken{UserID: "u", Platform: "skype", Token: "t"}, false},
		{"web missing keys", &model.DeviceToken{UserID: "u", Platform: model.PlatformWeb, Token: "t"}, false},
		{"web ok", &model.DeviceToken{UserID: "u", Platform: model.PlatformWeb, Token: "t", Endpoint: "e", P256DH: "p", Auth: "a"}, true},
		{"expo ok", &model.DeviceToken{UserID: "u", Platform: model.PlatformExpo, Token: "ExponentPushToken[xxx]"}, true},
	}
	for _, c := range cases {
		_, _, err := svc.RegisterDevice(ctx, c.in)
		gotOK := err == nil
		if gotOK != c.ok {
			t.Errorf("%s: ok=%v err=%v", c.name, gotOK, err)
		}
		if !c.ok && err != nil && !errors.Is(err, ErrInvalidArgument) {
			t.Errorf("%s: expected ErrInvalidArgument, got %v", c.name, err)
		}
	}
}

func TestPrefsQuietHoursWindow(t *testing.T) {
	p := model.DefaultPreferences("u")
	p.QuietHoursStart = 22
	p.QuietHoursEnd = 8

	cases := []struct {
		hour int
		want bool
	}{
		{22, true},
		{23, true},
		{0, true},
		{7, true},
		{8, false},
		{12, false},
		{21, false},
	}
	for _, c := range cases {
		if got := p.IsInQuietHours(c.hour); got != c.want {
			t.Errorf("hour %d: got %v, want %v", c.hour, got, c.want)
		}
	}

	// Окно отключено (start == end).
	p.QuietHoursStart = 0
	p.QuietHoursEnd = 0
	for h := 0; h < 24; h++ {
		if p.IsInQuietHours(h) {
			t.Errorf("disabled window should never be quiet, h=%d", h)
		}
	}

	// Дневное окно (start < end), напр обед 13..14.
	p.QuietHoursStart = 13
	p.QuietHoursEnd = 14
	if !p.IsInQuietHours(13) || p.IsInQuietHours(14) || p.IsInQuietHours(12) {
		t.Errorf("day window failed")
	}
}
