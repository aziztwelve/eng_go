package main

import (
	"context"
	"fmt"
	"log"
	"net"
	"os"
	"os/signal"
	"syscall"

	"github.com/jackc/pgx/v5/pgxpool"
	"google.golang.org/grpc"

	quizapiv1 "github.com/elearning/quiz-service/internal/api/quiz/v1"
	"github.com/elearning/quiz-service/internal/config"
	"github.com/elearning/quiz-service/internal/repository/postgres"
	quizservice "github.com/elearning/quiz-service/internal/service/quiz"
	quizv1 "github.com/elearning/shared/pkg/proto/quiz/v1"
)

func main() {
	// Загрузка конфигурации
	cfg, err := config.Load()
	if err != nil {
		log.Fatalf("Failed to load config: %v", err)
	}

	// Подключение к PostgreSQL
	dbURL := fmt.Sprintf(
		"postgres://%s:%s@%s:%d/%s?sslmode=%s",
		cfg.Postgres.User,
		cfg.Postgres.Password,
		cfg.Postgres.Host,
		cfg.Postgres.Port,
		cfg.Postgres.Database,
		cfg.Postgres.SSLMode,
	)

	dbPool, err := pgxpool.New(context.Background(), dbURL)
	if err != nil {
		log.Fatalf("Failed to connect to database: %v", err)
	}
	defer dbPool.Close()

	// Проверка подключения
	if err := dbPool.Ping(context.Background()); err != nil {
		log.Fatalf("Failed to ping database: %v", err)
	}
	log.Println("✅ Connected to PostgreSQL")

	// Инициализация репозиториев
	quizRepo := postgres.NewQuizRepository(dbPool)
	questionRepo := postgres.NewQuestionRepository(dbPool)
	answerRepo := postgres.NewAnswerRepository(dbPool)
	attemptRepo := postgres.NewAttemptRepository(dbPool)
	attemptAnswerRepo := postgres.NewAttemptAnswerRepository(dbPool)

	// Инициализация сервисов
	quizSvc := quizservice.NewService(
		quizRepo,
		questionRepo,
		answerRepo,
		attemptRepo,
		attemptAnswerRepo,
	)

	// Инициализация gRPC API
	quizAPI := quizapiv1.NewAPI(quizSvc)

	// Создание gRPC сервера
	grpcServer := grpc.NewServer()

	// Регистрация сервисов
	quizv1.RegisterQuizServiceServer(grpcServer, quizAPI)

	// Запуск gRPC сервера
	listener, err := net.Listen("tcp", fmt.Sprintf(":%d", cfg.GRPC.Port))
	if err != nil {
		log.Fatalf("Failed to listen: %v", err)
	}

	log.Printf("🚀 Quiz Service started on port %d", cfg.GRPC.Port)

	// Graceful shutdown
	go func() {
		if err := grpcServer.Serve(listener); err != nil {
			log.Fatalf("Failed to serve: %v", err)
		}
	}()

	// Ожидание сигнала завершения
	quit := make(chan os.Signal, 1)
	signal.Notify(quit, syscall.SIGINT, syscall.SIGTERM)
	<-quit

	log.Println("🛑 Shutting down Quiz Service...")
	grpcServer.GracefulStop()
	log.Println("✅ Quiz Service stopped")
}
