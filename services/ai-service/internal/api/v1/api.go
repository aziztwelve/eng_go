// Package v1 — gRPC API ai-service.
package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/elearning/ai-service/internal/converter"
	"github.com/elearning/ai-service/internal/service"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

type api struct {
	aiv1.UnimplementedAIServiceServer
	svc *service.Service
}

// NewAPI — конструктор.
func NewAPI(svc *service.Service) *api {
	return &api{svc: svc}
}

// =====================================================================
// Conversations
// =====================================================================

func (a *api) StartConversation(ctx context.Context, req *aiv1.StartConversationRequest) (*aiv1.StartConversationResponse, error) {
	conv, initial, err := a.svc.StartConversation(ctx, service.StartConversationInput{
		UserID:         req.GetUserId(),
		Scenario:       req.GetScenario(),
		TargetLanguage: req.GetTargetLanguage(),
		UserLevel:      req.GetUserLevel(),
		Title:          req.GetTitle(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &aiv1.StartConversationResponse{
		Conversation:   converter.ToConversationProto(conv),
		InitialMessage: converter.ToMessageProto(initial),
	}, nil
}

func (a *api) SendMessage(ctx context.Context, req *aiv1.SendMessageRequest) (*aiv1.SendMessageResponse, error) {
	userMsg, assistantMsg, err := a.svc.SendMessage(ctx, service.SendMessageInput{
		UserID:         req.GetUserId(),
		ConversationID: req.GetConversationId(),
		Content:        req.GetContent(),
		WantAudio:      req.GetWantAudio(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &aiv1.SendMessageResponse{
		UserMessage:      converter.ToMessageProto(userMsg),
		AssistantMessage: converter.ToMessageProto(assistantMsg),
	}, nil
}

func (a *api) ListConversations(ctx context.Context, req *aiv1.ListConversationsRequest) (*aiv1.ListConversationsResponse, error) {
	convs, total, err := a.svc.ListConversations(ctx, req.GetUserId(), int(req.GetLimit()), int(req.GetOffset()))
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &aiv1.ListConversationsResponse{Total: total}
	for _, c := range convs {
		out.Conversations = append(out.Conversations, converter.ToConversationProto(c))
	}
	return out, nil
}

func (a *api) GetConversation(ctx context.Context, req *aiv1.GetConversationRequest) (*aiv1.GetConversationResponse, error) {
	conv, msgs, err := a.svc.GetConversation(ctx, req.GetUserId(), req.GetConversationId())
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &aiv1.GetConversationResponse{
		Conversation: converter.ToConversationProto(conv),
	}
	for _, m := range msgs {
		out.Messages = append(out.Messages, converter.ToMessageProto(m))
	}
	return out, nil
}

func (a *api) DeleteConversation(ctx context.Context, req *aiv1.DeleteConversationRequest) (*aiv1.DeleteConversationResponse, error) {
	if err := a.svc.DeleteConversation(ctx, req.GetUserId(), req.GetConversationId()); err != nil {
		return nil, mapServiceError(err)
	}
	return &aiv1.DeleteConversationResponse{}, nil
}

func (a *api) ListScenarios(_ context.Context, req *aiv1.ListScenariosRequest) (*aiv1.ListScenariosResponse, error) {
	scs := a.svc.ListScenarios(req.GetLanguage(), req.GetUserLevel())
	out := &aiv1.ListScenariosResponse{}
	for _, s := range scs {
		out.Scenarios = append(out.Scenarios, converter.ToScenarioProto(s))
	}
	return out, nil
}

// =====================================================================
// Explain
// =====================================================================

func (a *api) ExplainMistake(ctx context.Context, req *aiv1.ExplainMistakeRequest) (*aiv1.ExplainMistakeResponse, error) {
	res, err := a.svc.ExplainMistake(ctx, service.ExplainInput{
		UserID:          req.GetUserId(),
		StepID:          req.GetStepId(),
		Question:        req.GetQuestion(),
		IncorrectAnswer: req.GetIncorrectAnswer(),
		CorrectAnswer:   req.GetCorrectAnswer(),
		TargetLanguage:  req.GetTargetLanguage(),
		NativeLanguage:  req.GetNativeLanguage(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &aiv1.ExplainMistakeResponse{
		Explanation: res.Explanation,
		Cached:      res.Cached,
	}, nil
}

// =====================================================================
// Writing
// =====================================================================

func (a *api) AssessWriting(ctx context.Context, req *aiv1.AssessWritingRequest) (*aiv1.AssessWritingResponse, error) {
	assessment, err := a.svc.AssessWriting(ctx, service.AssessWritingInput{
		UserID:         req.GetUserId(),
		Prompt:         req.GetPrompt(),
		UserText:       req.GetUserText(),
		TargetLanguage: req.GetTargetLanguage(),
		UserLevel:      req.GetUserLevel(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &aiv1.AssessWritingResponse{
		AssessmentId:   assessment.ID,
		OverallScore:   assessment.OverallScore,
		GrammarScore:   assessment.GrammarScore,
		VocabularyScore: assessment.VocabScore,
		CoherenceScore: assessment.CoherenceScore,
		StyleScore:     assessment.StyleScore,
		CorrectedText:  assessment.CorrectedText,
	}
	for _, f := range assessment.Feedback {
		out.Feedback = append(out.Feedback, converter.ToWritingFeedbackProto(f))
	}
	return out, nil
}

// =====================================================================
// Pronunciation
// =====================================================================

func (a *api) CheckPronunciation(ctx context.Context, req *aiv1.CheckPronunciationRequest) (*aiv1.CheckPronunciationResponse, error) {
	attempt, err := a.svc.CheckPronunciation(ctx, service.CheckPronunciationInput{
		UserID:     req.GetUserId(),
		StepID:     req.GetStepId(),
		TargetText: req.GetTargetText(),
		Audio:      req.GetAudio(),
		AudioMime:  req.GetAudioMime(),
		Language:   req.GetLanguage(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &aiv1.CheckPronunciationResponse{
		AttemptId:        attempt.ID,
		TranscribedText:  attempt.TranscribedText,
		AccuracyScore:    attempt.AccuracyScore,
		Feedback:         attempt.Feedback,
		AudioUrl:         attempt.AudioURL,
	}
	for _, w := range attempt.WordScores {
		out.WordScores = append(out.WordScores, converter.ToWordScoreProto(w))
	}
	return out, nil
}

// =====================================================================
// Tutor
// =====================================================================

func (a *api) AskTutor(ctx context.Context, req *aiv1.AskTutorRequest) (*aiv1.AskTutorResponse, error) {
	res, err := a.svc.AskTutor(ctx, service.AskTutorInput{
		UserID:         req.GetUserId(),
		Question:       req.GetQuestion(),
		TargetLanguage: req.GetTargetLanguage(),
		NativeLanguage: req.GetNativeLanguage(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &aiv1.AskTutorResponse{
		Answer:     res.Answer,
		TokensUsed: res.TokensUsed,
		CostUsd:    res.CostUSD,
	}, nil
}

// =====================================================================
// Content gen (admin)
// =====================================================================

func (a *api) GenerateExercise(ctx context.Context, req *aiv1.GenerateExerciseRequest) (*aiv1.GenerateExerciseResponse, error) {
	res, err := a.svc.GenerateExercise(ctx, service.GenerateExerciseInput{
		ExerciseType:   req.GetExerciseType(),
		Vocabulary:     req.GetVocabulary(),
		UserLevel:      req.GetUserLevel(),
		TargetLanguage: req.GetTargetLanguage(),
		NativeLanguage: req.GetNativeLanguage(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	contentStruct, err := structpb.NewStruct(res.Content)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "structpb: %v", err)
	}
	return &aiv1.GenerateExerciseResponse{
		Content:    contentStruct,
		TokensUsed: res.TokensUsed,
		CostUsd:    res.CostUSD,
	}, nil
}

// =====================================================================
// Quota
// =====================================================================

func (a *api) GetQuotaStatus(ctx context.Context, req *aiv1.GetQuotaStatusRequest) (*aiv1.GetQuotaStatusResponse, error) {
	q, err := a.svc.GetQuotaStatus(ctx, req.GetUserId())
	if err != nil {
		return nil, mapServiceError(err)
	}
	return converter.ToQuotaStatusProto(q), nil
}

// =====================================================================
// Error mapping
// =====================================================================

func mapServiceError(err error) error {
	switch {
	case errors.Is(err, service.ErrInvalidArgument):
		return status.Error(codes.InvalidArgument, err.Error())
	case errors.Is(err, service.ErrNotFound):
		return status.Error(codes.NotFound, err.Error())
	case errors.Is(err, service.ErrForbidden):
		return status.Error(codes.PermissionDenied, err.Error())
	case errors.Is(err, service.ErrQuotaExceeded):
		return status.Error(codes.ResourceExhausted, err.Error())
	case errors.Is(err, service.ErrProviderFailed):
		return status.Error(codes.Unavailable, err.Error())
	case errors.Is(err, service.ErrScenarioNotFound):
		return status.Error(codes.NotFound, err.Error())
	default:
		return status.Errorf(codes.Internal, "%v", err)
	}
}
