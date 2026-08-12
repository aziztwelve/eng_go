package validators

import "encoding/json"

type listenChooseWordOption struct {
	ID        string `json:"id"`
	AudioText string `json:"audio_text"`
	IsCorrect bool   `json:"is_correct"`
}

type listenChooseWordContent struct {
	SentenceTemplate string                   `json:"sentence_template"`
	AudioText        string                   `json:"audio_text"`
	Language         string                   `json:"language"`
	Options          []listenChooseWordOption `json:"options"`
	Explanation      string                   `json:"explanation"`
}

type listenChooseWordAnswer struct {
	OptionID string `json:"option_id"`
}

// ListenChooseWordValidator validates an audio-only choice for a missing word.
type ListenChooseWordValidator struct{}

func (ListenChooseWordValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c listenChooseWordContent
	if err := json.Unmarshal(content, &c); err != nil || c.SentenceTemplate == "" || c.AudioText == "" || c.Language == "" || len(c.Options) < 2 || len(c.Options) > 3 || c.Explanation == "" {
		return Result{}, ErrInvalidContent
	}

	correctCount := 0
	for _, option := range c.Options {
		if option.ID == "" || option.AudioText == "" {
			return Result{}, ErrInvalidContent
		}
		if option.IsCorrect {
			correctCount++
		}
	}
	if correctCount != 1 {
		return Result{}, ErrInvalidContent
	}

	var a listenChooseWordAnswer
	if err := json.Unmarshal(answer, &a); err != nil || a.OptionID == "" {
		return Result{}, ErrInvalidAnswer
	}

	correctRaw, _ := json.Marshal(c.Options)
	for _, option := range c.Options {
		if option.ID == a.OptionID {
			if option.IsCorrect {
				return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
			}
			return Result{IsCorrect: false, Score: 0, Explanation: c.Explanation, CorrectAnswer: correctRaw}, nil
		}
	}
	return Result{}, ErrInvalidAnswer
}
