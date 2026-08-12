package service

import "github.com/elearning/step-validation-service/internal/model"

// xpForStep — сколько XP начислить за корректное прохождение шага.
// Дублирует таблицу из gamification-service/internal/service/xp_rules.go,
// чтобы клиент мог подсказать gamification сумму. Если значения
// разойдутся — единый источник истины пересмотрим.
//
// score >= 0.999 — perfect, для квиза дадим бонус.
func xpForStep(stepType model.StepType, score float64) int {
	switch stepType {
	case model.StepTypeQuiz, model.StepTypeCompleteChat:
		if score >= 0.999 {
			return 30
		}
		return 20
	case model.StepTypeListening, model.StepTypeListeningShadowing, model.StepTypeStory, model.StepTypeListenChooseWord:
		return 20
	case model.StepTypeTranslate,
		model.StepTypeMatchPairs,
		model.StepTypeMatchPairsVoice,
		model.StepTypeFillBlank,
		model.StepTypeTapWords,
		model.StepTypeChooseDefinition,
		model.StepTypeMissingWord:
		return 15
	default:
		return 10
	}
}
