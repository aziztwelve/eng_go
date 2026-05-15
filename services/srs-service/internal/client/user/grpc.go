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

// profileCacheTTL — короткий TTL, чтобы изменение timezone в профиле
// быстро отразилось в работе cron'а, но при этом не дёргать user-service
// на каждый тик.
const profileCacheTTL = 5 * time.Minute

type tzSnapshot struct {
	tz      string
	expires time.Time
}

type grpcClient struct {
	conn   *grpc.ClientConn
	client userv1.UserServiceClient

	mu    sync.Mutex
	cache map[string]tzSnapshot
}

// NewGRPCClient устанавливает соединение и возвращает Client + closer.
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
		conn:   conn,
		client: userv1.NewUserServiceClient(conn),
		cache:  map[string]tzSnapshot{},
	}, conn.Close, nil
}

func (c *grpcClient) Timezone(ctx context.Context, userID string) (string, error) {
	c.mu.Lock()
	if cached, ok := c.cache[userID]; ok && time.Now().Before(cached.expires) {
		c.mu.Unlock()
		return cached.tz, nil
	}
	c.mu.Unlock()

	resp, err := c.client.GetProfile(ctx, &userv1.GetProfileRequest{UserId: userID})
	if err != nil {
		logger.Debug(ctx, "user.GetProfile failed; treating as UTC",
			zap.String("user_id", userID), zap.Error(err))
		// Закешируем пустой ответ, чтобы не штормить user-service при
		// его недоступности.
		c.mu.Lock()
		c.cache[userID] = tzSnapshot{expires: time.Now().Add(profileCacheTTL)}
		c.mu.Unlock()
		return "", nil
	}
	tz := strings.TrimSpace(resp.GetProfile().GetTimezone().GetValue())
	c.mu.Lock()
	c.cache[userID] = tzSnapshot{tz: tz, expires: time.Now().Add(profileCacheTTL)}
	c.mu.Unlock()
	return tz, nil
}
