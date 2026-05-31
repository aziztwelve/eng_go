package service

import (
	"context"
	"encoding/json"
	"errors"
	"os"
	"testing"

	"github.com/elearning/platform/pkg/logger"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
	"github.com/elearning/step-validation-service/internal/client/course"
	"github.com/elearning/step-validation-service/internal/client/gamification"
	"github.com/elearning/step-validation-service/internal/client/srs"
	"github.com/elearning/step-validation-service/internal/model"
)

// TestMain — инициализируем глобальный logger как nop, иначе logger.Info
// в auto-add hook'е упадёт в nil-pointer.
func TestMain(m *testing.M) {
	logger.InitForBenchmark()
	os.Exit(m.Run())
}

// === fakes ===

type inMemoryAttempts struct {
	items []*model.Attempt
}

func (r *inMemoryAttempts) Create(_ context.Context, a *model.Attempt) error {
	r.items = append(r.items, a)
	return nil
}

func (r *inMemoryAttempts) CountByUserStep(_ context.Context, userID, stepID string) (int32, error) {
	var n int32
	for _, a := range r.items {
		if a.UserID == userID && a.StepID == stepID {
			n++
		}
	}
	return n, nil
}

func (r *inMemoryAttempts) ListByUserStep(_ context.Context, userID, stepID string, limit, offset int) ([]*model.Attempt, int, error) {
	out := []*model.Attempt{}
	for _, a := range r.items {
		if a.UserID == userID && a.StepID == stepID {
			out = append(out, a)
		}
	}
	if offset > len(out) {
		offset = len(out)
	}
	out = out[offset:]
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, len(out), nil
}

type stubCourse struct {
	step           *course.Step
	getErr         error
	markCalled     int
	markErr        error
	lastMarkedStep string

	// Phase 7 auto-add hook tracking.
	addFlashcardCalled int
	addFlashcardVocab  []string
	addFlashcardErr    error
}

func (c *stubCourse) GetStep(_ context.Context, _ string) (*course.Step, error) {
	if c.getErr != nil {
		return nil, c.getErr
	}
	return c.step, nil
}

func (c *stubCourse) MarkStepComplete(_ context.Context, req course.MarkCompletedRequest) error {
	c.markCalled++
	c.lastMarkedStep = req.StepID
	return c.markErr
}

func (c *stubCourse) AddVocabularyAsFlashcard(_ context.Context, _, vocabularyID, _ string) error {
	c.addFlashcardCalled++
	c.addFlashcardVocab = append(c.addFlashcardVocab, vocabularyID)
	return c.addFlashcardErr
}

type stubGamification struct {
	addCalled  int
	loseCalled int
	addAmount  int32
	addResp    *gamificationv1.AddXPResponse
	hearts     *gamificationv1.Hearts
}

func (g *stubGamification) AddXP(_ context.Context, req gamification.AddXPRequest) (*gamificationv1.AddXPResponse, error) {
	g.addCalled++
	g.addAmount = req.Amount
	return g.addResp, nil
}

func (g *stubGamification) LoseHeart(_ context.Context, _, _ string) (*gamificationv1.Hearts, error) {
	g.loseCalled++
	return g.hearts, nil
}

type stubSRS struct {
	reviewCalled    int
	mistakeCalled   int
	resolveCalled   int
	lastQuality     int32
	lastMistakeStep string
	resolveCount    int32
}

func (s *stubSRS) RecordReview(_ context.Context, req srs.RecordReviewRequest) (*srsv1.SRSItem, error) {
	s.reviewCalled++
	s.lastQuality = req.Quality
	return nil, nil
}

func (s *stubSRS) RecordMistake(_ context.Context, _, stepID string, _ json.RawMessage) error {
	s.mistakeCalled++
	s.lastMistakeStep = stepID
	return nil
}

func (s *stubSRS) ResolveMistakesForStep(_ context.Context, _, _ string) (int32, error) {
	s.resolveCalled++
	return s.resolveCount, nil
}

// === tests ===

func makeQuizStep(t *testing.T) *course.Step {
	t.Helper()
	content := map[string]interface{}{
		"options": []map[string]interface{}{
			{"text": "water", "is_correct": true},
			{"text": "fire", "is_correct": false},
		},
	}
	b, _ := json.Marshal(content)
	return &course.Step{
		ID:       "step-1",
		LessonID: "lesson-1",
		Type:     "quiz",
		Content:  string(b),
	}
}

func TestSubmit_CorrectFiresAddXPAndMarkComplete(t *testing.T) {
	repo := &inMemoryAttempts{}
	courseC := &stubCourse{step: makeQuizStep(t)}
	gamC := &stubGamification{addResp: &gamificationv1.AddXPResponse{}}
	srsC := &stubSRS{}
	svc := NewSubmissionService(repo, courseC, gamC, srsC)

	answer, _ := json.Marshal(map[string]int{"index": 0})
	res, err := svc.Submit(context.Background(), SubmitRequest{
		UserID:      "u1",
		StepID:      "step-1",
		Answer:      answer,
		TimeSpentMs: 5000,
	})
	if err != nil {
		t.Fatalf("submit: %v", err)
	}
	if !res.IsCorrect || res.Score != 1 {
		t.Fatalf("expected correct, got %+v", res)
	}
	if gamC.addCalled != 1 {
		t.Fatalf("AddXP must be called once, got %d", gamC.addCalled)
	}
	if gamC.addAmount != 30 {
		t.Fatalf("perfect quiz = 30 XP, got %d", gamC.addAmount)
	}
	if gamC.loseCalled != 0 {
		t.Fatalf("LoseHeart must not be called on correct")
	}
	if courseC.markCalled != 1 || courseC.lastMarkedStep != "step-1" {
		t.Fatalf("MarkStepComplete must be called once with step-1")
	}
	if len(repo.items) != 1 {
		t.Fatalf("attempt must be saved")
	}
	// Phase 3: SRS hook.
	if srsC.reviewCalled != 1 {
		t.Fatalf("SRS RecordReview must be called once on correct, got %d", srsC.reviewCalled)
	}
	if srsC.lastQuality < 3 {
		t.Fatalf("quality must be >= 3 on first correct, got %d", srsC.lastQuality)
	}
	if srsC.resolveCalled != 1 {
		t.Fatalf("ResolveMistakesForStep must be called once on correct, got %d", srsC.resolveCalled)
	}
	if srsC.mistakeCalled != 0 {
		t.Fatalf("RecordMistake must NOT be called on correct")
	}
}

func TestSubmit_WrongFiresLoseHeart(t *testing.T) {
	repo := &inMemoryAttempts{}
	courseC := &stubCourse{step: makeQuizStep(t)}
	gamC := &stubGamification{
		hearts: &gamificationv1.Hearts{Hearts: 4, MaxHearts: 5},
	}
	srsC := &stubSRS{}
	svc := NewSubmissionService(repo, courseC, gamC, srsC)

	answer, _ := json.Marshal(map[string]int{"index": 1})
	res, err := svc.Submit(context.Background(), SubmitRequest{
		UserID: "u1", StepID: "step-1", Answer: answer,
	})
	if err != nil {
		t.Fatalf("submit: %v", err)
	}
	if res.IsCorrect {
		t.Fatalf("expected wrong")
	}
	if gamC.addCalled != 0 {
		t.Fatalf("AddXP must NOT be called on wrong")
	}
	if gamC.loseCalled != 1 {
		t.Fatalf("LoseHeart must be called once, got %d", gamC.loseCalled)
	}
	if res.Hearts == nil || res.Hearts.Hearts != 4 {
		t.Fatalf("hearts must be returned in result")
	}
	if courseC.markCalled != 0 {
		t.Fatalf("MarkStepComplete must NOT be called on wrong")
	}
	// Phase 3: SRS hook на wrong.
	if srsC.reviewCalled != 1 {
		t.Fatalf("SRS RecordReview must be called once on wrong, got %d", srsC.reviewCalled)
	}
	if srsC.lastQuality > 2 {
		t.Fatalf("quality must be <= 2 on wrong, got %d", srsC.lastQuality)
	}
	if srsC.mistakeCalled != 1 || srsC.lastMistakeStep != "step-1" {
		t.Fatalf("RecordMistake must be called once with step-1, got called=%d step=%q",
			srsC.mistakeCalled, srsC.lastMistakeStep)
	}
	if srsC.resolveCalled != 0 {
		t.Fatalf("ResolveMistakesForStep must NOT be called on wrong")
	}
}

func TestSubmit_NoStep_ReturnsNotFound(t *testing.T) {
	svc := NewSubmissionService(
		&inMemoryAttempts{},
		&stubCourse{getErr: errors.New("rpc not found")},
		&stubGamification{},
		nil, // nil → noop SRS
	)
	answer, _ := json.Marshal(map[string]int{"index": 0})
	_, err := svc.Submit(context.Background(), SubmitRequest{
		UserID: "u", StepID: "x", Answer: answer,
	})
	if !errors.Is(err, ErrStepNotFound) {
		t.Fatalf("expected ErrStepNotFound, got %v", err)
	}
}

func TestSubmit_RequiresFields(t *testing.T) {
	svc := NewSubmissionService(&inMemoryAttempts{}, &stubCourse{}, &stubGamification{}, nil)
	if _, err := svc.Submit(context.Background(), SubmitRequest{}); err == nil {
		t.Fatalf("expected error on empty request")
	}
	if _, err := svc.Submit(context.Background(), SubmitRequest{UserID: "u", StepID: "s"}); !errors.Is(err, ErrInvalidAnswer) {
		t.Fatalf("expected ErrInvalidAnswer for empty answer")
	}
}
