package app

import (
	"context"
	"fmt"
	"net"

	"github.com/pkg/errors"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"

	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/grpc/health"
	"github.com/elearning/platform/pkg/logger"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
	"github.com/elearning/video-service/internal/config"
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
	}

	for _, f := range inits {
		err := f(ctx)
		if err != nil {
			return err
		}
	}

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
	var err error
	a.listener, err = net.Listen("tcp", config.AppConfig().GRPC.Address())
	if err != nil {
		return errors.Wrap(err, "failed to listen")
	}

	return nil
}

func (a *App) initGRPCServer(ctx context.Context) error {
	a.grpcServer = grpc.NewServer()

	reflection.Register(a.grpcServer)

	videov1.RegisterVideoServiceServer(a.grpcServer, a.diContainer.VideoAPI(ctx))
	health.RegisterHealthServer(a.grpcServer)

	return nil
}

func (a *App) runGRPCServer(_ context.Context) error {
	logger.Infof("Starting gRPC server on %s", a.listener.Addr().String())

	return a.grpcServer.Serve(a.listener)
}

// Close закрывает приложение
func (a *App) Close() error {
	if a.grpcServer != nil {
		a.grpcServer.GracefulStop()
	}

	if err := closer.Close(); err != nil {
		return fmt.Errorf("failed to close resources: %w", err)
	}

	return nil
}
