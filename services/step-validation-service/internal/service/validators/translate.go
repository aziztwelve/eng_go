package validators

import (
	"encoding/json"
	"strings"
)

// translateContent — схема content для translate (см. план).
type translateContent struct {
	CorrectTranslation string   `json:"correct_translation"`
	AlternativeAnswers []string `json:"alternative_answers"`
	Explanation        string   `json:"explanation"`
}

// translateAnswer — что присылает фронт.
// Поддержим оба варианта: список слов или готовая строка.
type translateAnswer struct {
	Words []string `json:"words"`
	Text  string   `json:"text"`
}

// TranslateValidator — drag&drop перевод. Нормализуем: trim/lower/без
// диакритики/без финальной пунктуации/один пробел между словами.
// Корректно если совпадает с correct_translation или с любым
// alternative_answer.
type TranslateValidator struct{}

// Validate — реализация интерфейса.
func (TranslateValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c translateContent
	if err := json.Unmarshal(content, &c); err != nil || c.CorrectTranslation == "" {
		return Result{}, ErrInvalidContent
	}
	var a translateAnswer
	if err := json.Unmarshal(answer, &a); err != nil {
		return Result{}, ErrInvalidAnswer
	}

	submitted := strings.TrimSpace(a.Text)
	if submitted == "" {
		submitted = strings.Join(a.Words, " ")
	}
	if submitted == "" {
		return Result{}, ErrInvalidAnswer
	}

	want := normalize(c.CorrectTranslation)
	got := normalize(submitted)

	correctRaw, _ := json.Marshal(map[string]string{"text": c.CorrectTranslation})
	if got == want {
		return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}
	for _, alt := range c.AlternativeAnswers {
		if got == normalize(alt) {
			return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
		}
	}

	return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
}
