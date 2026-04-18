package main

import (
	"context"
	"log"
	"os"
	"os/signal"
	"syscall"

	"github.com/elearning/video-service/internal/app"
	"github.com/elearning/video-service/internal/config"
)

func main() {
	ctx := context.Background()

	// Загрузить конфигурацию
	if err := config.Load(".env"); err != nil {
		log.Printf("Warning: failed to load .env file: %v", err)
	}

	// Создать приложение
	a, err := app.New(ctx)
	if err != nil {
		log.Fatalf("Failed to create app: %v", err)
	}

	// Graceful shutdown
	go func() {
		sigChan := make(chan os.Signal, 1)
		signal.Notify(sigChan, syscall.SIGINT, syscall.SIGTERM)
		<-sigChan

		log.Println("Shutting down gracefully...")
		if err := a.Close(); err != nil {
			log.Printf("Error during shutdown: %v", err)
		}
		os.Exit(0)
	}()

	// Запустить приложение
	if err := a.Run(ctx); err != nil {
		log.Fatalf("Failed to run app: %v", err)
	}
}
