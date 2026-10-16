package service

import (
	"encoding/json"
	"fmt"
	"github.com/elearning/course-service/internal/model"
	"github.com/google/uuid"
	"strings"
	"unicode"
)

func normalizeVocabularyAnswer(s string) string {
	return strings.Join(strings.Fields(strings.Map(func(r rune) rune {
		if unicode.IsPunct(r) {
			return -1
		}
		return unicode.ToLower(r)
	}, s)), " ")
}

func evaluateVocabularyAnswer(activity model.VocabularyBankActivity, raw json.RawMessage) (bool, int, string, string, error) {
	var answer struct {
		Value     string `json:"value"`
		Completed bool   `json:"completed"`
		AttemptID string `json:"attempt_id"`
	}
	if err := json.Unmarshal(raw, &answer); err != nil {
		return false, 0, "", "", fmt.Errorf("answer must be an object")
	}
	if _, err := uuid.Parse(answer.AttemptID); err != nil {
		return false, 0, "", "", fmt.Errorf("invalid attempt_id")
	}
	var payload struct {
		Answer string `json:"answer"`
	}
	if err := json.Unmarshal(activity.Payload, &payload); err != nil {
		return false, 0, "", "", fmt.Errorf("invalid activity content")
	}
	switch activity.Type {
	case "word_match", "meaning_choice", "fill_the_blank", "sentence_builder":
		if strings.TrimSpace(answer.Value) == "" {
			return false, 0, "", "", fmt.Errorf("answer.value is required")
		}
		if strings.TrimSpace(payload.Answer) == "" {
			return false, 0, "", "", fmt.Errorf("activity has no answer key")
		}
		correct := normalizeVocabularyAnswer(answer.Value) == normalizeVocabularyAnswer(payload.Answer)
		score := 0
		if correct {
			score = 100
		}
		return correct, score, "checked", answer.AttemptID, nil
	case "discover", "listen", "tap_for_meaning", "repeat", "present_question", "past_question", "future_question", "wh_question", "positive_answer", "negative_answer", "speak_and_review":
		// Exposure and self-practice are acknowledged, never graded as verified speech.
		if !answer.Completed {
			return false, 0, "", "", fmt.Errorf("answer.completed is required for practice")
		}
		if activity.Step >= 9 && strings.TrimSpace(answer.Value) == "" {
			return false, 0, "", "", fmt.Errorf("answer.value is required for practice")
		}
		return true, 0, "practice", answer.AttemptID, nil
	default:
		return false, 0, "", "", fmt.Errorf("unsupported activity type %q", activity.Type)
	}
}
