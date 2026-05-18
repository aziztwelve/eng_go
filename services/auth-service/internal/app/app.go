package app

import (
	"context"
	"fmt"
	"net"
	"os"
	"strconv"

	"github.com/pkg/errors"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/reflection"

	"github.com/elearning/auth-service/internal/config"
	authCron "github.com/elearning/auth-service/internal/cron"
	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/grpc/health"
	"github.com/elearning/platform/pkg/logger"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

// App представляет приложение
type App struct {
	diContainer *diContainer
	grpcServer  *grpc.Server
	listener    net.Listener
}

// New создает новый экземпляр приложения
func New(ctx context.Context) (*App, error) {
	a := &App{}

	err := a.initDeps(ctx)
	if err != nil {
		return nil, err
	}

	return a, nil
}

// Run запускает приложение
func (a *App) Run(ctx context.Context) error {
	return a.runGRPCServer(ctx)
}

func (a *App) initDeps(ctx context.Context) error {
	inits := []func(context.Context) error{
		a.initDI,
		a.initLogger,
		a.initCloser,
		a.initListener,
		a.initGRPCServer,
		a.initCron,
	}

	for _, f := range inits {
		err := f(ctx)
		if err != nil {
			return err
		}
	}

	return nil
}

// initCron запускает фоновую горутину для guest cleanup (раз в сутки в UTC).
// Управляется env:
//   - GUEST_CLEANUP_DAILY_AT="HH:MM" (default "03:00")
//   - GUEST_CLEANUP_CUTOFF_DAYS=<n>  (default 90)
//   - GUEST_CLEANUP_ENABLED="false"  отключает крон (для CI/тестов)
func (a *App) initCron(ctx context.Context) error {
	if os.Getenv("GUEST_CLEANUP_ENABLED") == "false" {
		logger.Info(ctx, "auth cron disabled via GUEST_CLEANUP_ENABLED=false")
		return nil
	}

	cfg := authCron.Config{
		DailyAt: os.Getenv("GUEST_CLEANUP_DAILY_AT"),
	}
	if v := os.Getenv("GUEST_CLEANUP_CUTOFF_DAYS"); v != "" {
		if parsed, err := strconv.Atoi(v); err == nil {
			cfg.CutoffDays = int32(parsed)
		}
	}

	scheduler := authCron.NewScheduler(a.diContainer.AuthService(ctx), cfg)
	scheduler.Start(ctx)

	closer.AddNamed("auth cron", func(ctx context.Context) error {
		scheduler.Stop()
		return nil
	})

	return nil
}

func (a *App) initDI(_ context.Context) error {
	a.diContainer = NewDiContainer()
	return nil
}

func (a *App) initLogger(_ context.Context) error {
	return logger.Init(
		config.AppConfig().Logger.Level(),
		config.AppConfig().Logger.AsJson(),
	)
}

func (a *App) initCloser(_ context.Context) error {
	closer.SetLogger(logger.Logger())
	return nil
}

func (a *App) initListener(_ context.Context) error {
	listener, err := net.Listen("tcp", config.AppConfig().AuthGRPC.Address())
	if err != nil {
		return err
	}

	closer.AddNamed("TCP listener", func(ctx context.Context) error {
		lerr := listener.Close()
		if lerr != nil && !errors.Is(lerr, net.ErrClosed) {
			return lerr
		}
		return nil
	})

	a.listener = listener

	return nil
}

func (a *App) initGRPCServer(ctx context.Context) error {
	a.grpcServer = grpc.NewServer(grpc.Creds(insecure.NewCredentials()))

	closer.AddNamed("gRPC server", func(ctx context.Context) error {
		a.grpcServer.GracefulStop()
		return nil
	})

	reflection.Register(a.grpcServer)

	// Регистрируем health service
	health.RegisterService(a.grpcServer)

	// Регистрируем Auth Service
	authv1.RegisterAuthServiceServer(a.grpcServer, a.diContainer.AuthAPI(ctx))

	return nil
}

func (a *App) runGRPCServer(ctx context.Context) error {
	logger.Info(ctx, fmt.Sprintf("🚀 Auth Service gRPC server listening on %s", config.AppConfig().AuthGRPC.Address()))

	err := a.grpcServer.Serve(a.listener)
	if err != nil {
		return err
	}

	return nil
}
