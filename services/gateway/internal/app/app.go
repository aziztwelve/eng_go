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
	quizHandler := handler.NewQuizHandler(a.diContainer.QuizClient(ctx))
	adminHandler := handler.NewAdminHandler()
	adminStatsHandler := handler.NewAdminStatsHandler(
		a.diContainer.AuthClient(ctx),
		a.diContainer.CourseClient(ctx),
		a.diContainer.VideoClient(ctx),
	)
	adminUserHandler := handler.NewAdminUserRealHandler(a.diContainer.AuthClient(ctx), a.diContainer.UserClient(ctx))
	adminCourseHandler := handler.NewAdminCourseRealHandler(a.diContainer.CourseClient(ctx))
	adminModuleHandler := handler.NewAdminModuleHandler(a.diContainer.CourseClient(ctx))
	adminLessonHandler := handler.NewAdminLessonHandler(a.diContainer.CourseClient(ctx))
	adminStepHandler := handler.NewAdminStepHandler(a.diContainer.CourseClient(ctx))
	adminVideoHandler := handler.NewAdminVideoRealHandler(a.diContainer.VideoClient(ctx))
	trackHandler := handler.NewTrackHandler(a.diContainer.CourseClient(ctx), a.diContainer.UserClient(ctx))
	lessonHandler := handler.NewLessonHandler(a.diContainer.CourseClient(ctx))
	authMiddleware := middleware.NewAuthMiddleware(a.diContainer.AuthClient(ctx))
	adminMiddleware := middleware.NewAdminOnlyMiddleware()

	v1 := r.Group("/api/v1")
	{
		auth := v1.Group("/auth")
		{
			auth.POST("/register", authHandler.Register)
			auth.POST("/login", authHandler.Login)
			auth.POST("/refresh", authHandler.RefreshToken)
			auth.GET("/me", authMiddleware.Handle(), authHandler.GetMe)

			// Guest mode (onboarding-spec.md §3.2):
			// POST /auth/guest — bootstrap анонимного юзера (без auth).
			// POST /auth/claim — конвертация в registered (требуется guest JWT).
			auth.POST("/guest", authHandler.CreateGuestSession)
			auth.POST("/claim", authMiddleware.Handle(), authHandler.ClaimGuest)
			// Onboarding v3 (Oki-style): OAuth-claim для sign-up через
			// Google / Apple. См. docs/tasks/mob/onboarding-v3-oki-style.md §2.4.
			auth.POST("/claim/oauth", authMiddleware.Handle(), authHandler.ClaimGuestOAuth)
		}

		courses := v1.Group("/courses")
		{
			courses.GET("", courseHandler.ListCourses)
			courses.GET("/:id", courseHandler.GetCourse)
		}

		tracks := v1.Group("/tracks")
		{
			tracks.GET("", trackHandler.ListTracks)
			tracks.GET("/:id/dictionary", authMiddleware.Handle(), trackHandler.GetTrackDictionary)
			tracks.POST("/:id/dictionary/add", authMiddleware.Handle(), trackHandler.AddTrackDictionary)
			tracks.GET("/:id", trackHandler.GetTrack)
		}

		// Универсальный публичный доступ к уроку (course-bound или standalone)
		lessons := v1.Group("/lessons")
		{
			lessons.GET("/:id", lessonHandler.GetLesson)
		}

		// Публичный доступ к содержимому шага (+ video_url). user_id опционален (query).
		steps := v1.Group("/steps")
		{
			steps.GET("/:stepId", courseHandler.GetStep)
		}

		videos := v1.Group("/videos")
		{
			videos.GET("/:video_id", videoHandler.GetVideoMetadata)
			videos.GET("/:video_id/url", videoHandler.GetVideoURL)
		}

		// === Phase 2: vocabulary (read) + tts cache lookup ===
		vocabHandler := handler.NewVocabularyHandler(a.diContainer.CourseClient(ctx))
		ttsHandler := handler.NewTTSHandler(a.diContainer.CourseClient(ctx))
		v1.GET("/vocabulary", vocabHandler.List)
		v1.GET("/vocabulary/:id", vocabHandler.Get)
		v1.GET("/tts/by-text", ttsHandler.GetByText)

		protected := v1.Group("")
		protected.Use(authMiddleware.Handle())
		{
			// === Onboarding (см. docs/tasks/onboarding-spec.md §3.1) ===
			onboardingHandler := handler.NewOnboardingHandler(a.diContainer.UserClient(ctx))
			onboarding := protected.Group("/onboarding")
			{
				onboarding.GET("", onboardingHandler.GetOnboardingState)
				onboarding.PATCH("", onboardingHandler.PatchOnboardingState)
				onboarding.POST("/complete", onboardingHandler.CompleteOnboarding)
			}

			protected.POST("/courses/:id/enroll", courseHandler.EnrollCourse)

			// === Персональный план треков (Phase 8) ===
			me := protected.Group("/me")
			{
				me.GET("/tracks", trackHandler.GetMyTracks)
				me.POST("/tracks/:id", trackHandler.AddMyTrack)
				me.DELETE("/tracks/:id", trackHandler.RemoveMyTrack)
			}

			// Progress endpoints
			progress := protected.Group("/progress")
			{
				progress.POST("/steps/:stepId/complete", courseHandler.MarkStepComplete)
				progress.GET("/steps/:stepId", courseHandler.GetStepProgress)
				progress.GET("/lessons/:lessonId", courseHandler.GetLessonProgress)
				progress.GET("/courses/:courseId", courseHandler.GetCourseProgress)
				progress.GET("/tracks/:trackId", trackHandler.GetTrackProgress)
			}

			// Quiz attempts (student)
			protected.POST("/quizzes/:id/attempts", quizHandler.StartQuizAttempt)
			protected.GET("/quizzes/:id/attempts/my", quizHandler.GetUserAttempts)
			protected.POST("/attempts/:attemptId/answers", quizHandler.SubmitAnswer)
			protected.POST("/attempts/:attemptId/complete", quizHandler.CompleteQuizAttempt)
			protected.GET("/attempts/:attemptId", quizHandler.GetAttempt)

			// === Phase 7: flashcards (повтор слов) + today queue ===
			// AI suggestions подключаются только если ai-service настроен.
			flashcardHandler := handler.NewFlashcardHandler(
				a.diContainer.CourseClient(ctx),
				a.diContainer.AIClient(ctx),
				a.diContainer.SRSClient(ctx),
			)
			flashcards := protected.Group("/flashcards")
			{
				// Static-сегменты до /:id (gin приоритизирует static, но
				// порядок объявления держим явным для читаемости).
				flashcards.GET("/stats", flashcardHandler.Stats)
				flashcards.POST("/starter", flashcardHandler.SeedStarter)
				flashcards.GET("/today", flashcardHandler.ListToday)
				flashcards.POST("/today/:flashcardId", flashcardHandler.PinForToday)
				flashcards.DELETE("/today/:flashcardId", flashcardHandler.UnpinFromToday)
				flashcards.POST("/bulk", flashcardHandler.BulkCreate)
				flashcards.POST("/from-vocabulary", flashcardHandler.FromVocabulary)

				flashcards.GET("", flashcardHandler.List)
				flashcards.POST("", flashcardHandler.Create)
				flashcards.GET("/:id", flashcardHandler.Get)
				flashcards.PUT("/:id", flashcardHandler.Update)
				flashcards.DELETE("/:id", flashcardHandler.Archive)
				flashcards.POST("/:id/review", flashcardHandler.Review)
			}
			// AI flashcard-suggestions (отдельно от /flashcards чтобы
			// сгруппировать с прочими /ai эндпоинтами).
			protected.GET("/ai/flashcard-suggestions", flashcardHandler.Suggestions)

			// === Phase 2: step submit (только если step-validation-service настроен) ===
			if svc := a.diContainer.StepValidationClient(ctx); svc != nil {
				sh := handler.NewStepSubmitHandler(svc)
				protected.POST("/steps/:stepId/submit", sh.Submit)
				protected.GET("/steps/:stepId/attempts", sh.ListAttempts)
			}

			// === Phase 4: Leagues / leaderboards (только если social-service настроен) ===
			if soc := a.diContainer.SocialClient(ctx); soc != nil {
				sh := handler.NewSocialHandler(soc)
				// Public каталог лиг — без auth.
				v1.GET("/leagues", sh.ListLeagues)
				// Authed: my league + leaderboard + history.
				leagues := protected.Group("/leagues")
				{
					leagues.GET("/mine", sh.GetMyLeague)
					leagues.GET("/mine/leaderboard", sh.GetMyLeaderboard)
					leagues.GET("/history", sh.GetHistory)
				}

				// === Phase 4.5: Friends ===
				fh := handler.NewFriendsHandler(soc)
				friends := protected.Group("/friends")
				{
					friends.GET("", fh.ListFriends)
					friends.GET("/pending", fh.ListPending)
					friends.POST("/request", fh.SendRequest)
					friends.POST("/accept/:friendshipId", fh.Accept)
					friends.POST("/reject/:friendshipId", fh.Reject)
					friends.DELETE("/:friendId", fh.Remove)
					friends.GET("/search", fh.Search)
					friends.GET("/leaderboard", fh.Leaderboard)
				}
			}

			// === Phase 3: SRS + mistakes + practice + skills
			// (только если srs-service настроен) ===
			if sc := a.diContainer.SRSClient(ctx); sc != nil {
				sh := handler.NewSRSHandler(sc)
				srs := protected.Group("/srs")
				{
					srs.GET("/due", sh.GetDue)
					srs.GET("/weak", sh.GetWeak)
					srs.GET("/stats", sh.GetStats)
					srs.POST("/review", sh.Review)
				}
				protected.GET("/mistakes", sh.ListMistakes)

				// Phase 3 full: practice session + skill decay.
				protected.POST("/practice/session", sh.GeneratePracticeSession)
				skills := protected.Group("/skills")
				{
					skills.GET("", sh.ListSkillStrengths)
					skills.GET("/weak", sh.GetWeakSkills)
				}
			}

			// Gamification (регистрируется только если сервис настроен)
			if gc := a.diContainer.GamificationClient(ctx); gc != nil {
				gh := handler.NewGamificationHandler(gc)
				g := protected.Group("/gamification")
				{
					g.GET("/stats", gh.GetMyStats)
					g.GET("/stats/:userId", gh.GetUserStats)
					g.GET("/hearts", gh.GetHearts)
					g.POST("/hearts/refill", gh.RefillHearts)
					g.GET("/daily-goal", gh.GetDailyGoal)
					g.PUT("/daily-goal", gh.UpdateDailyGoal)
					g.GET("/streak/history", gh.GetStreakHistory)
					g.POST("/streak/freeze", gh.UseStreakFreeze)
					g.GET("/achievements", gh.ListAchievements)
					g.GET("/achievements/mine", gh.GetMyAchievements)
					g.GET("/xp/history", gh.GetXPHistory)
				}
			}

			// === Phase 5: AI features (chat / explain / writing / pronunciation / tutor / quota)
			// (только если ai-service настроен) ===
			if ac := a.diContainer.AIClient(ctx); ac != nil {
				ah := handler.NewAIHandler(ac, a.diContainer.CourseClient(ctx))
				ai := protected.Group("/ai")
				{
					// Conversations / Roleplay / Tutor.
					ai.POST("/conversations", ah.StartConversation)
					ai.GET("/conversations", ah.ListConversations)
					ai.GET("/conversations/:id", ah.GetConversation)
					ai.DELETE("/conversations/:id", ah.DeleteConversation)
					ai.POST("/conversations/:id/messages", ah.SendMessage)
					// Phase 5.27: SSE streaming для chat UX (typewriter эффект).
					ai.POST("/conversations/:id/stream", ah.SendMessageStream)
					ai.GET("/scenarios", ah.ListScenarios)

					// Single-shot endpoints.
					ai.POST("/explain", ah.ExplainMistake)
					ai.POST("/writing/assess", ah.AssessWriting)
					ai.POST("/pronunciation/check", ah.CheckPronunciation)
					// STT: голосовой ввод в чат (audio → text).
					ai.POST("/stt", ah.TranscribeAudio)
					ai.POST("/tutor", ah.AskTutor)
					// Phase 5.X: SSE streaming варианты single-shot эндпоинтов.
					ai.POST("/tutor/stream", ah.AskTutorStream)
					ai.POST("/explain/stream", ah.ExplainMistakeStream)
					ai.POST("/writing/assess/stream", ah.AssessWritingStream)

					// Quota.
					ai.GET("/quota", ah.GetQuotaStatus)

					// TTS (on-demand озвучка слов/фраз).
					ai.POST("/tts", ah.SynthesizeTTS)

					// Feedback (Phase 5.X) — thumbs up/down на assistant-message'ах.
					ai.POST("/messages/:id/feedback", ah.SubmitMessageFeedback)
					ai.DELETE("/messages/:id/feedback", ah.DeleteMessageFeedback)
				}
			}

			// === Phase 3: Push notifications (devices + prefs + inbox)
			// (только если notifications-service настроен) ===
			if nc := a.diContainer.NotificationsClient(ctx); nc != nil {
				nh := handler.NewNotificationsHandler(nc)
				n := protected.Group("/notifications")
				{
					n.POST("/devices", nh.RegisterDevice)
					n.GET("/devices", nh.ListDevices)
					n.DELETE("/devices/:id", nh.UnregisterDevice)

					n.GET("/preferences", nh.GetPreferences)
					n.PUT("/preferences", nh.UpdatePreferences)

					n.GET("", nh.ListNotifications)
					n.POST("/read-all", nh.MarkAllRead)
					n.POST("/:id/read", nh.MarkRead)
				}
			}
		}

		// Admin endpoints
		admin := v1.Group("/admin")
		admin.Use(authMiddleware.Handle())
		admin.Use(adminMiddleware.Handle())
		{
			admin.GET("/me", adminHandler.GetCurrentUser)
			admin.GET("/stats", adminStatsHandler.GetStats)

			// Auth admin: ручной trigger cleanup'а гостей. Штатно работает
			// суточный cron в auth-service.
			admin.POST("/auth/cleanup-guests", authHandler.CleanupGuests)

			// User management
			users := admin.Group("/users")
			{
				users.GET("", adminUserHandler.ListUsers)
				users.GET("/:id", adminUserHandler.GetUser)
				users.PUT("/:id", adminUserHandler.UpdateUser)
				users.DELETE("/:id", adminUserHandler.DeleteUser)
			}

			// Course management
			courses := admin.Group("/courses")
			{
				courses.GET("", adminCourseHandler.ListCourses)
				courses.GET("/:id", adminCourseHandler.GetCourse)
				courses.POST("", adminCourseHandler.CreateCourse)
				courses.PUT("/:id", adminCourseHandler.UpdateCourse)
				courses.DELETE("/:id", adminCourseHandler.DeleteCourse)
				courses.PUT("/:id/publish", adminCourseHandler.PublishCourse)

				// Module routes
				courses.POST("/:courseId/modules", adminModuleHandler.CreateModule)
				courses.PUT("/modules/:moduleId", adminModuleHandler.UpdateModule)
				courses.DELETE("/modules/:moduleId", adminModuleHandler.DeleteModule)

				// Lesson routes
				courses.POST("/modules/:moduleId/lessons", adminLessonHandler.CreateLesson)
				courses.PUT("/lessons/:lessonId", adminLessonHandler.UpdateLesson)
				courses.DELETE("/lessons/:lessonId", adminLessonHandler.DeleteLesson)

				// Step routes
				courses.POST("/lessons/:lessonId/steps", adminStepHandler.CreateStep)
				courses.PUT("/steps/:stepId", adminStepHandler.UpdateStep)
				courses.DELETE("/steps/:stepId", adminStepHandler.DeleteStep)
			}

			// Learning tracks management (Phase 0 standalone content)
			adminTracks := admin.Group("/tracks")
			{
				adminTracks.GET("", trackHandler.AdminListTracks)
				adminTracks.POST("", trackHandler.CreateTrack)
				adminTracks.PUT("/:id", trackHandler.UpdateTrack)
				adminTracks.DELETE("/:id", trackHandler.DeleteTrack)
				adminTracks.PUT("/:id/publish", trackHandler.PublishTrack)
				adminTracks.POST("/:id/lessons", trackHandler.AddLessonToTrack)
				adminTracks.DELETE("/:id/lessons/:lessonId", trackHandler.RemoveLessonFromTrack)
				adminTracks.PUT("/:id/lessons/reorder", trackHandler.ReorderTrackLessons)
			}

			// Video management
			videos := admin.Group("/videos")
			{
				videos.GET("", adminVideoHandler.ListVideos)
				videos.GET("/:id", adminVideoHandler.GetVideo)
				videos.POST("/upload", adminVideoHandler.UploadVideo)
				videos.PUT("/:id", adminVideoHandler.UpdateVideo)
				videos.DELETE("/:id", adminVideoHandler.DeleteVideo)
				videos.GET("/:id/usage", adminVideoHandler.GetVideoUsage)
			}

			// Quiz management
			quizzes := admin.Group("/quizzes")
			{
				quizzes.GET("", quizHandler.ListQuizzes)
				quizzes.GET("/:id", quizHandler.GetQuiz)
				quizzes.POST("", quizHandler.CreateQuiz)
				quizzes.PUT("/:id", quizHandler.UpdateQuiz)
				quizzes.DELETE("/:id", quizHandler.DeleteQuiz)
				quizzes.POST("/:id/questions", quizHandler.AddQuestion)
			}

			// Quiz questions
			admin.PUT("/questions/:id", quizHandler.UpdateQuestion)
			admin.DELETE("/questions/:id", quizHandler.DeleteQuestion)

			// === Phase 2: vocabulary (admin) + TTS synthesize ===
			adminVocab := admin.Group("/vocabulary")
			{
				adminVocab.POST("", vocabHandler.Create)
				adminVocab.POST("/bulk", vocabHandler.BulkCreate)
				adminVocab.PUT("/:id", vocabHandler.Update)
				adminVocab.DELETE("/:id", vocabHandler.Delete)
			}
			adminTTS := admin.Group("/tts")
			{
				adminTTS.POST("/synthesize", ttsHandler.Synthesize)
			}

			// === Phase 5: AI admin (content generation) ===
			if ac := a.diContainer.AIClient(ctx); ac != nil {
				ah := handler.NewAIHandler(ac, nil)
				adminAI := admin.Group("/ai")
				{
					adminAI.POST("/generate-exercise", ah.GenerateExercise)
				}
			}
		}
	}

	a.router = r
	return nil
}
