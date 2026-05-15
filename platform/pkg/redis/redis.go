// Package redis предоставляет тонкую обёртку над go-redis для микросервисов.
package redis

import (
	"context"
	"fmt"
	"time"

	"github.com/redis/go-redis/v9"
)

const (
	defaultPingTimeout = 3 * time.Second
)

// Config — настройки подключения к Redis.
type Config struct {
	// Addr — host:port, например "localhost:6379".
	Addr string
	// DB — номер логической БД (0 по умолчанию).
	DB int
	// Password — опционально.
	Password string
	// PoolSize — максимум коннекций. 0 = default (10 на CPU).
	PoolSize int
}

// NewClient создаёт и проверяет (Ping) клиента Redis.
// Если cfg.Addr пуст — возвращает (nil, nil): сервис может работать без Redis.
func NewClient(ctx context.Context, cfg Config) (*redis.Client, error) {
	if cfg.Addr == "" {
		return nil, nil
	}

	opts := &redis.Options{
		Addr:     cfg.Addr,
		DB:       cfg.DB,
		Password: cfg.Password,
		PoolSize: cfg.PoolSize,
	}

	client := redis.NewClient(opts)

	pingCtx, cancel := context.WithTimeout(ctx, defaultPingTimeout)
	defer cancel()

	if err := client.Ping(pingCtx).Err(); err != nil {
		_ = client.Close()
		return nil, fmt.Errorf("failed to ping redis at %s: %w", cfg.Addr, err)
	}

	return client, nil
}
