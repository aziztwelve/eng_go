package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/course-service/internal/converter"
	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ListVocabulary возвращает страницу записей словаря.
func (a *api) ListVocabulary(ctx context.Context, req *coursev1.ListVocabularyRequest) (*coursev1.ListVocabularyResponse, error) {
	filters := repository.VocabularyListFilters{
		Search: req.Search,
		Limit:  int(req.Limit),
		Offset: int(req.Offset),
	}
	if req.Language != nil {
		v := req.Language.Value
		filters.Language = &v
	}
	if req.TargetLanguage != nil {
		v := req.TargetLanguage.Value
		filters.TargetLanguage = &v
	}
	if req.Level != nil {
		v := req.Level.Value
		filters.Level = &v
	}
	if req.Pos != nil {
		v := req.Pos.Value
		filters.POS = &v
	}

	entries, total, err := a.vocabService.List(ctx, filters)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to list vocabulary: %v", err)
	}
	out := make([]*coursev1.VocabularyEntry, 0, len(entries))
	for _, e := range entries {
		out = append(out, converter.ToVocabularyEntryProto(e))
	}
	return &coursev1.ListVocabularyResponse{Entries: out, Total: int32(total)}, nil
}

// GetVocabularyEntry возвращает одну запись по ID.
func (a *api) GetVocabularyEntry(ctx context.Context, req *coursev1.GetVocabularyEntryRequest) (*coursev1.GetVocabularyEntryResponse, error) {
	if req.Id == "" {
		return nil, status.Error(codes.InvalidArgument, "id is required")
	}
	e, err := a.vocabService.Get(ctx, req.Id)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "vocabulary entry not found: %v", err)
	}
	return &coursev1.GetVocabularyEntryResponse{Entry: converter.ToVocabularyEntryProto(e)}, nil
}

// CreateVocabularyEntry — admin endpoint.
func (a *api) CreateVocabularyEntry(ctx context.Context, req *coursev1.CreateVocabularyEntryRequest) (*coursev1.CreateVocabularyEntryResponse, error) {
	e, err := a.vocabService.Create(ctx, converter.FromCreateVocabularyEntryRequest(req))
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "failed to create vocabulary entry: %v", err)
	}
	return &coursev1.CreateVocabularyEntryResponse{Entry: converter.ToVocabularyEntryProto(e)}, nil
}

// UpdateVocabularyEntry — admin endpoint.
func (a *api) UpdateVocabularyEntry(ctx context.Context, req *coursev1.UpdateVocabularyEntryRequest) (*coursev1.UpdateVocabularyEntryResponse, error) {
	if req.Id == "" {
		return nil, status.Error(codes.InvalidArgument, "id is required")
	}
	existing, err := a.vocabService.Get(ctx, req.Id)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "vocabulary entry not found: %v", err)
	}
	converter.ApplyUpdateVocabularyEntryRequest(existing, req)
	updated, err := a.vocabService.Update(ctx, existing)
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "failed to update: %v", err)
	}
	return &coursev1.UpdateVocabularyEntryResponse{Entry: converter.ToVocabularyEntryProto(updated)}, nil
}

// DeleteVocabularyEntry — admin endpoint.
func (a *api) DeleteVocabularyEntry(ctx context.Context, req *coursev1.DeleteVocabularyEntryRequest) (*coursev1.DeleteVocabularyEntryResponse, error) {
	if req.Id == "" {
		return nil, status.Error(codes.InvalidArgument, "id is required")
	}
	if err := a.vocabService.Delete(ctx, req.Id); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete: %v", err)
	}
	return &coursev1.DeleteVocabularyEntryResponse{Success: true}, nil
}

// BulkCreateVocabulary — массовый импорт. Дубликаты по uniq-ключу
// (language, word, target_language) пропускаются (skipped).
func (a *api) BulkCreateVocabulary(ctx context.Context, req *coursev1.BulkCreateVocabularyRequest) (*coursev1.BulkCreateVocabularyResponse, error) {
	if len(req.Entries) == 0 {
		return nil, status.Error(codes.InvalidArgument, "entries are required")
	}
	models := make([]*model.VocabularyEntry, 0, len(req.Entries))
	for _, r := range req.Entries {
		models = append(models, converter.FromCreateVocabularyEntryRequest(r))
	}
	ids, created, skipped, err := a.vocabService.BulkCreate(ctx, models)
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "failed to bulk create: %v", err)
	}
	return &coursev1.BulkCreateVocabularyResponse{
		Ids:     ids,
		Created: int32(created),
		Skipped: int32(skipped),
	}, nil
}
