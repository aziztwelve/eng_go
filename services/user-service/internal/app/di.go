package app

import (
	"context"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/platform/pkg/postgres"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	userAPI "github.com/elearning/user-service/internal/api/user/v1"
	"github.com/elearning/user-service/internal/config"
	"github.com/elearning/user-service/internal/repository"
	userRepository "github.com/elearning/user-service/internal/repository/user"
	"github.com/elearning/user-service/internal/service"
	userService "github.com/elearning/user-service/internal/service/user"
)

type diContainer struct {
	userAPI userv1.UserServiceServer

	userService service.UserService

	userRepository repository.UserRepository

	postgresPool *pgxpool.Pool
}

// NewDiContainer создает новый DI контейнер
func NewDiContainer() *diContainer {
	return &diContainer{}
}

// UserAPI возвращает gRPC API для User Service
func (d *diContainer) UserAPI(ctx context.Context) userv1.UserServiceServer {
	if d.userAPI == nil {
		d.userAPI = userAPI.NewAPI(d.UserService(ctx))
	}

	return d.userAPI
}

// UserService возвращает сервис для работы с профилями
func (d *diContainer) UserService(ctx context.Context) service.UserService {
	if d.userService == nil {
		d.userService = userService.NewService(d.UserRepository(ctx))
	}

	return d.userService
}

// UserRepository возвращает репозиторий для работы с профилями
func (d *diContainer) UserRepository(ctx context.Context) repository.UserRepository {
	if d.userRepository == nil {
		d.userRepository = userRepository.NewRepository(d.PostgresPool(ctx))
	}

	return d.userRepository
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
