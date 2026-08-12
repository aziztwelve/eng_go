package validators

import "encoding/json"

type chooseDefinitionOption struct {
	ID        string `json:"id"`
	Text      string `json:"text"`
	IsCorrect bool   `json:"is_correct"`
}

type chooseDefinitionContent struct {
	Word        string                   `json:"word"`
	Options     []chooseDefinitionOption `json:"options"`
	Explanation string                   `json:"explanation"`
}

type chooseDefinitionAnswer struct {
	Index *int `json:"index"`
}

// ChooseDefinitionValidator validates one correct definition for a word.
type ChooseDefinitionValidator struct{}

func (ChooseDefinitionValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c chooseDefinitionContent
	if err := json.Unmarshal(content, &c); err != nil || c.Word == "" || len(c.Options) < 2 || c.Explanation == "" {
		return Result{}, ErrInvalidContent
	}

	correctCount := 0
	for _, option := range c.Options {
		if option.Text == "" {
			return Result{}, ErrInvalidContent
		}
		if option.IsCorrect {
			correctCount++
		}
	}
	if correctCount != 1 {
		return Result{}, ErrInvalidContent
	}

	var a chooseDefinitionAnswer
	if err := json.Unmarshal(answer, &a); err != nil || a.Index == nil || *a.Index < 0 || *a.Index >= len(c.Options) {
		return Result{}, ErrInvalidAnswer
	}

	correctRaw, _ := json.Marshal(c.Options)
	if c.Options[*a.Index].IsCorrect {
		return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}
	return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
}
