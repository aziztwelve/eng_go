package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/course-service/internal/model"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ToFlashcardProto — model → proto. SM-2 поля (strength / repetitions /
// next_review_at) заполняются только если они заданы в model — это
// контролируется сервисом (cross-svc вызов в srs-service при include_srs).
func ToFlashcardProto(f *model.Flashcard) *coursev1.Flashcard {
	if f == nil {
		return nil
	}
	out := &coursev1.Flashcard{
		Id:              f.ID,
		UserId:          f.UserID,
		Source:          f.Source,
		VocabularyId:    f.VocabularyID,
		Word:            f.Word,
		Translation:     f.Translation,
		Language:        f.Language,
		TargetLanguage:  f.TargetLanguage,
		Definition:      f.Definition,
		ExampleSentence: f.ExampleSentence,
		Transcription:   f.Transcription,
		AudioUrl:        f.AudioURL,
		ImageUrl:        f.ImageURL,
		CreatedAt:       timestamppb.New(f.CreatedAt),
		UpdatedAt:       timestamppb.New(f.UpdatedAt),
		PinnedToday:     f.PinnedToday,
	}
	if f.ArchivedAt != nil {
		out.ArchivedAt = timestamppb.New(*f.ArchivedAt)
	}
	if f.Strength != nil {
		out.Strength = f.Strength
	}
	if f.Repetitions != nil {
		out.Repetitions = f.Repetitions
	}
	if f.NextReviewAt != nil {
		out.NextReviewAt = timestamppb.New(*f.NextReviewAt)
	}
	return out
}

// FromCreateFlashcardRequest — proto CreateFlashcardRequest → model.
// Источник всегда manual (для system-vocabulary используется
// AddVocabularyAsFlashcard).
func FromCreateFlashcardRequest(req *coursev1.CreateFlashcardRequest) *model.Flashcard {
	return &model.Flashcard{
		UserID:          req.UserId,
		Source:          model.FlashcardSourceManual,
		Word:            req.Word,
		Translation:     req.Translation,
		Language:        req.Language,
		TargetLanguage:  req.TargetLanguage,
		Definition:      req.Definition,
		ExampleSentence: req.ExampleSentence,
		Transcription:   req.Transcription,
		AudioURL:        req.AudioUrl,
		ImageURL:        req.ImageUrl,
	}
}

// ApplyUpdateFlashcardRequest — patch model полями из proto Update-запроса.
// Семантика StringValue:
//   - nil поле     → не трогаем существующее значение
//   - .Value == "" → явная очистка (definition → NULL)
//   - .Value != "" → перезапись
func ApplyUpdateFlashcardRequest(f *model.Flashcard, req *coursev1.UpdateFlashcardRequest) {
	if req.Word != nil {
		f.Word = req.Word.Value
	}
	if req.Translation != nil {
		f.Translation = req.Translation.Value
	}
	if req.Definition != nil {
		f.Definition = req.Definition.Value
	}
	if req.ExampleSentence != nil {
		f.ExampleSentence = req.ExampleSentence.Value
	}
	if req.AudioUrl != nil {
		f.AudioURL = req.AudioUrl.Value
	}
	if req.ImageUrl != nil {
		f.ImageURL = req.ImageUrl.Value
	}
	if req.Transcription != nil {
		f.Transcription = req.Transcription.Value
	}
}

// FromBulkCreateFlashcardItem — для каждого item из BulkCreate.
// Source default 'manual', если в payload пусто. VocabularyId опциональный.
func FromBulkCreateFlashcardItem(userID string, item *coursev1.BulkCreateFlashcardsRequest_Item) *model.Flashcard {
	src := item.Source
	if src == "" {
		src = model.FlashcardSourceManual
	}
	return &model.Flashcard{
		UserID:          userID,
		Source:          src,
		VocabularyID:    item.VocabularyId,
		Word:            item.Word,
		Translation:     item.Translation,
		Language:        item.Language,
		TargetLanguage:  item.TargetLanguage,
		Definition:      item.Definition,
		ExampleSentence: item.ExampleSentence,
		Transcription:   item.Transcription,
	}
}
