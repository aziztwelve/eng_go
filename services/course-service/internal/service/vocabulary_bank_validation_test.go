package service

import (
	"context"
	"encoding/json"
	"github.com/elearning/course-service/internal/client/srs"
	"github.com/elearning/course-service/internal/model"
	"testing"
)

const vbTestID = "12345678-1234-4234-8234-123456789012"

func TestVocabularyServerAnswerValidation(t *testing.T) {
	for _, tc := range []struct {
		name, kind, payload, answer string
		correct                     bool
		mode                        string
		invalid                     bool
	}{
		{"choice correct", "word_match", `{"answer":"ACTION"}`, `{"value":"action"}`, true, "checked", false},
		{"choice wrong", "word_match", `{"answer":"ACTION"}`, `{"value":"ACTOR"}`, false, "checked", false},
		{"punctuation", "sentence_builder", `{"answer":"Yes, this is an ACTION."}`, `{"value":"Yes, this is an ACTION"}`, true, "checked", false},
		{"empty rejected", "fill_the_blank", `{"answer":"ACTION"}`, `{}`, false, "", true},
		{"missing key", "meaning_choice", `{}`, `{"value":"action"}`, false, "", true},
		{"practice not graded", "listen", `{}`, `{"completed":true}`, true, "practice", false},
		{"unsupported blocked", "unknown", `{}`, `{"completed":true}`, false, "", true},
	} {
		t.Run(tc.name, func(t *testing.T) {
			var answer map[string]any
			_ = json.Unmarshal([]byte(tc.answer), &answer)
			answer["attempt_id"] = vbTestID
			raw, _ := json.Marshal(answer)
			correct, score, mode, _, err := evaluateVocabularyAnswer(model.VocabularyBankActivity{Type: tc.kind, Payload: json.RawMessage(tc.payload)}, raw)
			if tc.invalid {
				if err == nil {
					t.Fatal("expected invalid answer")
				}
				return
			}
			if err != nil || correct != tc.correct || mode != tc.mode {
				t.Fatalf("correct=%v score=%d mode=%s err=%v", correct, score, mode, err)
			}
			if mode == "practice" && score != 0 {
				t.Fatal("practice must not receive a correctness score")
			}
		})
	}
}

type validatingVocabRepo struct{ fakeVocabBankListRepo }

func (*validatingVocabRepo) GetByExternalID(context.Context, string, string) (*model.VocabularyBankWordDetail, error) {
	return &model.VocabularyBankWordDetail{Activities: []model.VocabularyBankActivity{{Step: 5, Type: "word_match", Payload: json.RawMessage(`{"answer":"ACTION"}`)}}}, nil
}
func TestVocabularyIgnoresClientGradeForNewProtocol(t *testing.T) {
	repo := newFakeVocabBankProgressRepo()
	svc := newVocabBankSvc(&validatingVocabRepo{}, repo)
	result, err := svc.RecordAttempt(context.Background(), model.VocabularyBankAttempt{
		UserID: "u1", ExternalID: "w1", Step: 5, IsCorrect: true, Score: 100, PronunciationScore: 1,
		Answer: json.RawMessage(`{"validation_version":2,"session_user_id":"u1","attempt_id":"` + vbTestID + `","value":"WRONG"}`),
	})
	if err != nil {
		t.Fatal(err)
	}
	if result.IsCorrect || result.Score != 0 || repo.recorded[0].IsCorrect || repo.recorded[0].PronunciationScore != 0 {
		t.Fatal("trusted client grade")
	}
}

type vocabularySRSSpy struct {
	srs.Client
	reviews []srs.VocabularyBankReviewEvent
}

func (s *vocabularySRSSpy) RecordVocabularyBankReview(_ context.Context, e srs.VocabularyBankReviewEvent) error {
	s.reviews = append(s.reviews, e)
	return nil
}
func TestVocabularyFirstCompletionSchedulesConservativeReviewOnce(t *testing.T) {
	spy := &vocabularySRSSpy{}
	svc := NewVocabularyBankService(&fakeVocabBankListRepo{}, newFakeVocabBankProgressRepo(), spy)
	a := model.VocabularyBankAttempt{UserID: "u1", ExternalID: "word", Step: 15, IsCorrect: true, Score: 100}
	for i := 0; i < 2; i++ {
		if _, err := svc.RecordAttempt(context.Background(), a); err != nil {
			t.Fatal(err)
		}
	}
	if len(spy.reviews) != 1 || spy.reviews[0].Quality != 3 {
		t.Fatalf("unexpected reviews: %v", spy.reviews)
	}
}
func TestVocabularyRejectsAnotherSessionsQueuedAnswer(t *testing.T) {
	svc := newVocabBankSvc(&validatingVocabRepo{}, newFakeVocabBankProgressRepo())
	_, err := svc.RecordAttempt(context.Background(), model.VocabularyBankAttempt{UserID: "bob", ExternalID: "word", Step: 5,
		Answer: json.RawMessage(`{"validation_version":2,"session_user_id":"alice","attempt_id":"` + vbTestID + `","value":"ACTION"}`)})
	if err == nil {
		t.Fatal("another account's queued answer was accepted")
	}
}

func TestLegacyActualAnswerIsCheckedByServer(t *testing.T) {
	repo := newFakeVocabBankProgressRepo()
	svc := newVocabBankSvc(&validatingVocabRepo{}, repo)
	result, err := svc.RecordAttempt(context.Background(), model.VocabularyBankAttempt{UserID: "u1", ExternalID: "w1", Step: 5, IsCorrect: true, Score: 100, Answer: json.RawMessage(`{"value":"WRONG"}`)})
	if err != nil {
		t.Fatal(err)
	}
	if result.CanAdvance || result.IsCorrect || repo.recorded[0].Score != 0 {
		t.Fatal("trusted legacy client grade")
	}
}
func TestLegacyScoreOnlyIsExposureNotVerifiedGrade(t *testing.T) {
	repo := newFakeVocabBankProgressRepo()
	svc := newVocabBankSvc(&validatingVocabRepo{}, repo)
	result, err := svc.RecordAttempt(context.Background(), model.VocabularyBankAttempt{UserID: "u1", ExternalID: "w1", Step: 5, IsCorrect: true, Score: 100})
	if err != nil {
		t.Fatal(err)
	}
	if !result.CanAdvance || !result.IsCorrect || result.AssessmentMode != "practice" || repo.recorded[0].IsCorrect || repo.recorded[0].Score != 0 {
		t.Fatal("old APK compatibility must not fabricate a grade")
	}
}
