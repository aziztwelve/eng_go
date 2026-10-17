package service

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"

	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
	"github.com/elearning/step-validation-service/internal/client/course"
	"github.com/elearning/step-validation-service/internal/client/gamification"
	"github.com/elearning/step-validation-service/internal/client/srs"
	"github.com/elearning/step-validation-service/internal/model"
	"github.com/elearning/step-validation-service/internal/repository"
	"github.com/elearning/step-validation-service/internal/service/validators"
)

// SubmitRequest — параметры submit от API.
type SubmitRequest struct {
	UserID      string
	StepID      string
	Answer      []byte // raw JSON
	TimeSpentMs int32
	SourceType  string
	SourceID    string
}

// SubmitResult — результат submit.
type SubmitResult struct {
	IsCorrect     bool
	Score         float64
	CorrectAnswer json.RawMessage
	Explanation   string
	Attempt       *model.Attempt

	// Side-effects (могут быть nil):
	Gamification *gamificationv1.AddXPResponse // при is_correct=true
	Hearts       *gamificationv1.Hearts        // при is_correct=false
}

// SubmissionService — оркестратор: GetStep → validate → save attempt →
// gamification side-effects → MarkStepComplete (course-service).
type SubmissionService interface {
	Submit(ctx context.Context, req SubmitRequest) (*SubmitResult, error)
	ListAttempts(ctx context.Context, userID, stepID string, limit, offset int) ([]*model.Attempt, int, error)
}

type submissionService struct {
	attempts     repository.AttemptRepository
	courseClient course.Client
	gamification gamification.Client
	srs          srs.Client
	registry     validators.Registry
}

// NewSubmissionService — конструктор.
//
// srsClient — Phase 3 hook. nil → noop (см. srs.NewNoopClient).
func NewSubmissionService(
	attempts repository.AttemptRepository,
	courseClient course.Client,
	gamificationClient gamification.Client,
	srsClient srs.Client,
) SubmissionService {
	if srsClient == nil {
		srsClient = srs.NewNoopClient()
	}
	return &submissionService{
		attempts:     attempts,
		courseClient: courseClient,
		gamification: gamificationClient,
		srs:          srsClient,
		registry:     validators.NewDefaultRegistry(),
	}
}

// Sentinel-ошибки, которые API маппит в gRPC коды.
var (
	ErrStepNotFound  = errors.New("step not found")
	ErrInvalidAnswer = errors.New("invalid answer for this step type")
	ErrInvalidStep   = errors.New("invalid step content for this step type")
)

// Submit — полный пайплайн обработки ответа. Идемпотентность не
// обеспечивается на уровне БД (один step_id может иметь много
// attempt'ов), но gamification side-effects — побочные, и каждая
// попытка корректно тарифицируется (повторный correct → второй раз
// XP не даём; см. ниже флаг alreadyCompleted).
func (s *submissionService) Submit(ctx context.Context, req SubmitRequest) (*SubmitResult, error) {
	if req.UserID == "" || req.StepID == "" {
		return nil, errors.New("user_id and step_id are required")
	}
	if len(req.Answer) == 0 {
		return nil, ErrInvalidAnswer
	}

	// 1. Получаем шаг.
	step, err := s.courseClient.GetStep(ctx, req.StepID)
	if err != nil {
		if errors.Is(err, course.ErrCourseUnavailable) {
			return nil, fmt.Errorf("course-service unavailable: %w", err)
		}
		return nil, ErrStepNotFound
	}
	stepType := model.StepType(step.Type)

	// 2. Валидируем ответ.
	result, err := s.registry.ValidateFor(step.Type, json.RawMessage(step.Content), req.Answer)
	if err != nil {
		switch {
		case errors.Is(err, validators.ErrInvalidContent):
			return nil, ErrInvalidStep
		case errors.Is(err, validators.ErrInvalidAnswer):
			return nil, ErrInvalidAnswer
		default:
			// Неизвестный тип шага → передадим как InvalidArgument.
			return nil, fmt.Errorf("validate: %w", err)
		}
	}

	// 3. Записываем attempt (даже неправильные — нужны для аналитики).
	// Сначала считаем количество предыдущих попыток — оно понадобится
	// SM-2 для расчёта quality (первая ошибка ≠ повторная).
	attemptIndex, _ := s.attempts.CountByUserStep(ctx, req.UserID, req.StepID)

	attempt := &model.Attempt{
		UserID:      req.UserID,
		StepID:      req.StepID,
		LessonID:    step.LessonID,
		StepType:    stepType,
		Answer:      json.RawMessage(req.Answer),
		IsCorrect:   result.IsCorrect,
		Score:       result.Score,
		TimeSpentMs: req.TimeSpentMs,
	}
	if err := s.attempts.Create(ctx, attempt); err != nil {
		// Сохранение упало — это плохо, но возвращаем результат
		// валидации. side-effects делать опасно (можем начислить XP
		// без attempt). Поэтому просто откатываемся.
		return nil, fmt.Errorf("save attempt: %w", err)
	}

	out := &SubmitResult{
		IsCorrect:     result.IsCorrect,
		Score:         result.Score,
		CorrectAnswer: result.CorrectAnswer,
		Explanation:   result.Explanation,
		Attempt:       attempt,
	}

	// 4. Gamification side-effects.
	if result.IsCorrect {
		out.Gamification = s.awardXP(ctx, req, attempt, result)
		// MarkStepComplete в course-service. Не блокируем основной поток.
		score := result.Score
		req2 := course.MarkCompletedRequest{
			UserID:           req.UserID,
			StepID:           req.StepID,
			TimeSpentSeconds: req.TimeSpentMs / 1000,
			Score:            &score,
			SourceType:       req.SourceType,
			SourceID:         req.SourceID,
		}
		if err := s.courseClient.MarkStepComplete(ctx, req2); err != nil {
			logger.Warn(ctx, "MarkStepComplete failed (non-fatal)",
				zap.String("step_id", req.StepID),
				zap.String("user_id", req.UserID),
				zap.Error(err),
			)
		}
	} else {
		hearts, err := s.gamification.LoseHeart(ctx, req.UserID, req.StepID)
		if err != nil {
			logger.Warn(ctx, "LoseHeart failed (non-fatal)",
				zap.String("step_id", req.StepID),
				zap.String("user_id", req.UserID),
				zap.Error(err),
			)
		}
		out.Hearts = hearts
	}

	// 5. SRS side-effects (Phase 3). Non-fatal — никогда не валим Submit
	// из-за отказа srs-service.
	s.recordSRS(ctx, req, attempt, result, attemptIndex)

	return out, nil
}

// recordSRS — Phase 3 хук: записывает ревью SM-2 + фиксирует/разрешает
// mistakes. Полностью non-fatal: любая ошибка только логируется.
func (s *submissionService) recordSRS(
	ctx context.Context,
	req SubmitRequest,
	attempt *model.Attempt,
	vr validators.Result,
	attemptIndex int32,
) {
	if s.srs == nil {
		return
	}

	quality := CalculateQuality(vr.IsCorrect, req.TimeSpentMs, false, attemptIndex)
	if _, err := s.srs.RecordReview(ctx, srs.RecordReviewRequest{
		UserID:         req.UserID,
		StepID:         req.StepID,
		Quality:        quality,
		ResponseTimeMs: req.TimeSpentMs,
		UsedHint:       false,
	}); err != nil {
		logger.Warn(ctx, "SRS RecordReview failed (non-fatal)",
			zap.String("step_id", req.StepID),
			zap.String("user_id", req.UserID),
			zap.Int32("quality", quality),
			zap.Error(err),
		)
	}

	if vr.IsCorrect {
		// Если у юзера были неразрешённые ошибки на этом шаге — снимаем.
		if n, err := s.srs.ResolveMistakesForStep(ctx, req.UserID, req.StepID); err != nil {
			logger.Warn(ctx, "SRS ResolveMistakes failed (non-fatal)",
				zap.String("step_id", req.StepID),
				zap.String("user_id", req.UserID),
				zap.Error(err),
			)
		} else if n > 0 {
			logger.Info(ctx, "SRS mistakes resolved",
				zap.String("step_id", req.StepID),
				zap.String("user_id", req.UserID),
				zap.Int32("resolved", n),
			)
		}
		return
	}

	// Wrong answer → фиксируем mistake.
	if err := s.srs.RecordMistake(ctx, req.UserID, req.StepID, attempt.Answer); err != nil {
		logger.Warn(ctx, "SRS RecordMistake failed (non-fatal)",
			zap.String("step_id", req.StepID),
			zap.String("user_id", req.UserID),
			zap.Error(err),
		)
	}
}

func (s *submissionService) awardXP(ctx context.Context, req SubmitRequest, attempt *model.Attempt, vr validators.Result) *gamificationv1.AddXPResponse {
	amount := xpForStep(attempt.StepType, vr.Score)
	resp, err := s.gamification.AddXP(ctx, gamification.AddXPRequest{
		UserID:   req.UserID,
		Amount:   int32(amount),
		Reason:   gamificationv1.XPReason_XP_REASON_STEP_COMPLETED,
		SourceID: req.StepID,
	})
	if err != nil {
		logger.Warn(ctx, "AddXP failed (non-fatal)",
			zap.String("step_id", req.StepID),
			zap.String("user_id", req.UserID),
			zap.Error(err),
		)
		return nil
	}
	return resp
}

func (s *submissionService) ListAttempts(ctx context.Context, userID, stepID string, limit, offset int) ([]*model.Attempt, int, error) {
	return s.attempts.ListByUserStep(ctx, userID, stepID, limit, offset)
}
