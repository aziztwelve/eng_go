// Package v1 — gRPC API ai-service.
package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/elearning/ai-service/internal/converter"
	"github.com/elearning/ai-service/internal/model"
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

// SendMessageStream — server-streaming RPC (Phase 5.27).
//
// Маппинг service.StreamEvent → aiv1.SendMessageStreamChunk:
//   - UserMessage      → chunk.UserMessage  (первый)
//   - Delta            → chunk.Delta        (середина)
//   - AssistantMessage → chunk.Done         (последний)
//   - Err              → chunk.ErrorMessage (terminal failure)
//
// Synchronous setup-ошибки (validation/quota/forbidden) возвращаются
// как обычные gRPC-ошибки до открытия стрима. Mid-stream ошибки —
// финальным chunk'ом ErrorMessage без статус-кода (stream закрывается
// с OK, ошибка инкапсулируется в payload'е, чтобы клиент мог
// дифференцировать «сетевая ошибка» от «ошибка провайдера»).
func (a *api) SendMessageStream(req *aiv1.SendMessageRequest, stream aiv1.AIService_SendMessageStreamServer) error {
	ctx := stream.Context()
	events, err := a.svc.SendMessageStream(ctx, service.SendMessageInput{
		UserID:         req.GetUserId(),
		ConversationID: req.GetConversationId(),
		Content:        req.GetContent(),
		WantAudio:      req.GetWantAudio(),
	})
	if err != nil {
		return mapServiceError(err)
	}

	var (
		userMsgProto *aiv1.Message
	)
	for ev := range events {
		switch {
		case ev.Err != nil:
			if sendErr := stream.Send(&aiv1.SendMessageStreamChunk{
				Kind: &aiv1.SendMessageStreamChunk_ErrorMessage{ErrorMessage: ev.Err.Error()},
			}); sendErr != nil {
				return sendErr
			}
			// Не возвращаем ошибку: stream закрывается OK, error_message
			// внутри payload'а — клиент может его прочитать.
			return nil

		case ev.UserMessage != nil:
			userMsgProto = converter.ToMessageProto(ev.UserMessage)
			if err := stream.Send(&aiv1.SendMessageStreamChunk{
				Kind: &aiv1.SendMessageStreamChunk_UserMessage{UserMessage: userMsgProto},
			}); err != nil {
				return err
			}

		case ev.AssistantMessage != nil:
			done := &aiv1.SendMessageResponse{
				UserMessage:      userMsgProto,
				AssistantMessage: converter.ToMessageProto(ev.AssistantMessage),
			}
			if err := stream.Send(&aiv1.SendMessageStreamChunk{
				Kind: &aiv1.SendMessageStreamChunk_Done{Done: done},
			}); err != nil {
				return err
			}

		case ev.Delta != "":
			if err := stream.Send(&aiv1.SendMessageStreamChunk{
				Kind: &aiv1.SendMessageStreamChunk_Delta{Delta: ev.Delta},
			}); err != nil {
				return err
			}
		}
	}
	return nil
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

	// Pre-загрузка feedback'ов для assistant-сообщений (Phase 5.X).
	// На read-flow non-fatal: если feedback storage упал, рендерим без оценок.
	assistantIDs := make([]string, 0, len(msgs))
	for _, m := range msgs {
		if m.Role == "assistant" {
			assistantIDs = append(assistantIDs, m.ID)
		}
	}
	feedbacks, _ := a.svc.ListFeedbackForMessages(ctx, req.GetUserId(), assistantIDs)

	out := &aiv1.GetConversationResponse{
		Conversation: converter.ToConversationProto(conv),
	}
	for _, m := range msgs {
		mp := converter.ToMessageProto(m)
		if fb, ok := feedbacks[m.ID]; ok {
			mp.UserFeedback = converter.ToFeedbackProto(fb)
		}
		out.Messages = append(out.Messages, mp)
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

// ExplainMistakeStream — server-streaming RPC (Phase 5.X). См. proto-doc.
func (a *api) ExplainMistakeStream(req *aiv1.ExplainMistakeRequest, stream aiv1.AIService_ExplainMistakeStreamServer) error {
	ctx := stream.Context()
	events, err := a.svc.ExplainMistakeStream(ctx, service.ExplainInput{
		UserID:          req.GetUserId(),
		StepID:          req.GetStepId(),
		Question:        req.GetQuestion(),
		IncorrectAnswer: req.GetIncorrectAnswer(),
		CorrectAnswer:   req.GetCorrectAnswer(),
		TargetLanguage:  req.GetTargetLanguage(),
		NativeLanguage:  req.GetNativeLanguage(),
	})
	if err != nil {
		return mapServiceError(err)
	}

	for ev := range events {
		switch {
		case ev.Err != nil:
			if sendErr := stream.Send(&aiv1.ExplainMistakeStreamChunk{
				Kind: &aiv1.ExplainMistakeStreamChunk_ErrorMessage{ErrorMessage: ev.Err.Error()},
			}); sendErr != nil {
				return sendErr
			}
			for range events {
			}
			return nil

		case ev.Done != nil:
			done := &aiv1.ExplainMistakeResponse{
				Explanation: ev.Done.Explanation,
				Cached:      ev.Done.Cached,
			}
			if err := stream.Send(&aiv1.ExplainMistakeStreamChunk{
				Kind: &aiv1.ExplainMistakeStreamChunk_Done{Done: done},
			}); err != nil {
				return err
			}

		case ev.Delta != "":
			if err := stream.Send(&aiv1.ExplainMistakeStreamChunk{
				Kind: &aiv1.ExplainMistakeStreamChunk_Delta{Delta: ev.Delta},
			}); err != nil {
				return err
			}
		}
	}
	return nil
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
	return assessmentToProto(assessment), nil
}

// AssessWritingStream — server-streaming RPC (Phase 5.X). См. proto-doc.
func (a *api) AssessWritingStream(req *aiv1.AssessWritingRequest, stream aiv1.AIService_AssessWritingStreamServer) error {
	ctx := stream.Context()
	events, err := a.svc.AssessWritingStream(ctx, service.AssessWritingInput{
		UserID:         req.GetUserId(),
		Prompt:         req.GetPrompt(),
		UserText:       req.GetUserText(),
		TargetLanguage: req.GetTargetLanguage(),
		UserLevel:      req.GetUserLevel(),
	})
	if err != nil {
		return mapServiceError(err)
	}

	for ev := range events {
		switch {
		case ev.Err != nil:
			if sendErr := stream.Send(&aiv1.AssessWritingStreamChunk{
				Kind: &aiv1.AssessWritingStreamChunk_ErrorMessage{ErrorMessage: ev.Err.Error()},
			}); sendErr != nil {
				return sendErr
			}
			for range events {
			}
			return nil

		case ev.Done != nil:
			if err := stream.Send(&aiv1.AssessWritingStreamChunk{
				Kind: &aiv1.AssessWritingStreamChunk_Done{Done: assessmentToProto(ev.Done)},
			}); err != nil {
				return err
			}

		case ev.Delta != "":
			if err := stream.Send(&aiv1.AssessWritingStreamChunk{
				Kind: &aiv1.AssessWritingStreamChunk_Delta{Delta: ev.Delta},
			}); err != nil {
				return err
			}
		}
	}
	return nil
}

// assessmentToProto — общий конвертер для AssessWriting/Stream.
func assessmentToProto(a *model.WritingAssessment) *aiv1.AssessWritingResponse {
	out := &aiv1.AssessWritingResponse{
		AssessmentId:    a.ID,
		OverallScore:    a.OverallScore,
		GrammarScore:    a.GrammarScore,
		VocabularyScore: a.VocabScore,
		CoherenceScore:  a.CoherenceScore,
		StyleScore:      a.StyleScore,
		CorrectedText:   a.CorrectedText,
	}
	for _, f := range a.Feedback {
		out.Feedback = append(out.Feedback, converter.ToWritingFeedbackProto(f))
	}
	return out
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

// AskTutorStream — server-streaming RPC (Phase 5.X).
//
// Маппинг service.TutorStreamEvent → aiv1.AskTutorStreamChunk:
//   - Delta → chunk.Delta
//   - Done  → chunk.Done   (последний)
//   - Err   → chunk.ErrorMessage  (последний, без done)
//
// Контекст cancel'ом из stream.Context() прерывает фоновую горутину
// сервиса (через cancel в SendMessageStream-стиле).
func (a *api) AskTutorStream(req *aiv1.AskTutorRequest, stream aiv1.AIService_AskTutorStreamServer) error {
	ctx := stream.Context()
	events, err := a.svc.AskTutorStream(ctx, service.AskTutorInput{
		UserID:         req.GetUserId(),
		Question:       req.GetQuestion(),
		TargetLanguage: req.GetTargetLanguage(),
		NativeLanguage: req.GetNativeLanguage(),
	})
	if err != nil {
		return mapServiceError(err)
	}

	for ev := range events {
		switch {
		case ev.Err != nil:
			if sendErr := stream.Send(&aiv1.AskTutorStreamChunk{
				Kind: &aiv1.AskTutorStreamChunk_ErrorMessage{ErrorMessage: ev.Err.Error()},
			}); sendErr != nil {
				return sendErr
			}
			// drain остатка чтобы горутина service'а не залипла на send'е
			for range events {
			}
			return nil

		case ev.Done != nil:
			done := &aiv1.AskTutorResponse{
				Answer:     ev.Done.Answer,
				TokensUsed: ev.Done.TokensUsed,
				CostUsd:    ev.Done.CostUSD,
			}
			if err := stream.Send(&aiv1.AskTutorStreamChunk{
				Kind: &aiv1.AskTutorStreamChunk_Done{Done: done},
			}); err != nil {
				return err
			}

		case ev.Delta != "":
			if err := stream.Send(&aiv1.AskTutorStreamChunk{
				Kind: &aiv1.AskTutorStreamChunk_Delta{Delta: ev.Delta},
			}); err != nil {
				return err
			}
		}
	}
	return nil
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
// Feedback (Phase 5.X)
// =====================================================================

func (a *api) SubmitMessageFeedback(ctx context.Context, req *aiv1.SubmitMessageFeedbackRequest) (*aiv1.SubmitMessageFeedbackResponse, error) {
	fb, err := a.svc.SubmitFeedback(ctx, service.FeedbackInput{
		UserID:    req.GetUserId(),
		MessageID: req.GetMessageId(),
		Rating:    feedbackRatingFromInt(req.GetRating()),
		Comment:   req.GetComment(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &aiv1.SubmitMessageFeedbackResponse{
		Feedback: converter.ToFeedbackProto(fb),
	}, nil
}

func (a *api) DeleteMessageFeedback(ctx context.Context, req *aiv1.DeleteMessageFeedbackRequest) (*aiv1.DeleteMessageFeedbackResponse, error) {
	if err := a.svc.DeleteFeedback(ctx, req.GetUserId(), req.GetMessageId()); err != nil {
		return nil, mapServiceError(err)
	}
	return &aiv1.DeleteMessageFeedbackResponse{}, nil
}

// feedbackRatingFromInt — proto int32 → model.FeedbackRating. Любое
// значение, не равное ±1, передаётся как-is — service layer вернёт
// InvalidArgument через IsValid().
func feedbackRatingFromInt(v int32) model.FeedbackRating {
	return model.FeedbackRating(v)
}

// =====================================================================
// Flashcard suggestions (Phase 7)
// =====================================================================

func (a *api) SuggestFlashcards(ctx context.Context, req *aiv1.SuggestFlashcardsRequest) (*aiv1.SuggestFlashcardsResponse, error) {
	items, exhausted, err := a.svc.SuggestFlashcards(ctx, service.SuggestFlashcardsInput{
		UserID:         req.GetUserId(),
		Level:          req.GetLevel(),
		Goal:           req.GetGoal(),
		PainPoint:      req.GetPainPoint(),
		TargetLanguage: req.GetTargetLanguage(),
		NativeLanguage: req.GetNativeLanguage(),
		Count:          req.GetCount(),
		ExcludeWords:   req.GetExcludeWords(),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := make([]*aiv1.FlashcardSuggestion, 0, len(items))
	for _, c := range items {
		out = append(out, &aiv1.FlashcardSuggestion{
			Word:            c.Word,
			Translation:     c.Translation,
			Definition:      c.Definition,
			ExampleSentence: c.ExampleSentence,
			Reason:          c.Reason,
			Pos:             c.POS,
			Level:           c.Level,
		})
	}
	return &aiv1.SuggestFlashcardsResponse{Items: out, Exhausted: exhausted}, nil
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
	case errors.Is(err, service.ErrContentFlagged):
		return status.Error(codes.FailedPrecondition, err.Error())
	default:
		return status.Errorf(codes.Internal, "%v", err)
	}
}
