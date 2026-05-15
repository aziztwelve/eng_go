package validators

import (
	"encoding/json"
	"strings"
)

type tapWordsContent struct {
	CorrectWords []string `json:"correct_words"`
	Explanation  string   `json:"explanation"`
}

type tapWordsAnswer struct {
	Words []string `json:"words"`
}

// TapWordsValidator — порядок слов важен. Сравниваем как нормализованные
// массивы. Никакой fuzzy-логики: лишнее/перепутанное слово → -1.
type TapWordsValidator struct{}

// Validate — реализация интерфейса.
func (TapWordsValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c tapWordsContent
	if err := json.Unmarshal(content, &c); err != nil || len(c.CorrectWords) == 0 {
		return Result{}, ErrInvalidContent
	}
	var a tapWordsAnswer
	if err := json.Unmarshal(answer, &a); err != nil {
		return Result{}, ErrInvalidAnswer
	}

	correctRaw, _ := json.Marshal(c.CorrectWords)

	if len(a.Words) != len(c.CorrectWords) {
		return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}

	matched := 0
	for i, w := range a.Words {
		if normalize(w) == normalize(c.CorrectWords[i]) {
			matched++
		}
	}

	score := float64(matched) / float64(len(c.CorrectWords))
	return Result{
		IsCorrect:     matched == len(c.CorrectWords),
		Score:         score,
		Explanation:   c.Explanation,
		CorrectAnswer: correctRaw,
	}, nil
}

// joinWords — оставлено как util для тестов.
func joinWords(w []string) string { return strings.Join(w, " ") }
