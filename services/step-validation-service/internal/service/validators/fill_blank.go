package validators

import (
	"encoding/json"
)

type fillBlankContent struct {
	CorrectAnswer string   `json:"correct_answer"`
	Alternatives  []string `json:"alternatives"`
	Explanation   string   `json:"explanation"`
}

type fillBlankAnswer struct {
	Answer string `json:"answer"`
}

// FillBlankValidator — точное совпадение после нормализации.
// (Не fuzzy, в отличие от listening — fill_blank обычно про конкретную
// форму глагола / артикль, опечатка должна засчитываться неправильным.)
type FillBlankValidator struct{}

// Validate — реализация интерфейса.
func (FillBlankValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c fillBlankContent
	if err := json.Unmarshal(content, &c); err != nil || c.CorrectAnswer == "" {
		return Result{}, ErrInvalidContent
	}
	var a fillBlankAnswer
	if err := json.Unmarshal(answer, &a); err != nil || a.Answer == "" {
		return Result{}, ErrInvalidAnswer
	}

	want := normalize(c.CorrectAnswer)
	got := normalize(a.Answer)
	correctRaw, _ := json.Marshal(map[string]string{"answer": c.CorrectAnswer})

	if got == want {
		return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}
	for _, alt := range c.Alternatives {
		if got == normalize(alt) {
			return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
		}
	}
	return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
}
