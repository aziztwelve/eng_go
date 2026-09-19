package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/course-service/internal/converter"
	"github.com/elearning/course-service/internal/repository"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

func (a *api) ListVocabularyBankWords(ctx context.Context, req *coursev1.ListVocabularyBankWordsRequest) (*coursev1.ListVocabularyBankWordsResponse, error) {
	entries, total, err := a.vocabBankService.List(ctx, repository.VocabularyBankListFilters{
		CEFRLevel: req.CefrLevel, Search: req.Search, Locale: req.Locale,
		Limit: int(req.Limit), Offset: int(req.Offset),
	})
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "list vocabulary bank: %v", err)
	}
	response := &coursev1.ListVocabularyBankWordsResponse{Total: int32(total)}
	for _, entry := range entries {
		response.Entries = append(response.Entries, converter.ToVocabularyBankWordSummaryProto(entry))
	}
	return response, nil
}

func (a *api) GetVocabularyBankWord(ctx context.Context, req *coursev1.GetVocabularyBankWordRequest) (*coursev1.GetVocabularyBankWordResponse, error) {
	entry, err := a.vocabBankService.Get(ctx, req.ExternalId, req.Locale)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "vocabulary bank word not found: %v", err)
	}
	converted, err := converter.ToVocabularyBankWordDetailProto(entry)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "convert vocabulary bank word: %v", err)
	}
	return &coursev1.GetVocabularyBankWordResponse{Entry: converted}, nil
}
