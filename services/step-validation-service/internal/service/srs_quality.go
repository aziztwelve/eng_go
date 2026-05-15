package service

// CalculateSRSQuality — эвристика расчёта SM-2 quality (0..5) из
// данных step-validation submit.
//
// Это политика step-validation-service: только тут известны
// time_spent_ms, attempt_index и (в будущем) used_hint. srs-service
// принимает уже посчитанный quality.
//
// Правила:
//
//   !isCorrect:
//     - attemptIndex == 0 → 1  (первая ошибка — пытался вспомнить)
//     - attemptIndex >= 1 → 0  (не помнит)
//
//   isCorrect:
//     base = 5
//     usedHint            → base -= 2
//     timeSpentMs > 10000 → base -= 1
//     timeSpentMs > 20000 → base -= 1
//     attemptIndex == 1   → base = min(base, 3)  (исправил со 2-й)
//     attemptIndex >= 2   → base = 3
//     clamp [3..5]
func CalculateQuality(isCorrect bool, timeSpentMs int32, usedHint bool, attemptIndex int32) int32 {
	if !isCorrect {
		if attemptIndex == 0 {
			return 1
		}
		return 0
	}
	base := int32(5)
	if usedHint {
		base -= 2
	}
	if timeSpentMs > 10000 {
		base--
	}
	if timeSpentMs > 20000 {
		base--
	}
	if attemptIndex == 1 && base > 3 {
		base = 3
	}
	if attemptIndex >= 2 {
		base = 3
	}
	if base < 3 {
		base = 3
	}
	if base > 5 {
		base = 5
	}
	return base
}
