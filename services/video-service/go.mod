module github.com/elearning/video-service

go 1.24

require (
	github.com/elearning/platform v0.0.0
	github.com/elearning/shared v0.0.0
	github.com/google/uuid v1.6.0
	github.com/jackc/pgx/v5 v5.7.2
	github.com/joho/godotenv v1.5.1
	github.com/minio/minio-go/v7 v7.0.80
	github.com/pkg/errors v0.9.1
	google.golang.org/grpc v1.69.2
	google.golang.org/protobuf v1.36.1
)

replace (
	github.com/elearning/platform => ../../platform
	github.com/elearning/shared => ../../shared
)
