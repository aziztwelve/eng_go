package app

import (
	"context"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/platform/pkg/postgres"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
	videoAPI "github.com/elearning/video-service/internal/api/video/v1"
	"github.com/elearning/video-service/internal/config"
	"github.com/elearning/video-service/internal/repository"
	videoRepository "github.com/elearning/video-service/internal/repository/postgres"
	"github.com/elearning/video-service/internal/service"
	"github.com/elearning/video-service/internal/storage"
	minioStorage "github.com/elearning/video-service/internal/storage/minio"
)

type diContainer struct {
	videoAPI videov1.VideoServiceServer

	videoService *service.VideoService

	videoRepository repository.VideoRepository

	storage storage.Storage

	postgresPool *pgxpool.Pool
}

// NewDiContainer создает новый DI контейнер
func NewDiContainer() *diContainer {
	return &diContainer{}
}

// VideoAPI возвращает gRPC API для Video Service
func (d *diContainer) VideoAPI(ctx context.Context) videov1.VideoServiceServer {
	if d.videoAPI == nil {
		d.videoAPI = videoAPI.NewVideoAPI(d.VideoService(ctx))
	}

	return d.videoAPI
}

// VideoService возвращает сервис для работы с видео
func (d *diContainer) VideoService(ctx context.Context) *service.VideoService {
	if d.videoService == nil {
		d.videoService = service.NewVideoService(
			d.VideoRepository(ctx),
			d.Storage(ctx),
			config.AppConfig().Video.SignedURLExpiresSeconds(),
		)
	}

	return d.videoService
}

// VideoRepository возвращает репозиторий для работы с видео
func (d *diContainer) VideoRepository(ctx context.Context) repository.VideoRepository {
	if d.videoRepository == nil {
		d.videoRepository = videoRepository.NewVideoRepository(d.PostgresPool(ctx))
	}

	return d.videoRepository
}

// Storage возвращает MinIO storage
func (d *diContainer) Storage(ctx context.Context) storage.Storage {
	if d.storage == nil {
		cfg := minioStorage.Config{
			Endpoint:       config.AppConfig().Minio.Endpoint(),
			PublicEndpoint: config.AppConfig().Minio.PublicEndpoint(),
			AccessKey:      config.AppConfig().Minio.AccessKey(),
			SecretKey:      config.AppConfig().Minio.SecretKey(),
			UseSSL:         config.AppConfig().Minio.UseSSL(),
			Region:         config.AppConfig().Minio.Region(),
			Bucket:         config.AppConfig().Minio.Bucket(),
		}

		stor, err := minioStorage.NewMinioStorage(cfg)
		if err != nil {
			panic(err)
		}

		d.storage = stor
	}

	return d.storage
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
