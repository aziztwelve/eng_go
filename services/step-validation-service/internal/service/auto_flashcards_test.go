package service

import (
	"context"
	"encoding/json"
	"testing"

	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
	"github.com/elearning/step-validation-service/internal/client/course"
)

func TestExtractVocabularyIDs(t *testing.T) {
	tests := []struct {
		name     string
		stepType string
		content  string
		want     []string
	}{
		{
			name:     "match_pairs with vocab ids",
			stepType: "match_pairs",
			content:  `{"pairs":[{"left":"Hello","right":"Hola","vocabulary_id":"v1"},{"left":"Bye","right":"Adiós","vocabulary_id":"v2"}]}`,
			want:     []string{"v1", "v2"},
		},
		{
			name:     "match_pairs dedup + skip empty",
			stepType: "match_pairs",
			content:  `{"pairs":[{"vocabulary_id":"v1"},{"vocabulary_id":""},{"vocabulary_id":"v1"}]}`,
			want:     []string{"v1"},
		},
		{
			name:     "fill_blank single",
			stepType: "fill_blank",
			content:  `{"sentence_template":"Yo ___ café","vocabulary_id":"v9"}`,
			want:     []string{"v9"},
		},
		{
			name:     "translate single",
			stepType: "translate",
			content:  `{"source_text":"hi","vocabulary_id":"vt"}`,
			want:     []string{"vt"},
		},
		{
			name:     "listening single",
			stepType: "listening",
			content:  `{"audio_text":"x","vocabulary_id":"vl"}`,
			want:     []string{"vl"},
		},
		{
			name:     "non-vocab step type ignored",
			stepType: "quiz",
			content:  `{"vocabulary_id":"v1"}`,
			want:     nil,
		},
		{
			name:     "no vocab ids → nil",
			stepType: "match_pairs",
			content:  `{"pairs":[{"left":"Hi","right":"Hola"}]}`,
			want:     nil,
		},
		{
			name:     "malformed json → nil",
			stepType: "fill_blank",
			content:  `{not json`,
			want:     nil,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got := extractVocabularyIDs(tt.stepType, []byte(tt.content))
			if len(got) != len(tt.want) {
				t.Fatalf("got %v, want %v", got, tt.want)
			}
			for i := range got {
				if got[i] != tt.want[i] {
					t.Fatalf("got[%d]=%q, want %q", i, got[i], tt.want[i])
				}
			}
		})
	}
}

// makeMatchPairsStep — match_pairs step с vocabulary_id (для auto-add).
func makeMatchPairsStep(t *testing.T) *course.Step {
	t.Helper()
	content := `{"pairs":[
		{"left":"Hello","right":"Hola","vocabulary_id":"voc-1"},
		{"left":"Goodbye","right":"Adiós","vocabulary_id":"voc-2"},
		{"left":"Thanks","right":"Gracias","vocabulary_id":"voc-3"},
		{"left":"Please","right":"Por favor","vocabulary_id":"voc-4"}
	]}`
	return &course.Step{
		ID:       "step-mp",
		LessonID: "lesson-1",
		Type:     "match_pairs",
		Content:  content,
	}
}

func TestSubmit_CorrectAutoAddsFlashcards(t *testing.T) {
	repo := &inMemoryAttempts{}
	courseC := &stubCourse{step: makeMatchPairsStep(t)}
	gamC := &stubGamification{addResp: &gamificationv1.AddXPResponse{}}
	svc := NewSubmissionService(repo, courseC, gamC, &stubSRS{})

	// Correct answer для match_pairs: все пары правильные.
	answer, _ := json.Marshal(map[string]interface{}{
		"pairs": map[string]string{
			"Hello":   "Hola",
			"Goodbye": "Adiós",
			"Thanks":  "Gracias",
			"Please":  "Por favor",
		},
	})
	res, err := svc.Submit(context.Background(), SubmitRequest{
		UserID:      "u1",
		StepID:      "step-mp",
		Answer:      answer,
		TimeSpentMs: 5000,
	})
	if err != nil {
		t.Fatalf("submit: %v", err)
	}
	if !res.IsCorrect {
		t.Fatalf("expected correct answer, got %+v", res)
	}
	if courseC.addFlashcardCalled != 4 {
		t.Fatalf("expected 4 auto-add calls, got %d (%v)",
			courseC.addFlashcardCalled, courseC.addFlashcardVocab)
	}
}

func TestSubmit_WrongDoesNotAutoAdd(t *testing.T) {
	repo := &inMemoryAttempts{}
	courseC := &stubCourse{step: makeMatchPairsStep(t)}
	gamC := &stubGamification{hearts: &gamificationv1.Hearts{Hearts: 4, MaxHearts: 5}}
	svc := NewSubmissionService(repo, courseC, gamC, &stubSRS{})

	// Wrong answer: неверные пары.
	answer, _ := json.Marshal(map[string]interface{}{
		"pairs": map[string]string{
			"Hello": "Adiós",
		},
	})
	res, err := svc.Submit(context.Background(), SubmitRequest{
		UserID:      "u1",
		StepID:      "step-mp",
		Answer:      answer,
		TimeSpentMs: 5000,
	})
	if err != nil {
		t.Fatalf("submit: %v", err)
	}
	if res.IsCorrect {
		t.Fatalf("expected wrong answer")
	}
	if courseC.addFlashcardCalled != 0 {
		t.Fatalf("expected no auto-add on wrong answer, got %d", courseC.addFlashcardCalled)
	}
}

func TestSubmit_AutoAddNonFatalOnError(t *testing.T) {
	repo := &inMemoryAttempts{}
	courseC := &stubCourse{
		step:            makeMatchPairsStep(t),
		addFlashcardErr: context.DeadlineExceeded, // course-service down
	}
	gamC := &stubGamification{addResp: &gamificationv1.AddXPResponse{}}
	svc := NewSubmissionService(repo, courseC, gamC, &stubSRS{})

	answer, _ := json.Marshal(map[string]interface{}{
		"pairs": map[string]string{
			"Hello":   "Hola",
			"Goodbye": "Adiós",
			"Thanks":  "Gracias",
			"Please":  "Por favor",
		},
	})
	res, err := svc.Submit(context.Background(), SubmitRequest{
		UserID:      "u1",
		StepID:      "step-mp",
		Answer:      answer,
		TimeSpentMs: 5000,
	})
	// Auto-add ошибка не должна валить Submit.
	if err != nil {
		t.Fatalf("submit should not fail on auto-add error: %v", err)
	}
	if !res.IsCorrect {
		t.Fatalf("expected correct answer despite auto-add error")
	}
}
