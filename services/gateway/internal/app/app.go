package app

import (
	"context"
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/config"
	"github.com/elearning/gateway/internal/handler"
	"github.com/elearning/gateway/internal/middleware"
	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/logger"
)

type App struct {
	diContainer *diContainer
	router      *gin.Engine
}

func New(ctx context.Context) (*App, error) {
	a := &App{}
	if err := a.initDeps(ctx); err != nil {
		return nil, err
	}
	return a, nil
}

func (a *App) Run(ctx context.Context) error {
	addr := config.AppConfig().HTTP.Address()
	logger.Info(ctx, fmt.Sprintf("🚀 API Gateway listening on %s", addr))
	return a.router.Run(addr)
}

func (a *App) initDeps(ctx context.Context) error {
	inits := []func(context.Context) error{
		a.initDI,
		a.initLogger,
		a.initCloser,
		a.initRouter,
	}

	for _, f := range inits {
		if err := f(ctx); err != nil {
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

func (a *App) initRouter(ctx context.Context) error {
	gin.SetMode(gin.ReleaseMode)
	r := gin.New()

	r.Use(middleware.Logger())
	r.Use(middleware.Recovery())
	r.Use(middleware.CORS())

	r.GET("/health", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{"status": "ok"})
	})

	authHandler := handler.NewAuthHandler(a.diContainer.AuthClient(ctx), a.diContainer.UserClient(ctx))
	courseHandler := handler.NewCourseHandler(a.diContainer.CourseClient(ctx))
	videoHandler := handler.NewVideoHandler(a.diContainer.VideoClient(ctx))
	authMiddleware := middleware.NewAuthMiddleware(a.diContainer.AuthClient(ctx))

	v1 := r.Group("/api/v1")
	{
		auth := v1.Group("/auth")
		{
			auth.POST("/register", authHandler.Register)
			auth.POST("/login", authHandler.Login)
			auth.POST("/refresh", authHandler.RefreshToken)
			auth.GET("/me", authMiddleware.Handle(), authHandler.GetMe)
		}

		courses := v1.Group("/courses")
		{
			courses.GET("", courseHandler.ListCourses)
			courses.GET("/:id", courseHandler.GetCourse)
		}

		videos := v1.Group("/videos")
		{
			videos.GET("/:video_id", videoHandler.GetVideoMetadata)
			videos.GET("/:video_id/url", videoHandler.GetVideoURL)
		}

		protected := v1.Group("")
		protected.Use(authMiddleware.Handle())
		{
			protected.POST("/courses/:id/enroll", courseHandler.EnrollCourse)

			// Progress endpoints
			progress := protected.Group("/progress")
			{
				progress.POST("/steps/:stepId/complete", courseHandler.MarkStepComplete)
				progress.GET("/steps/:stepId", courseHandler.GetStepProgress)
				progress.GET("/lessons/:lessonId", courseHandler.GetLessonProgress)
				progress.GET("/courses/:courseId", courseHandler.GetCourseProgress)
			}
		}
	}

	a.router = r
	return nil
}
