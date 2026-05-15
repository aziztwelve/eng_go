package validators

import (
	"encoding/json"
)

// storyScene — упрощённая схема сцены (см. план).
// На phase-2 валидируем только сцены типа "choice".
type storyScene struct {
	Type    string       `json:"type"` // "" / "narrative" / "choice"
	Options []quizOption `json:"options"`
}

type storyContent struct {
	Scenes      []storyScene `json:"scenes"`
	Explanation string       `json:"explanation"`
}

type storyAnswer struct {
	// Choices: на каждый choice-сцен — выбранный индекс или -1 если skip.
	// Длина и порядок должны соответствовать сценам типа "choice"
	// в content.scenes (по их порядку появления).
	Choices []int `json:"choices"`
}

// StoryValidator — для каждой choice-сцены проверяем выбор.
// Score = correct_choices / total_choices. IsCorrect = true только если
// все choice'ы верные. Если в истории нет ни одной choice-сцены —
// считаем «нечего валидировать»: IsCorrect=true, Score=1.
type StoryValidator struct{}

// Validate — реализация интерфейса.
func (StoryValidator) Validate(content, answer json.RawMessage) (Result, error) {
	var c storyContent
	if err := json.Unmarshal(content, &c); err != nil || len(c.Scenes) == 0 {
		return Result{}, ErrInvalidContent
	}

	choiceScenes := make([]storyScene, 0)
	for _, s := range c.Scenes {
		if s.Type == "choice" && len(s.Options) > 0 {
			choiceScenes = append(choiceScenes, s)
		}
	}

	if len(choiceScenes) == 0 {
		return Result{IsCorrect: true, Score: 1, Explanation: c.Explanation}, nil
	}

	var a storyAnswer
	if err := json.Unmarshal(answer, &a); err != nil {
		return Result{}, ErrInvalidAnswer
	}
	if len(a.Choices) != len(choiceScenes) {
		return Result{}, ErrInvalidAnswer
	}

	correct := 0
	for i, scene := range choiceScenes {
		idx := a.Choices[i]
		if idx < 0 || idx >= len(scene.Options) {
			continue
		}
		if scene.Options[idx].IsCorrect {
			correct++
		}
	}

	correctRaw, _ := json.Marshal(c.Scenes)
	score := float64(correct) / float64(len(choiceScenes))
	return Result{
		IsCorrect:     correct == len(choiceScenes),
		Score:         score,
		Explanation:   c.Explanation,
		CorrectAnswer: correctRaw,
	}, nil
}
