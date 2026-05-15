package validators

import (
	"encoding/json"
)

type matchPairsContent struct {
	Pairs []struct {
		Left  string `json:"left"`
		Right string `json:"right"`
	} `json:"pairs"`
	Explanation string `json:"explanation"`
}

type matchPairsAnswer struct {
	// Карта left → right из того, что выбрал пользователь.
	Pairs map[string]string `json:"pairs"`
}

// MatchPairsValidator — для каждого `left` проверяем совпадение
// с `right` (case-insensitive, normalized). Score = matched / total.
// IsCorrect = true только если все пары верные.
type MatchPairsValidator struct{}

// Validate — реализация интерфейса.
func (MatchPairsValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c matchPairsContent
	if err := json.Unmarshal(content, &c); err != nil || len(c.Pairs) == 0 {
		return Result{}, ErrInvalidContent
	}
	var a matchPairsAnswer
	if err := json.Unmarshal(answer, &a); err != nil {
		return Result{}, ErrInvalidAnswer
	}

	correct := 0
	for _, p := range c.Pairs {
		got, ok := a.Pairs[p.Left]
		if !ok {
			continue
		}
		if normalize(got) == normalize(p.Right) {
			correct++
		}
	}

	total := len(c.Pairs)
	score := float64(correct) / float64(total)
	correctRaw, _ := json.Marshal(c.Pairs)
	return Result{
		IsCorrect:     correct == total,
		Score:         score,
		Explanation:   c.Explanation,
		CorrectAnswer: correctRaw,
	}, nil
}
