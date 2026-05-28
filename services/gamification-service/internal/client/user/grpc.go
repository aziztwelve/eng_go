package user

import (
	"context"
	"fmt"
	"strings"
	"sync"
	"time"

	"go.uber.org/zap"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	"github.com/elearning/platform/pkg/logger"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

// profileCacheTTL — на сколько мы кешируем выжимку из user.Profile.
// За один step-completion вызовы могут идти десяток раз (UpdateStreak,
// bumpDailyGoal, matchCriteria — каждый дергает Timezone). TTL короткий,
// чтобы изменение профиля пользователем стало видимым в пределах минут.
const profileCacheTTL = 5 * time.Minute

type profileSnapshot struct {
	dobMMDD  string
	timezone string
	expires  time.Time
}

type onboardingSnapshot struct {
	reminderSlot string
	expires      time.Time
}

type grpcClient struct {
	conn   *grpc.ClientConn
	client userv1.UserServiceClient

	mu      sync.Mutex
	cache   map[string]profileSnapshot
	onbCache map[string]onboardingSnapshot
}

// NewGRPCClient устанавливает соединение и возвращает Client. Закрытие
// соединения регистрируется приложением (вернем closer).
func NewGRPCClient(ctx context.Context, addr string) (Client, func() error, error) {
	dialCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()
	conn, err := grpc.DialContext(
		dialCtx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, nil, fmt.Errorf("dial user %s: %w", addr, err)
	}
	return &grpcClient{
		conn:     conn,
		client:   userv1.NewUserServiceClient(conn),
		cache:    map[string]profileSnapshot{},
		onbCache: map[string]onboardingSnapshot{},
	}, conn.Close, nil
}

// getSnapshot возвращает выжимку из user.Profile (dob/timezone). Ошибки
// сетевого слоя гасятся (Debug-лог) — вызывающий код получит пустые поля и
// должен трактовать их как "значение неизвестно".
func (c *grpcClient) getSnapshot(ctx context.Context, userID string) profileSnapshot {
	c.mu.Lock()
	if cached, ok := c.cache[userID]; ok && time.Now().Before(cached.expires) {
		c.mu.Unlock()
		return cached
	}
	c.mu.Unlock()

	resp, err := c.client.GetProfile(ctx, &userv1.GetProfileRequest{UserId: userID})
	if err != nil {
		logger.Debug(ctx, "user.GetProfile failed (will fall back to defaults)",
			zap.String("user_id", userID), zap.Error(err))
		// Закешируем пустой ответ — иначе при недоступности user-service
		// каждый matchCriteria начнет ронять gRPC. TTL тот же.
		empty := profileSnapshot{expires: time.Now().Add(profileCacheTTL)}
		c.mu.Lock()
		c.cache[userID] = empty
		c.mu.Unlock()
		return empty
	}
	snap := profileSnapshot{
		dobMMDD:  toMMDD(resp.GetProfile().GetDateOfBirth().GetValue()),
		timezone: strings.TrimSpace(resp.GetProfile().GetTimezone().GetValue()),
		expires:  time.Now().Add(profileCacheTTL),
	}
	c.mu.Lock()
	c.cache[userID] = snap
	c.mu.Unlock()
	return snap
}

func (c *grpcClient) DateOfBirthMMDD(ctx context.Context, userID string) (string, error) {
	return c.getSnapshot(ctx, userID).dobMMDD, nil
}

func (c *grpcClient) Timezone(ctx context.Context, userID string) (string, error) {
	return c.getSnapshot(ctx, userID).timezone, nil
}

// getOnboardingSnapshot возвращает выжимку из OnboardingState (только
// `reminder_slot`). TTL и trade-off'ы аналогичны profileCacheTTL.
func (c *grpcClient) getOnboardingSnapshot(ctx context.Context, userID string) onboardingSnapshot {
	c.mu.Lock()
	if cached, ok := c.onbCache[userID]; ok && time.Now().Before(cached.expires) {
		c.mu.Unlock()
		return cached
	}
	c.mu.Unlock()

	resp, err := c.client.GetOnboardingState(ctx, &userv1.GetOnboardingStateRequest{UserId: userID})
	if err != nil {
		logger.Debug(ctx, "user.GetOnboardingState failed (will fall back to defaults)",
			zap.String("user_id", userID), zap.Error(err))
		empty := onboardingSnapshot{expires: time.Now().Add(profileCacheTTL)}
		c.mu.Lock()
		c.onbCache[userID] = empty
		c.mu.Unlock()
		return empty
	}
	snap := onboardingSnapshot{
		reminderSlot: strings.TrimSpace(resp.GetState().GetReminderSlot().GetValue()),
		expires:      time.Now().Add(profileCacheTTL),
	}
	c.mu.Lock()
	c.onbCache[userID] = snap
	c.mu.Unlock()
	return snap
}

func (c *grpcClient) ReminderSlot(ctx context.Context, userID string) (string, error) {
	return c.getOnboardingSnapshot(ctx, userID).reminderSlot, nil
}

// toMMDD нормализует разные распространенные форматы даты в "MM-DD".
// Поддерживает: "YYYY-MM-DD", "MM-DD", "DD.MM.YYYY", "DD.MM". Пустая строка
// или невалидный формат → "".
func toMMDD(dob string) string {
	dob = strings.TrimSpace(dob)
	if dob == "" {
		return ""
	}
	// YYYY-MM-DD или MM-DD
	if strings.Contains(dob, "-") {
		parts := strings.Split(dob, "-")
		switch len(parts) {
		case 3:
			return fmt.Sprintf("%02s-%02s", parts[1], parts[2])
		case 2:
			return fmt.Sprintf("%02s-%02s", parts[0], parts[1])
		}
	}
	// DD.MM.YYYY или DD.MM
	if strings.Contains(dob, ".") {
		parts := strings.Split(dob, ".")
		if len(parts) >= 2 {
			return fmt.Sprintf("%02s-%02s", parts[1], parts[0])
		}
	}
	return ""
}
