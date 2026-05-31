package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/course-service/internal/converter"
	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// mapFlashcardErr — мапит sentinel'ы в gRPC коды.
func mapFlashcardErr(err error, defaultCode codes.Code) error {
	switch {
	case err == nil:
		return nil
	case errors.Is(err, repository.ErrFlashcardNotFound):
		return status.Error(codes.NotFound, err.Error())
	case errors.Is(err, repository.ErrFlashcardConflict):
		return status.Error(codes.AlreadyExists, err.Error())
	default:
		return status.Errorf(defaultCode, "%v", err)
	}
}

// ListFlashcards — page + filter по карточкам юзера.
// include_srs — TODO (требует srs.Client расширения).
func (a *api) ListFlashcards(ctx context.Context, req *coursev1.ListFlashcardsRequest) (*coursev1.ListFlashcardsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	filters := repository.FlashcardListFilters{
		UserID:          req.UserId,
		Source:          req.Source,
		OnlyPinnedToday: req.PinnedToday,
		IncludeArchived: req.IncludeArchived,
		Search:          req.Search,
		Limit:           int(req.Limit),
		Offset:          int(req.Offset),
	}
	items, total, err := a.flashcardService.List(ctx, filters)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	out := make([]*coursev1.Flashcard, 0, len(items))
	for _, f := range items {
		out = append(out, converter.ToFlashcardProto(f))
	}
	return &coursev1.ListFlashcardsResponse{Items: out, Total: int32(total)}, nil
}

// GetFlashcard — одна карточка по ID (с проверкой owner).
func (a *api) GetFlashcard(ctx context.Context, req *coursev1.GetFlashcardRequest) (*coursev1.GetFlashcardResponse, error) {
	if req.UserId == "" || req.FlashcardId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and flashcard_id are required")
	}
	f, err := a.flashcardService.Get(ctx, req.UserId, req.FlashcardId)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	return &coursev1.GetFlashcardResponse{Flashcard: converter.ToFlashcardProto(f)}, nil
}

// CreateFlashcard — manual create (без vocabulary_id ref).
func (a *api) CreateFlashcard(ctx context.Context, req *coursev1.CreateFlashcardRequest) (*coursev1.CreateFlashcardResponse, error) {
	f, err := a.flashcardService.Create(ctx, converter.FromCreateFlashcardRequest(req))
	if err != nil {
		return nil, mapFlashcardErr(err, codes.InvalidArgument)
	}
	return &coursev1.CreateFlashcardResponse{Flashcard: converter.ToFlashcardProto(f)}, nil
}

// UpdateFlashcard — partial update.
func (a *api) UpdateFlashcard(ctx context.Context, req *coursev1.UpdateFlashcardRequest) (*coursev1.UpdateFlashcardResponse, error) {
	if req.UserId == "" || req.FlashcardId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and flashcard_id are required")
	}
	existing, err := a.flashcardService.Get(ctx, req.UserId, req.FlashcardId)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	converter.ApplyUpdateFlashcardRequest(existing, req)
	updated, err := a.flashcardService.Update(ctx, existing)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.InvalidArgument)
	}
	return &coursev1.UpdateFlashcardResponse{Flashcard: converter.ToFlashcardProto(updated)}, nil
}

// ArchiveFlashcard — soft-delete (archived_at = NOW()).
func (a *api) ArchiveFlashcard(ctx context.Context, req *coursev1.ArchiveFlashcardRequest) (*coursev1.ArchiveFlashcardResponse, error) {
	if err := a.flashcardService.Archive(ctx, req.UserId, req.FlashcardId); err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	return &coursev1.ArchiveFlashcardResponse{}, nil
}

// BulkCreateFlashcards — batch insert. Дубликаты по (user_id, vocabulary_id)
// пропускаются (skipped_count). Возвращаем созданные items (без skipped).
func (a *api) BulkCreateFlashcards(ctx context.Context, req *coursev1.BulkCreateFlashcardsRequest) (*coursev1.BulkCreateFlashcardsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	if len(req.Items) == 0 {
		return nil, status.Error(codes.InvalidArgument, "items are required")
	}
	models := make([]*model.Flashcard, 0, len(req.Items))
	for _, item := range req.Items {
		models = append(models, converter.FromBulkCreateFlashcardItem(req.UserId, item))
	}
	created, skipped, err := a.flashcardService.BulkCreate(ctx, models)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.InvalidArgument)
	}
	out := make([]*coursev1.Flashcard, 0, len(models))
	for _, f := range models {
		// Только реально вставленные — у них CreatedAt != zero.
		if !f.CreatedAt.IsZero() {
			out = append(out, converter.ToFlashcardProto(f))
		}
	}
	return &coursev1.BulkCreateFlashcardsResponse{
		CreatedCount: int32(created),
		SkippedCount: int32(skipped),
		Items:        out,
	}, nil
}

// AddVocabularyAsFlashcard — идемпотентный add из system-vocabulary
// (lesson auto-add / mistake / ai_suggestion). Резолвит inline-поля из
// vocabulary repo и делегирует в сервис.
func (a *api) AddVocabularyAsFlashcard(ctx context.Context, req *coursev1.AddVocabularyAsFlashcardRequest) (*coursev1.AddVocabularyAsFlashcardResponse, error) {
	if req.UserId == "" || req.VocabularyId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and vocabulary_id are required")
	}
	vocab, err := a.vocabService.Get(ctx, req.VocabularyId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "vocabulary entry not found: %v", err)
	}
	card, created, err := a.flashcardService.AddVocabularyAsFlashcard(ctx, req.UserId, vocab, req.Source)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.InvalidArgument)
	}
	return &coursev1.AddVocabularyAsFlashcardResponse{
		Flashcard: converter.ToFlashcardProto(card),
		Created:   created,
	}, nil
}

// GetFlashcardStats — агрегаты для UI tile блока Library.
// SRS-зависимые поля (learning / mastered / today_completed) пока 0
// (TODO: cross-svc вызов в srs-service).
func (a *api) GetFlashcardStats(ctx context.Context, req *coursev1.GetFlashcardStatsRequest) (*coursev1.GetFlashcardStatsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.flashcardService.Stats(ctx, req.UserId)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	return &coursev1.GetFlashcardStatsResponse{
		TotalCount:     stats.TotalCount,
		LearningCount:  stats.LearningCount,
		MasteredCount:  stats.MasteredCount,
		TodayDue:       stats.TodayDue,
		TodayCompleted: stats.TodayCompleted,
	}, nil
}
