package validators

import (
	"encoding/json"
)

// listeningContent — поддерживает оба варианта названий:
// `audio_text` (как в плане) и `correct_text` для совместимости.
type listeningContent struct {
	AudioText          string   `json:"audio_text"`
	CorrectText        string   `json:"correct_text"`
	AlternativeAnswers []string `json:"alternative_answers"`
	Explanation        string   `json:"explanation"`
}

type listeningAnswer struct {
	Text string `json:"text"`
}

// ListeningValidator — fuzzy match: нормализуем и считаем
// Levenshtein-distance в рунах. Допускаем до `MaxLevenshtein`
// (по умолчанию 2 — две опечатки) или до 15% длины эталона
// (что больше) — это покрывает длинные предложения.
type ListeningValidator struct {
	// MaxLevenshtein — если 0, используем дефолт (2 или 15% от длины).
	MaxLevenshtein int
}

// Validate — реализация интерфейса.
func (v ListeningValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c listeningContent
	if err := json.Unmarshal(content, &c); err != nil {
		return Result{}, ErrInvalidContent
	}
	target := c.AudioText
	if target == "" {
		target = c.CorrectText
	}
	if target == "" {
		return Result{}, ErrInvalidContent
	}

	var a listeningAnswer
	if err := json.Unmarshal(answer, &a); err != nil || a.Text == "" {
		return Result{}, ErrInvalidAnswer
	}

	want := normalize(target)
	got := normalize(a.Text)
	correctRaw, _ := json.Marshal(map[string]string{"text": target})

	if got == want {
		return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}
	for _, alt := range c.AlternativeAnswers {
		if got == normalize(alt) {
			return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
		}
	}

	max := v.MaxLevenshtein
	if max <= 0 {
		max = 2
		if dyn := len([]rune(want)) * 15 / 100; dyn > max {
			max = dyn
		}
	}

	if levenshtein(got, want) <= max {
		return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}
	for _, alt := range c.AlternativeAnswers {
		if levenshtein(got, normalize(alt)) <= max {
			return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
		}
	}

	return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
}
