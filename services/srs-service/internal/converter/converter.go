// Package converter — proto↔model конвертеры srs-service.
package converter

import (
	"encoding/json"

	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/types/known/structpb"
	"google.golang.org/protobuf/types/known/timestamppb"

	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
	"github.com/elearning/srs-service/internal/model"
)

// === ItemType ===

// ItemTypeFromProto — proto enum → domain string.
// ITEM_TYPE_UNSPECIFIED → "" (для "все типы").
func ItemTypeFromProto(t srsv1.ItemType) model.ItemType {
	switch t {
	case srsv1.ItemType_ITEM_TYPE_VOCABULARY:
		return model.ItemTypeVocabulary
	case srsv1.ItemType_ITEM_TYPE_STEP:
		return model.ItemTypeStep
	case srsv1.ItemType_ITEM_TYPE_PHRASE:
		return model.ItemTypePhrase
	default:
		return ""
	}
}

// ItemTypeToProto — domain string → proto enum.
func ItemTypeToProto(t model.ItemType) srsv1.ItemType {
	switch t {
	case model.ItemTypeVocabulary:
		return srsv1.ItemType_ITEM_TYPE_VOCABULARY
	case model.ItemTypeStep:
		return srsv1.ItemType_ITEM_TYPE_STEP
	case model.ItemTypePhrase:
		return srsv1.ItemType_ITEM_TYPE_PHRASE
	default:
		return srsv1.ItemType_ITEM_TYPE_UNSPECIFIED
	}
}

// === SRSItem ===

// ToSRSItemProto — model.SRSItem → proto.
func ToSRSItemProto(i *model.SRSItem) *srsv1.SRSItem {
	if i == nil {
		return nil
	}
	out := &srsv1.SRSItem{
		Id:                i.ID,
		UserId:            i.UserID,
		ItemType:          ItemTypeToProto(i.ItemType),
		ItemId:            i.ItemID,
		EasinessFactor:    i.EasinessFactor,
		IntervalDays:      i.IntervalDays,
		Repetitions:       i.Repetitions,
		TotalReviews:      i.TotalReviews,
		CorrectReviews:    i.CorrectReviews,
		IncorrectReviews:  i.IncorrectReviews,
		AvgResponseTimeMs: i.AvgResponseTimeMs,
		Strength:          i.Strength,
		NextReviewAt:      timestamppb.New(i.NextReviewAt),
		CreatedAt:         timestamppb.New(i.CreatedAt),
		UpdatedAt:         timestamppb.New(i.UpdatedAt),
	}
	if i.LastReviewedAt != nil {
		out.LastReviewedAt = timestamppb.New(*i.LastReviewedAt)
	}
	return out
}

// === ReviewHistory ===

// ToReviewHistoryProto — model.ReviewHistory → proto.
func ToReviewHistoryProto(h *model.ReviewHistory) *srsv1.ReviewHistory {
	if h == nil {
		return nil
	}
	return &srsv1.ReviewHistory{
		Id:                h.ID,
		SrsItemId:         h.SRSItemID,
		UserId:            h.UserID,
		Quality:           h.Quality,
		ResponseTimeMs:    h.ResponseTimeMs,
		UsedHint:          h.UsedHint,
		ReviewedAt:        timestamppb.New(h.ReviewedAt),
		NewIntervalDays:   h.NewIntervalDays,
		NewEasinessFactor: h.NewEasinessFactor,
		NewRepetitions:    h.NewRepetitions,
	}
}

// === Mistake ===

// ToMistakeProto — model.Mistake → proto.
func ToMistakeProto(m *model.Mistake) *srsv1.Mistake {
	if m == nil {
		return nil
	}
	out := &srsv1.Mistake{
		Id:         m.ID,
		UserId:     m.UserID,
		StepId:     m.StepID,
		TimesMade:  m.TimesMade,
		LastMadeAt: timestamppb.New(m.LastMadeAt),
		IsResolved: m.IsResolved,
		CreatedAt:  timestamppb.New(m.CreatedAt),
	}
	if s, err := JSONToStruct(m.IncorrectAnswer); err == nil {
		out.IncorrectAnswer = s
	}
	if m.ResolvedAt != nil {
		out.ResolvedAt = timestamppb.New(*m.ResolvedAt)
	}
	return out
}

// === SkillType ===

// SkillTypeFromProto — proto enum → domain string.
// SKILL_TYPE_UNSPECIFIED → "" (для "все типы").
func SkillTypeFromProto(t srsv1.SkillType) model.SkillType {
	switch t {
	case srsv1.SkillType_SKILL_TYPE_MODULE:
		return model.SkillTypeModule
	case srsv1.SkillType_SKILL_TYPE_LESSON:
		return model.SkillTypeLesson
	default:
		return ""
	}
}

// SkillTypeToProto — domain string → proto enum.
func SkillTypeToProto(t model.SkillType) srsv1.SkillType {
	switch t {
	case model.SkillTypeModule:
		return srsv1.SkillType_SKILL_TYPE_MODULE
	case model.SkillTypeLesson:
		return srsv1.SkillType_SKILL_TYPE_LESSON
	default:
		return srsv1.SkillType_SKILL_TYPE_UNSPECIFIED
	}
}

// === SkillDecay ===

// ToSkillDecayProto — model.SkillDecay → proto.
func ToSkillDecayProto(s *model.SkillDecay) *srsv1.SkillDecay {
	if s == nil {
		return nil
	}
	return &srsv1.SkillDecay{
		UserId:          s.UserID,
		SkillId:         s.SkillID,
		SkillType:       SkillTypeToProto(s.SkillType),
		InitialStrength: s.InitialStrength,
		CurrentStrength: s.CurrentStrength,
		DecayRate:       s.DecayRate,
		LastPracticedAt: timestamppb.New(s.LastPracticedAt),
		CreatedAt:       timestamppb.New(s.CreatedAt),
		UpdatedAt:       timestamppb.New(s.UpdatedAt),
	}
}

// === Struct ↔ JSON ===

// StructToJSON — protobuf Struct → raw JSON.
func StructToJSON(s *structpb.Struct) ([]byte, error) {
	if s == nil {
		return nil, nil
	}
	return protojson.Marshal(s)
}

// JSONToStruct — raw JSON → Struct.
func JSONToStruct(b []byte) (*structpb.Struct, error) {
	if len(b) == 0 {
		return nil, nil
	}
	var v map[string]interface{}
	if err := json.Unmarshal(b, &v); err != nil {
		return nil, err
	}
	return structpb.NewStruct(v)
}
