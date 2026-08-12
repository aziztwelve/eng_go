package validators

import (
	"encoding/json"
	"strings"
)

type missingWordContent struct {
	SentenceTemplate string `json:"sentence_template"`
	CorrectAnswer    string `json:"correct_answer"`
	HintPrefix       string `json:"hint_prefix"`
	Explanation      string `json:"explanation"`
}

type missingWordAnswer struct {
	Text string `json:"text"`
}

// MissingWordValidator requires a typed word; the client shows only its prefix.
type MissingWordValidator struct{}

func (MissingWordValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c missingWordContent
	if err := json.Unmarshal(content, &c); err != nil || c.SentenceTemplate == "" || c.CorrectAnswer == "" || c.HintPrefix == "" || c.Explanation == "" {
		return Result{}, ErrInvalidContent
	}
	prefix := normalize(c.HintPrefix)
	correct := normalize(c.CorrectAnswer)
	if len([]rune(prefix)) > 2 || !strings.HasPrefix(correct, prefix) {
		return Result{}, ErrInvalidContent
	}

	var a missingWordAnswer
	if err := json.Unmarshal(answer, &a); err != nil || a.Text == "" {
		return Result{}, ErrInvalidAnswer
	}
	correctRaw, _ := json.Marshal(map[string]string{"text": c.CorrectAnswer})
	if normalize(a.Text) == correct {
		return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}
	return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
}
