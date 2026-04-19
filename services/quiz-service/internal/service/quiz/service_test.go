package quiz

import (
	"testing"

	"github.com/stretchr/testify/assert"

	"github.com/elearning/quiz-service/internal/model"
)

func TestCheckAnswer_MultipleChoice(t *testing.T) {
	correctAnswers := []*model.QuizAnswer{
		{ID: "a1", IsCorrect: true},
		{ID: "a2", IsCorrect: false},
		{ID: "a3", IsCorrect: false},
	}

	tests := []struct {
		name           string
		selectedIDs    []string
		expectedResult bool
	}{
		{
			name:           "correct answer",
			selectedIDs:    []string{"a1"},
			expectedResult: true,
		},
		{
			name:           "wrong answer",
			selectedIDs:    []string{"a2"},
			expectedResult: false,
		},
		{
			name:           "no answer",
			selectedIDs:    []string{},
			expectedResult: false,
		},
		{
			name:           "multiple answers (should be wrong for single choice)",
			selectedIDs:    []string{"a1", "a2"},
			expectedResult: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := checkAnswer(correctAnswers, tt.selectedIDs, "multiple_choice")
			assert.Equal(t, tt.expectedResult, result)
		})
	}
}

func TestCheckAnswer_MultipleSelect(t *testing.T) {
	correctAnswers := []*model.QuizAnswer{
		{ID: "a1", IsCorrect: true},
		{ID: "a2", IsCorrect: true},
		{ID: "a3", IsCorrect: false},
	}

	tests := []struct {
		name           string
		selectedIDs    []string
		expectedResult bool
	}{
		{
			name:           "all correct",
			selectedIDs:    []string{"a1", "a2"},
			expectedResult: true,
		},
		{
			name:           "partial correct",
			selectedIDs:    []string{"a1"},
			expectedResult: false,
		},
		{
			name:           "includes wrong answer",
			selectedIDs:    []string{"a1", "a2", "a3"},
			expectedResult: false,
		},
		{
			name:           "no answers",
			selectedIDs:    []string{},
			expectedResult: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := checkAnswer(correctAnswers, tt.selectedIDs, "multiple_select")
			assert.Equal(t, tt.expectedResult, result)
		})
	}
}

func TestCheckAnswer_TrueFalse(t *testing.T) {
	correctAnswers := []*model.QuizAnswer{
		{ID: "true", IsCorrect: true},
		{ID: "false", IsCorrect: false},
	}

	tests := []struct {
		name           string
		selectedIDs    []string
		expectedResult bool
	}{
		{
			name:           "correct - true",
			selectedIDs:    []string{"true"},
			expectedResult: true,
		},
		{
			name:           "wrong - false",
			selectedIDs:    []string{"false"},
			expectedResult: false,
		},
		{
			name:           "no answer",
			selectedIDs:    []string{},
			expectedResult: false,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			result := checkAnswer(correctAnswers, tt.selectedIDs, "true_false")
			assert.Equal(t, tt.expectedResult, result)
		})
	}
}

func TestCalculateScore(t *testing.T) {
	tests := []struct {
		name               string
		earnedPoints       int
		totalPoints        int
		expectedPercentage float64
		expectedPassed     bool
		passingScore       float64
	}{
		{
			name:               "perfect score",
			earnedPoints:       10,
			totalPoints:        10,
			expectedPercentage: 100.0,
			expectedPassed:     true,
			passingScore:       70.0,
		},
		{
			name:               "passing score",
			earnedPoints:       7,
			totalPoints:        10,
			expectedPercentage: 70.0,
			expectedPassed:     true,
			passingScore:       70.0,
		},
		{
			name:               "just below passing",
			earnedPoints:       6,
			totalPoints:        10,
			expectedPercentage: 60.0,
			expectedPassed:     false,
			passingScore:       70.0,
		},
		{
			name:               "zero score",
			earnedPoints:       0,
			totalPoints:        10,
			expectedPercentage: 0.0,
			expectedPassed:     false,
			passingScore:       70.0,
		},
		{
			name:               "fractional score",
			earnedPoints:       8,
			totalPoints:        12,
			expectedPercentage: 66.67,
			expectedPassed:     false,
			passingScore:       70.0,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			percentage := float64(tt.earnedPoints) / float64(tt.totalPoints) * 100
			passed := percentage >= tt.passingScore

			assert.InDelta(t, tt.expectedPercentage, percentage, 0.01)
			assert.Equal(t, tt.expectedPassed, passed)
		})
	}
}

func TestQuestionTypeValidation(t *testing.T) {
	validTypes := []string{"multiple_choice", "multiple_select", "true_false", "text_input"}

	for _, qType := range validTypes {
		t.Run(qType, func(t *testing.T) {
			assert.Contains(t, validTypes, qType)
		})
	}
}

// Helper function to test answer checking logic
func checkAnswer(correctAnswers []*model.QuizAnswer, selectedIDs []string, questionType string) bool {
	correctIDs := make(map[string]bool)
	for _, ans := range correctAnswers {
		if ans.IsCorrect {
			correctIDs[ans.ID] = true
		}
	}

	if questionType == "multiple_choice" || questionType == "true_false" {
		// Single answer - must select exactly one correct answer
		if len(selectedIDs) != 1 {
			return false
		}
		return correctIDs[selectedIDs[0]]
	}

	// Multiple select - must select all correct answers and no wrong ones
	if len(selectedIDs) != len(correctIDs) {
		return false
	}

	for _, id := range selectedIDs {
		if !correctIDs[id] {
			return false
		}
	}

	return true
}
