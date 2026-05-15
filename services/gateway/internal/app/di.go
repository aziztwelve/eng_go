package app

import (
	"context"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/config"
	"github.com/elearning/platform/pkg/closer"
)

type diContainer struct {
	authClient           *client.AuthClient
	userClient           *client.UserClient
	courseClient         *client.CourseClient
	videoClient          client.VideoClient
	quizClient           *client.QuizClient
	gamificationClient   *client.GamificationClient
	stepValidationClient *client.StepValidationClient
	srsClient            *client.SRSClient
	notificationsClient  *client.NotificationsClient
	socialClient         *client.SocialClient
	aiClient             *client.AIClient
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

func (d *diContainer) QuizClient(ctx context.Context) *client.QuizClient {
	if d.quizClient == nil {
		c, err := client.NewQuizClient(config.AppConfig().Services.QuizServiceAddr())
		if err != nil {
			panic(err)
		}

		closer.AddNamed("Quiz gRPC client", func(ctx context.Context) error {
			return c.Close()
		})

		d.quizClient = c
	}
	return d.quizClient
}

// GamificationClient может быть nil, если GAMIFICATION_SERVICE_ADDR не задан —
// в этом случае gamification роуты не регистрируются.
func (d *diContainer) GamificationClient(ctx context.Context) *client.GamificationClient {
	if d.gamificationClient != nil {
		return d.gamificationClient
	}
	addr := config.AppConfig().Services.GamificationServiceAddr()
	if addr == "" {
		return nil
	}
	c, err := client.NewGamificationClient(ctx, addr)
	if err != nil {
		panic(err)
	}
	closer.AddNamed("Gamification gRPC client", func(ctx context.Context) error {
		return c.Close()
	})
	d.gamificationClient = c
	return d.gamificationClient
}

// StepValidationClient может быть nil, если STEP_VALIDATION_SERVICE_ADDR
// не задан. Без него POST /api/v1/steps/:stepId/submit не регистрируется.
func (d *diContainer) StepValidationClient(ctx context.Context) *client.StepValidationClient {
	if d.stepValidationClient != nil {
		return d.stepValidationClient
	}
	addr := config.AppConfig().Services.StepValidationServiceAddr()
	if addr == "" {
		return nil
	}
	c, err := client.NewStepValidationClient(ctx, addr)
	if err != nil {
		panic(err)
	}
	closer.AddNamed("Step Validation gRPC client", func(ctx context.Context) error {
		return c.Close()
	})
	d.stepValidationClient = c
	return d.stepValidationClient
}

// SRSClient может быть nil, если SRS_SERVICE_ADDR не задан. Без него
// /api/v1/srs/* и /api/v1/mistakes/* не регистрируются.
func (d *diContainer) SRSClient(ctx context.Context) *client.SRSClient {
	if d.srsClient != nil {
		return d.srsClient
	}
	addr := config.AppConfig().Services.SRSServiceAddr()
	if addr == "" {
		return nil
	}
	c, err := client.NewSRSClient(ctx, addr)
	if err != nil {
		panic(err)
	}
	closer.AddNamed("SRS gRPC client", func(ctx context.Context) error {
		return c.Close()
	})
	d.srsClient = c
	return d.srsClient
}

// SocialClient может быть nil, если SOCIAL_SERVICE_ADDR не задан. Без него
// /api/v1/leagues/* не регистрируются.
func (d *diContainer) SocialClient(ctx context.Context) *client.SocialClient {
	if d.socialClient != nil {
		return d.socialClient
	}
	addr := config.AppConfig().Services.SocialServiceAddr()
	if addr == "" {
		return nil
	}
	c, err := client.NewSocialClient(ctx, addr)
	if err != nil {
		panic(err)
	}
	closer.AddNamed("Social gRPC client", func(ctx context.Context) error {
		return c.Close()
	})
	d.socialClient = c
	return d.socialClient
}

// NotificationsClient может быть nil, если NOTIFICATIONS_SERVICE_ADDR
// не задан. Без него /api/v1/notifications/* не регистрируются.
func (d *diContainer) NotificationsClient(ctx context.Context) *client.NotificationsClient {
	if d.notificationsClient != nil {
		return d.notificationsClient
	}
	addr := config.AppConfig().Services.NotificationsServiceAddr()
	if addr == "" {
		return nil
	}
	c, err := client.NewNotificationsClient(ctx, addr)
	if err != nil {
		panic(err)
	}
	closer.AddNamed("Notifications gRPC client", func(ctx context.Context) error {
		return c.Close()
	})
	d.notificationsClient = c
	return d.notificationsClient
}

// AIClient может быть nil, если AI_SERVICE_ADDR не задан. Без него
// /api/v1/ai/* не регистрируются.
func (d *diContainer) AIClient(ctx context.Context) *client.AIClient {
	if d.aiClient != nil {
		return d.aiClient
	}
	addr := config.AppConfig().Services.AIServiceAddr()
	if addr == "" {
		return nil
	}
	c, err := client.NewAIClient(ctx, addr)
	if err != nil {
		panic(err)
	}
	closer.AddNamed("AI gRPC client", func(ctx context.Context) error {
		return c.Close()
	})
	d.aiClient = c
	return d.aiClient
}
