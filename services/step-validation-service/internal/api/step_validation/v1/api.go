package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	stepvalidationv1 "github.com/elearning/shared/pkg/proto/step_validation/v1"
	"github.com/elearning/step-validation-service/internal/client/course"
	"github.com/elearning/step-validation-service/internal/converter"
	"github.com/elearning/step-validation-service/internal/service"
)

type api struct {
	stepvalidationv1.UnimplementedStepValidationServiceServer
	svc service.SubmissionService
}

// NewAPI — конструктор API.
func NewAPI(svc service.SubmissionService) *api {
	return &api{svc: svc}
}

// SubmitAnswer — основной endpoint phase-2.
func (a *api) SubmitAnswer(ctx context.Context, req *stepvalidationv1.SubmitAnswerRequest) (*stepvalidationv1.SubmitAnswerResponse, error) {
	if req.UserId == "" || req.StepId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and step_id are required")
	}

	answerJSON, err := converter.StructToJSON(req.Answer)
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "invalid answer struct: %v", err)
	}
	if len(answerJSON) == 0 {
		return nil, status.Error(codes.InvalidArgument, "answer is required")
	}

	res, err := a.svc.Submit(ctx, service.SubmitRequest{
		UserID:      req.UserId,
		StepID:      req.StepId,
		Answer:      answerJSON,
		TimeSpentMs: req.TimeSpentMs,
		SourceType:  req.SourceType,
		SourceID:    req.SourceId,
	})
	if err != nil {
		return nil, mapServiceError(err)
	}

	resp := &stepvalidationv1.SubmitAnswerResponse{
		IsCorrect:   res.IsCorrect,
		Score:       res.Score,
		Explanation: res.Explanation,
		Attempt:     converter.ToAttemptProto(res.Attempt),
	}

	if len(res.CorrectAnswer) > 0 {
		ca, err := converter.JSONToStruct(res.CorrectAnswer)
		if err == nil {
			resp.CorrectAnswer = ca
		}
	}
	if res.Gamification != nil {
		resp.Gamification = res.Gamification
	}
	if res.Hearts != nil {
		resp.Hearts = res.Hearts
	}

	return resp, nil
}

// ListAttempts — история попыток.
func (a *api) ListAttempts(ctx context.Context, req *stepvalidationv1.ListAttemptsRequest) (*stepvalidationv1.ListAttemptsResponse, error) {
	if req.UserId == "" || req.StepId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and step_id are required")
	}
	limit := int(req.Limit)
	if limit <= 0 {
		limit = 20
	}

	attempts, _, err := a.svc.ListAttempts(ctx, req.UserId, req.StepId, limit, int(req.Offset))
	if err != nil {
		return nil, status.Errorf(codes.Internal, "list attempts: %v", err)
	}
	out := &stepvalidationv1.ListAttemptsResponse{
		Total: int32(len(attempts)),
	}
	for _, a := range attempts {
		out.Attempts = append(out.Attempts, converter.ToAttemptProto(a))
	}
	return out, nil
}

func mapServiceError(err error) error {
	switch {
	case errors.Is(err, service.ErrStepNotFound):
		return status.Error(codes.NotFound, err.Error())
	case errors.Is(err, service.ErrInvalidAnswer):
		return status.Error(codes.InvalidArgument, err.Error())
	case errors.Is(err, service.ErrInvalidStep):
		return status.Error(codes.FailedPrecondition, err.Error())
	case errors.Is(err, course.ErrCourseUnavailable):
		return status.Error(codes.Unavailable, err.Error())
	default:
		return status.Errorf(codes.Internal, "submit: %v", err)
	}
}
