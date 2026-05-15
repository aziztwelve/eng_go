// Package service — бизнес-логика srs-service.
//
// SM-2 — SuperMemo 2 алгоритм. Источник:
//   https://www.supermemo.com/en/archives1990-2015/english/ol/sm2
//
// Алгоритм:
//
//   На карточке храним (EF, I, n), где
//     EF — Easiness Factor (default 2.5, min 1.3)
//     I  — Interval в днях
//     n  — счётчик правильных ответов подряд
//
//   Получаем quality q ∈ [0..5]:
//     5 — perfect, 4 — correct with hesitation, 3 — correct with difficulty,
//     2/1/0 — incorrect (от лёгкого вспоминания до полного блэкаута).
//
//   Если q >= 3:
//     n == 0 → I = 1
//     n == 1 → I = 6
//     n >= 2 → I = round(I_prev * EF)
//     n += 1
//
//   Если q < 3:
//     n = 0
//     I = 1
//
//   EF (всегда):
//     EF = EF + (0.1 - (5-q) * (0.08 + (5-q) * 0.02))
//     EF = max(1.3, EF)
package service

import (
	"math"
	"time"

	"github.com/elearning/srs-service/internal/model"
)

// ApplySM2 — обновляет SM-2 поля карточки и статистику.
// Возвращает новое значение strength (тоже в item проставлено).
//
// now — текущее время; следующий ревью = now + interval_days.
func ApplySM2(item *model.SRSItem, quality int32, responseTimeMs int32, now time.Time) {
	if quality < 0 {
		quality = 0
	}
	if quality > 5 {
		quality = 5
	}

	if quality >= 3 {
		// Правильный ответ.
		switch {
		case item.Repetitions == 0:
			item.IntervalDays = 1
		case item.Repetitions == 1:
			item.IntervalDays = 6
		default:
			item.IntervalDays = int32(math.Round(float64(item.IntervalDays) * item.EasinessFactor))
			if item.IntervalDays < 1 {
				item.IntervalDays = 1
			}
		}
		item.Repetitions++
		item.CorrectReviews++
	} else {
		// Неправильный ответ.
		item.Repetitions = 0
		item.IntervalDays = 1
		item.IncorrectReviews++
	}

	// EF обновляется всегда.
	q := float64(quality)
	ef := item.EasinessFactor + (0.1 - (5-q)*(0.08+(5-q)*0.02))
	if ef < model.MinEasinessFactor {
		ef = model.MinEasinessFactor
	}
	item.EasinessFactor = ef

	// Расписание.
	item.LastReviewedAt = &now
	item.NextReviewAt = now.AddDate(0, 0, int(item.IntervalDays))

	// Статистика.
	item.TotalReviews++
	if responseTimeMs > 0 {
		// Скользящее среднее ответа (без хранения отдельной таблицы).
		// avg_new = avg_old + (rt - avg_old) / N
		if item.AvgResponseTimeMs == 0 {
			item.AvgResponseTimeMs = responseTimeMs
		} else {
			item.AvgResponseTimeMs += (responseTimeMs - item.AvgResponseTimeMs) / item.TotalReviews
		}
	}

	item.Strength = calculateStrength(item)
}

// calculateStrength — производная характеристика 0..1.
// accuracy * min(1, reps/10).
// Если total_reviews == 0 — strength = 0.
func calculateStrength(item *model.SRSItem) float64 {
	if item.TotalReviews == 0 {
		return 0
	}
	accuracy := float64(item.CorrectReviews) / float64(item.TotalReviews)
	repFactor := math.Min(1.0, float64(item.Repetitions)/10.0)
	s := accuracy * repFactor
	if s < 0 {
		return 0
	}
	if s > 1 {
		return 1
	}
	return s
}

// CalculateQuality — эвристика расчёта quality (0..5) из исходных
// данных step-validation:
//   - isCorrect       — правильный ли ответ
//   - timeSpentMs     — затраченное время
//   - usedHint        — использовал ли подсказку
//   - attemptIndex    — порядковый номер попытки (0-based; 0 — первая)
//
// Правила:
//   - !isCorrect:
//     - attemptIndex == 0 → 1 (первая попытка с ошибкой, сложно вспомнил)
//     - attemptIndex >= 1 → 0 (не помнит)
//   - isCorrect:
//     - base = 5
//     - usedHint               → base -= 2
//     - timeSpentMs > 10000    → base -= 1
//     - timeSpentMs > 20000    → ещё -= 1
//     - attemptIndex == 1      → base = min(base, 3) (исправил со 2 раза)
//     - attemptIndex >= 2      → base = 3
//     - clamp в [3..5]
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
