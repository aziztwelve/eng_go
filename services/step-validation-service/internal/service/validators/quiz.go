package validators

import (
	"encoding/json"
)

type quizOption struct {
	Text      string `json:"text"`
	IsCorrect bool   `json:"is_correct"`
	ID        string `json:"id"` // optional
}

type quizContent struct {
	Options     []quizOption `json:"options"`
	Explanation string       `json:"explanation"`
}

// quizAnswer поддерживает два формата:
//  1. {"index": 2}             — выбран один вариант по индексу.
//  2. {"option_id": "abc"}     — по id (если есть в content).
//  3. {"indices": [0, 2]}      — для multi-select. IsCorrect — только если
//     ровно совпадает множество is_correct=true.
type quizAnswer struct {
	Index    *int    `json:"index"`
	OptionID *string `json:"option_id"`
	Indices  []int   `json:"indices"`
}

// QuizValidator — multiple choice (single или multi-correct).
type QuizValidator struct{}

// Validate — реализация интерфейса.
func (QuizValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c quizContent
	if err := json.Unmarshal(content, &c); err != nil || len(c.Options) == 0 {
		return Result{}, ErrInvalidContent
	}
	var a quizAnswer
	if err := json.Unmarshal(answer, &a); err != nil {
		return Result{}, ErrInvalidAnswer
	}

	correctRaw, _ := json.Marshal(c.Options)

	// Multi-select.
	if len(a.Indices) > 0 {
		want := map[int]struct{}{}
		for i, opt := range c.Options {
			if opt.IsCorrect {
				want[i] = struct{}{}
			}
		}
		got := map[int]struct{}{}
		for _, i := range a.Indices {
			if i < 0 || i >= len(c.Options) {
				return Result{}, ErrInvalidAnswer
			}
			got[i] = struct{}{}
		}
		isCorrect := len(want) == len(got)
		if isCorrect {
			for i := range want {
				if _, ok := got[i]; !ok {
					isCorrect = false
					break
				}
			}
		}
		s := 0.0
		if isCorrect {
			s = 1.0
		}
		return Result{IsCorrect: isCorrect, Score: s, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}

	// Single-select по индексу.
	if a.Index != nil {
		i := *a.Index
		if i < 0 || i >= len(c.Options) {
			return Result{}, ErrInvalidAnswer
		}
		if c.Options[i].IsCorrect {
			return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
		}
		return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
	}

	// Single-select по option_id.
	if a.OptionID != nil {
		for _, opt := range c.Options {
			if opt.ID == *a.OptionID {
				if opt.IsCorrect {
					return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
				}
				return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
			}
		}
		return Result{}, ErrInvalidAnswer
	}

	return Result{}, ErrInvalidAnswer
}
