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
	case model.StepTypeQuiz:
		if score >= 0.999 {
			return 30
		}
		return 20
	case model.StepTypeListening, model.StepTypeStory:
		return 20
	case model.StepTypeTranslate,
		model.StepTypeMatchPairs,
		model.StepTypeFillBlank,
		model.StepTypeTapWords:
		return 15
	default:
		return 10
	}
}
