package validators

import "encoding/json"

type matchPairsVoiceContent struct {
	Pairs []struct {
		ID   string `json:"id"`
		Text string `json:"text"`
	} `json:"pairs"`
	Explanation string `json:"explanation"`
}

type matchPairsVoiceAnswer struct {
	Pairs map[string]string `json:"pairs"`
}

// MatchPairsVoiceValidator checks the text selected for every audio pair.
type MatchPairsVoiceValidator struct{}

func (MatchPairsVoiceValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c matchPairsVoiceContent
	if err := json.Unmarshal(content, &c); err != nil || len(c.Pairs) == 0 {
		return Result{}, ErrInvalidContent
	}
	var a matchPairsVoiceAnswer
	if err := json.Unmarshal(answer, &a); err != nil {
		return Result{}, ErrInvalidAnswer
	}

	correct := 0
	for _, pair := range c.Pairs {
		if pair.ID == "" || pair.Text == "" {
			return Result{}, ErrInvalidContent
		}
		if normalize(a.Pairs[pair.ID]) == normalize(pair.Text) {
			correct++
		}
	}
	correctAnswer, _ := json.Marshal(c.Pairs)
	return Result{
		IsCorrect:     correct == len(c.Pairs),
		Score:         float64(correct) / float64(len(c.Pairs)),
		Explanation:   c.Explanation,
		CorrectAnswer: correctAnswer,
	}, nil
}
