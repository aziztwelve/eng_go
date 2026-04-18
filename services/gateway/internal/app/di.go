package app

import (
	"context"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/config"
	"github.com/elearning/platform/pkg/closer"
)

type diContainer struct {
	authClient   *client.AuthClient
	userClient   *client.UserClient
	courseClient *client.CourseClient
	videoClient  client.VideoClient
}

func NewDiContainer() *diContainer {
	return &diContainer{}
}

func (d *diContainer) AuthClient(ctx context.Context) *client.AuthClient {
	if d.authClient == nil {
		c, err := client.NewAuthClient(ctx, config.AppConfig().Services.AuthServiceAddr())
		if err != nil {
			panic(err)
		}

		closer.AddNamed("Auth gRPC client", func(ctx context.Context) error {
			return c.Close()
		})

		d.authClient = c
	}
	return d.authClient
}

func (d *diContainer) UserClient(ctx context.Context) *client.UserClient {
	if d.userClient == nil {
		c, err := client.NewUserClient(ctx, config.AppConfig().Services.UserServiceAddr())
		if err != nil {
			panic(err)
		}

		closer.AddNamed("User gRPC client", func(ctx context.Context) error {
			return c.Close()
		})

		d.userClient = c
	}
	return d.userClient
}

func (d *diContainer) CourseClient(ctx context.Context) *client.CourseClient {
	if d.courseClient == nil {
		c, err := client.NewCourseClient(ctx, config.AppConfig().Services.CourseServiceAddr())
		if err != nil {
			panic(err)
		}

		closer.AddNamed("Course gRPC client", func(ctx context.Context) error {
			return c.Close()
		})

		d.courseClient = c
	}
	return d.courseClient
}

func (d *diContainer) VideoClient(ctx context.Context) client.VideoClient {
	if d.videoClient == nil {
		c, err := client.NewVideoClient(config.AppConfig().Services.VideoServiceAddr())
		if err != nil {
			panic(err)
		}

		closer.AddNamed("Video gRPC client", func(ctx context.Context) error {
			return c.Close()
		})

		d.videoClient = c
	}
	return d.videoClient
}
