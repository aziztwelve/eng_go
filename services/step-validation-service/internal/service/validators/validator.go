// Package validators содержит логику проверки ответов по типам шагов.
//
// Контракт: каждый Validator принимает сырой `content` шага (JSON-строка
// из БД) и сырой `answer` пользователя (JSON), возвращает Result.
// Validator не знает о gamification / БД — он чистая функция.
package validators

import (
	"encoding/json"
	"errors"
	"fmt"
)

// Validator — интерфейс проверки ответа на конкретный тип шага.
type Validator interface {
	// Validate возвращает результат, или error при неверной форме
	// `content` или `answer` (это ошибка авторов контента / клиента,
	// а не ответ-«неправильно»).
	Validate(content, answer json.RawMessage) (Result, error)
}

// Result — итог валидации.
type Result struct {
	IsCorrect bool

	// Score 0..1. 1.0 для корректных бинарных типов; для match_pairs /
	// story — доля правильных пар / выборов.
	Score float64

	// CorrectAnswer — каноничный ответ для показа после ошибки.
	// Структура зависит от типа шага. Если nil — фронт сам подставит
	// (для some-types это бессмысленно, например quiz покажет
	// is_correct on options).
	CorrectAnswer json.RawMessage

	// Explanation — текст, заданный автором контента (например
	// "Bebo (drink) is the correct verb").
	Explanation string
}

// ErrInvalidContent — формат content шага не соответствует типу.
var ErrInvalidContent = errors.New("invalid step content for this type")

// ErrInvalidAnswer — формат answer не соответствует типу.
var ErrInvalidAnswer = errors.New("invalid answer for this step type")

// Registry — соответствие тип-шага → Validator.
type Registry map[string]Validator

// NewDefaultRegistry — реестр для всех 7 интерактивных типов
// (квиз + 6 phase-2). Можно подменять отдельные validator'ы в тестах.
func NewDefaultRegistry() Registry {
	return Registry{
		"quiz":                QuizValidator{},
		"translate":           TranslateValidator{},
		"match_pairs":         MatchPairsValidator{},
		"match_pairs_voice":   MatchPairsVoiceValidator{},
		"listening":           ListeningValidator{},
		"listening_shadowing": ListeningValidator{},
		"fill_blank":          FillBlankValidator{},
		"tap_words":           TapWordsValidator{},
		"story":               StoryValidator{},
		"choose_definition":   ChooseDefinitionValidator{},
		"listen_choose_word":  ListenChooseWordValidator{},
		"missing_word":        MissingWordValidator{},
		"complete_chat":       CompleteChatValidator{},
	}
}

// ValidateFor — найти validator по типу и применить.
func (r Registry) ValidateFor(stepType string, content, answer json.RawMessage) (Result, error) {
	v, ok := r[stepType]
	if !ok {
		return Result{}, fmt.Errorf("no validator for step type %q", stepType)
	}
	return v.Validate(content, answer)
}
