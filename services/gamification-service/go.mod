module github.com/elearning/gamification-service

go 1.25.0

replace (
	github.com/elearning/platform => ../../platform
	github.com/elearning/shared => ../../shared
)

require (
	github.com/elearning/platform v0.0.0-00010101000000-000000000000
	github.com/elearning/shared v0.0.0-00010101000000-000000000000
	github.com/google/uuid v1.6.0
	github.com/jackc/pgx/v5 v5.9.1
	github.com/joho/godotenv v1.5.1
	go.uber.org/zap v1.27.1
	google.golang.org/grpc v1.69.4
	google.golang.org/protobuf v1.36.11
)
