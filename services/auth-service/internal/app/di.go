package app

import (
	"context"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"

	authAPI "github.com/elearning/auth-service/internal/api/auth/v1"
	"github.com/elearning/auth-service/internal/config"
	"github.com/elearning/auth-service/internal/repository"
	authRepository "github.com/elearning/auth-service/internal/repository/auth"
	"github.com/elearning/auth-service/internal/service"
	authService "github.com/elearning/auth-service/internal/service/auth"
	"github.com/elearning/platform/pkg/postgres"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

type diContainer struct {
	authAPI authv1.AuthServiceServer

	authService service.AuthService

	authRepository repository.AuthRepository

	postgresPool *pgxpool.Pool
}

// NewDiContainer создает новый DI контейнер
func NewDiContainer() *diContainer {
	return &diContainer{}
}

// AuthAPI возвращает gRPC API для Auth Service
func (d *diContainer) AuthAPI(ctx context.Context) authv1.AuthServiceServer {
	if d.authAPI == nil {
		d.authAPI = authAPI.NewAPI(d.AuthService(ctx))
	}

	return d.authAPI
}

// AuthService возвращает сервис аутентификации
func (d *diContainer) AuthService(ctx context.Context) service.AuthService {
	if d.authService == nil {
		accessTTL, _ := time.ParseDuration(config.AppConfig().JWT.AccessTTL())
		refreshTTL, _ := time.ParseDuration(config.AppConfig().JWT.RefreshTTL())

		d.authService = authService.NewService(
			d.AuthRepository(ctx),
			config.AppConfig().JWT.Secret(),
			accessTTL,
			refreshTTL,
		)
	}

	return d.authService
}

// AuthRepository возвращает репозиторий для работы с пользователями
func (d *diContainer) AuthRepository(ctx context.Context) repository.AuthRepository {
	if d.authRepository == nil {
		d.authRepository = authRepository.NewRepository(d.PostgresPool(ctx))
	}

	return d.authRepository
}

// PostgresPool возвращает connection pool для PostgreSQL
func (d *diContainer) PostgresPool(ctx context.Context) *pgxpool.Pool {
	if d.postgresPool == nil {
		cfg := postgres.Config{
			Host:     config.AppConfig().Postgres.Host(),
			Port:     config.AppConfig().Postgres.Port(),
			Database: config.AppConfig().Postgres.Database(),
			Schema:   config.AppConfig().Postgres.Schema(),
			User:     config.AppConfig().Postgres.User(),
			Password: config.AppConfig().Postgres.Password(),
		}

		pool, err := postgres.NewPool(ctx, cfg)
		if err != nil {
			panic(err)
		}

		d.postgresPool = pool
	}

	return d.postgresPool
}
