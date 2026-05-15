// Package converter — proto↔model конвертеры.
package converter

import (
	"encoding/json"

	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/types/known/structpb"
	"google.golang.org/protobuf/types/known/timestamppb"

	stepvalidationv1 "github.com/elearning/shared/pkg/proto/step_validation/v1"
	"github.com/elearning/step-validation-service/internal/model"
)

// StructToJSON — protobuf Struct → raw JSON. Используется для answer'а
// от клиента (фронт шлёт произвольный JSON через Struct).
func StructToJSON(s *structpb.Struct) ([]byte, error) {
	if s == nil {
		return nil, nil
	}
	return protojson.Marshal(s)
}

// JSONToStruct — raw JSON → Struct. Используется для CorrectAnswer
// в ответе и для StepAttempt.answer.
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

// ToAttemptProto — model.Attempt → proto.
func ToAttemptProto(a *model.Attempt) *stepvalidationv1.StepAttempt {
	if a == nil {
		return nil
	}
	answer, _ := JSONToStruct(a.Answer)
	return &stepvalidationv1.StepAttempt{
		Id:          a.ID,
		UserId:      a.UserID,
		StepId:      a.StepID,
		LessonId:    a.LessonID,
		StepType:    string(a.StepType),
		Answer:      answer,
		IsCorrect:   a.IsCorrect,
		Score:       a.Score,
		TimeSpentMs: a.TimeSpentMs,
		CreatedAt:   timestamppb.New(a.CreatedAt),
	}
}
