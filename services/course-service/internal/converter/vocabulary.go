package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/course-service/internal/model"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ToVocabularyEntryProto — model → proto.
func ToVocabularyEntryProto(e *model.VocabularyEntry) *coursev1.VocabularyEntry {
	if e == nil {
		return nil
	}
	return &coursev1.VocabularyEntry{
		Id:              e.ID,
		Language:        e.Language,
		Word:            e.Word,
		Translation:     e.Translation,
		TargetLanguage:  e.TargetLanguage,
		AudioUrl:        e.AudioURL,
		ImageUrl:        e.ImageURL,
		Level:           e.Level,
		Pos:             e.POS,
		Transcription:   e.Transcription,
		Definition:      e.Definition,
		ExampleSentence: e.ExampleSentence,
		CreatedAt:       timestamppb.New(e.CreatedAt),
		UpdatedAt:       timestamppb.New(e.UpdatedAt),
	}
}

// FromCreateVocabularyEntryRequest — proto → model. Используется и для
// единичного Create, и для каждой записи в BulkCreate.
func FromCreateVocabularyEntryRequest(req *coursev1.CreateVocabularyEntryRequest) *model.VocabularyEntry {
	return &model.VocabularyEntry{
		Language:       req.Language,
		Word:           req.Word,
		Translation:    req.Translation,
		TargetLanguage: req.TargetLanguage,
		AudioURL:       req.AudioUrl,
		ImageURL:       req.ImageUrl,
		Level:          req.Level,
		POS:            req.Pos,
		Transcription:  req.Transcription,
	}
}

// ApplyUpdateVocabularyEntryRequest — patch model полями из proto-запроса.
func ApplyUpdateVocabularyEntryRequest(e *model.VocabularyEntry, req *coursev1.UpdateVocabularyEntryRequest) {
	if req.Word != nil {
		e.Word = req.Word.Value
	}
	if req.Translation != nil {
		e.Translation = req.Translation.Value
	}
	if req.AudioUrl != nil {
		e.AudioURL = req.AudioUrl.Value
	}
	if req.ImageUrl != nil {
		e.ImageURL = req.ImageUrl.Value
	}
	if req.Level != nil {
		e.Level = req.Level.Value
	}
	if req.Pos != nil {
		e.POS = req.Pos.Value
	}
	if req.Transcription != nil {
		e.Transcription = req.Transcription.Value
	}
}
