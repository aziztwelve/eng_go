package converter

import (
	"encoding/json"

	"google.golang.org/protobuf/types/known/structpb"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/course-service/internal/model"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

func ToVocabularyBankWordSummaryProto(word model.VocabularyBankWordSummary) *coursev1.VocabularyBankWordSummary {
	return &coursev1.VocabularyBankWordSummary{
		ExternalId: word.ExternalID, Word: word.Word, Translation: word.Translation,
		PartOfSpeech: word.PartOfSpeech, CefrLevel: word.CEFRLevel, HasAudio: word.HasAudio,
	}
}

func ToVocabularyBankProgressProto(progress *model.VocabularyBankProgress) *coursev1.VocabularyBankProgress {
	result := &coursev1.VocabularyBankProgress{ExternalId: progress.ExternalID, CurrentStep: int32(progress.CurrentStep), LastActivityAt: timestamppb.New(progress.LastActivityAt)}
	if progress.CompletedAt != nil {
		result.CompletedAt = timestamppb.New(*progress.CompletedAt)
	}
	return result
}

func StructToRawJSONForVocabularyBank(value *structpb.Struct) (json.RawMessage, error) {
	if value == nil {
		return json.RawMessage(`{}`), nil
	}
	encoded, err := json.Marshal(value.AsMap())
	return json.RawMessage(encoded), err
}

func ToVocabularyBankWordDetailProto(word *model.VocabularyBankWordDetail) (*coursev1.VocabularyBankWordDetail, error) {
	result := &coursev1.VocabularyBankWordDetail{
		Word:  ToVocabularyBankWordSummaryProto(word.VocabularyBankWordSummary),
		Lemma: word.Lemma, Meaning: word.Meaning,
	}
	for _, item := range word.QuestionSets {
		positive, err := rawJSONToStruct(item.Positive)
		if err != nil {
			return nil, err
		}
		negative, err := rawJSONToStruct(item.Negative)
		if err != nil {
			return nil, err
		}
		result.QuestionSets = append(result.QuestionSets, &coursev1.VocabularyBankQuestionSet{
			GrammarFamily: item.GrammarFamily, Tense: item.Tense, QuestionForm: item.QuestionForm,
			Question: item.Question, PositiveAnswer: positive, NegativeAnswer: negative,
		})
	}
	for _, item := range word.Activities {
		payload, err := rawJSONToStruct(item.Payload)
		if err != nil {
			return nil, err
		}
		result.Activities = append(result.Activities, &coursev1.VocabularyBankActivity{
			Step: int32(item.Step), Type: item.Type, Instruction: item.Instruction, Payload: payload,
		})
	}
	return result, nil
}

func rawJSONToStruct(raw json.RawMessage) (*structpb.Struct, error) {
	var value map[string]any
	if err := json.Unmarshal(raw, &value); err != nil {
		return nil, err
	}
	return structpb.NewStruct(value)
}
