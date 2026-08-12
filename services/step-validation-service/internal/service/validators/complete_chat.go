package validators

import "encoding/json"

type completeChatLine struct {
	Speaker string `json:"speaker"`
	Text    string `json:"text"`
}

type completeChatOption struct {
	ID        string `json:"id"`
	Text      string `json:"text"`
	IsCorrect bool   `json:"is_correct"`
}

type completeChatContent struct {
	Dialogue    []completeChatLine   `json:"dialogue"`
	Options     []completeChatOption `json:"options"`
	Explanation string               `json:"explanation"`
}

type completeChatAnswer struct {
	OptionID string `json:"option_id"`
}

// CompleteChatValidator validates one missing dialogue reply.
type CompleteChatValidator struct{}

func (CompleteChatValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c completeChatContent
	if err := json.Unmarshal(content, &c); err != nil || len(c.Dialogue) == 0 || len(c.Options) < 2 || c.Explanation == "" {
		return Result{}, ErrInvalidContent
	}
	for _, line := range c.Dialogue {
		if line.Speaker == "" || line.Text == "" {
			return Result{}, ErrInvalidContent
		}
	}
	correctCount := 0
	for _, option := range c.Options {
		if option.ID == "" || option.Text == "" {
			return Result{}, ErrInvalidContent
		}
		if option.IsCorrect {
			correctCount++
		}
	}
	if correctCount != 1 {
		return Result{}, ErrInvalidContent
	}

	var a completeChatAnswer
	if err := json.Unmarshal(answer, &a); err != nil || a.OptionID == "" {
		return Result{}, ErrInvalidAnswer
	}
	correctRaw, _ := json.Marshal(c.Options)
	for _, option := range c.Options {
		if option.ID == a.OptionID {
			score := 0.0
			if option.IsCorrect {
				score = 1
			}
			return Result{IsCorrect: option.IsCorrect, Score: score, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
		}
	}
	return Result{}, ErrInvalidAnswer
}
