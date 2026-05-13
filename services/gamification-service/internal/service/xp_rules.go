package service

import gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"

// XPForStep возвращает XP за конкретный тип шага.
// Документировано в docs/tasks/phase-1-gamification.md.
func XPForStep(kind gamificationv1.StepKind, isCorrect bool, score float64) int {
	if !isCorrect {
		return 0
	}
	switch kind {
	case gamificationv1.StepKind_STEP_KIND_TEXT:
		return 10
	case gamificationv1.StepKind_STEP_KIND_VIDEO:
		return 15
	case gamificationv1.StepKind_STEP_KIND_QUIZ:
		// Перфект → бонус.
		if score >= 0.999 {
			return 30
		}
		return 20
	case gamificationv1.StepKind_STEP_KIND_MATCH,
		gamificationv1.StepKind_STEP_KIND_TRANSLATE,
		gamificationv1.StepKind_STEP_KIND_FILL_BLANK:
		return 15
	case gamificationv1.StepKind_STEP_KIND_LISTENING:
		return 20
	default:
		// Неизвестный шаг — даем базовый прирост.
		return 10
	}
}

// XPForLessonBonus — небольшой бонус за завершение урока сверх суммы XP шагов.
func XPForLessonBonus() int {
	return 10
}
