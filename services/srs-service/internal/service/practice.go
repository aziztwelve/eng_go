package service

import (
	"context"

	"github.com/elearning/srs-service/internal/model"
)

// PracticeSource — почему конкретный item оказался в практике.
type PracticeSource int

const (
	PracticeSourceOverdue PracticeSource = 1
	PracticeSourceMistake PracticeSource = 2
	PracticeSourceWeak    PracticeSource = 3
)

// PracticeItem — один элемент сессии.
type PracticeItem struct {
	Source  PracticeSource
	SRSItem *model.SRSItem // nil для чистых mistake-источников
	Mistake *model.Mistake // только при Source = Mistake
	StepID  string         // shortcut для фронта
}

// PracticeInput — параметры генерации.
type PracticeInput struct {
	UserID       string
	Size         int
	RatioOverdue int // если 0 → default 50
	RatioMistake int // если 0 → default 30
	RatioWeak    int // если 0 → default 20
}

// PracticeSession — результат генерации.
type PracticeSession struct {
	Items         []*PracticeItem
	OverdueCount  int32
	MistakeCount  int32
	WeakCount     int32
}

// Default proportions (overdue/mistake/weak).
const (
	defaultRatioOverdue = 50
	defaultRatioMistake = 30
	defaultRatioWeak    = 20

	defaultPracticeSize = 10
	maxPracticeSize     = 50
)

// GeneratePracticeSession — собирает практическую сессию.
//
// Алгоритм:
//   1. Нормализуем ratio (если все нули → defaults).
//   2. Вычисляем quotas по каждому источнику.
//   3. Параллельно (sequential для простоты): GetDueItems, ListMistakes(unresolved),
//      GetWeakItems.
//   4. Шаффлим в порядке quota'ов; дедуплицируем по StepID (для STEP-карточек).
//   5. Если quota одного источника не набралась, добиваем другими.
func (s *service) GeneratePracticeSession(ctx context.Context, in PracticeInput) (*PracticeSession, error) {
	if in.UserID == "" {
		return nil, ErrInvalidArgument
	}
	size := in.Size
	if size <= 0 {
		size = defaultPracticeSize
	}
	if size > maxPracticeSize {
		size = maxPracticeSize
	}

	rOverdue, rMistake, rWeak := in.RatioOverdue, in.RatioMistake, in.RatioWeak
	if rOverdue == 0 && rMistake == 0 && rWeak == 0 {
		rOverdue, rMistake, rWeak = defaultRatioOverdue, defaultRatioMistake, defaultRatioWeak
	}
	total := rOverdue + rMistake + rWeak
	if total <= 0 {
		return nil, ErrInvalidArgument
	}
	quotaOverdue := size * rOverdue / total
	quotaMistake := size * rMistake / total
	quotaWeak := size - quotaOverdue - quotaMistake // остаток на weak

	// 1. Overdue — все STEP-карточки с истёкшим next_review.
	overdueLimit := quotaOverdue * 2 // запас на дедуп
	if overdueLimit < 4 {
		overdueLimit = 4
	}
	overdue, _, err := s.items.GetDue(ctx, in.UserID, "", s.clock(), overdueLimit)
	if err != nil {
		return nil, err
	}

	// 2. Mistakes — unresolved.
	mistakeLimit := quotaMistake * 2
	if mistakeLimit < 4 {
		mistakeLimit = 4
	}
	mistakes, _, err := s.mistakes.List(ctx, in.UserID, 0, mistakeLimit, 0)
	if err != nil {
		return nil, err
	}

	// 3. Weak — top-N с самым низким strength.
	weakLimit := quotaWeak * 2
	if weakLimit < 4 {
		weakLimit = 4
	}
	weak, err := s.items.GetWeak(ctx, in.UserID, "", weakLimit)
	if err != nil {
		return nil, err
	}

	// Собираем с приоритетом overdue → mistake → weak. Дедуп по step_id.
	seen := map[string]bool{}
	var items []*PracticeItem
	cnt := struct{ o, m, w int32 }{}

	add := func(p *PracticeItem) bool {
		if p.StepID != "" {
			if seen[p.StepID] {
				return false
			}
			seen[p.StepID] = true
		}
		items = append(items, p)
		return true
	}

	// Overdue.
	for _, it := range overdue {
		if cnt.o >= int32(quotaOverdue) {
			break
		}
		stepID := ""
		if it.ItemType == model.ItemTypeStep {
			stepID = it.ItemID
		}
		if add(&PracticeItem{Source: PracticeSourceOverdue, SRSItem: it, StepID: stepID}) {
			cnt.o++
		}
	}
	// Mistakes.
	for _, m := range mistakes {
		if cnt.m >= int32(quotaMistake) {
			break
		}
		if add(&PracticeItem{Source: PracticeSourceMistake, Mistake: m, StepID: m.StepID}) {
			cnt.m++
		}
	}
	// Weak.
	for _, it := range weak {
		if cnt.w >= int32(quotaWeak) {
			break
		}
		stepID := ""
		if it.ItemType == model.ItemTypeStep {
			stepID = it.ItemID
		}
		if add(&PracticeItem{Source: PracticeSourceWeak, SRSItem: it, StepID: stepID}) {
			cnt.w++
		}
	}

	// Backfill: если не хватает — добиваем из любых неиспользованных.
	if len(items) < size {
		fill := func(p *PracticeItem) {
			if len(items) < size && add(p) {
				switch p.Source {
				case PracticeSourceOverdue:
					cnt.o++
				case PracticeSourceMistake:
					cnt.m++
				case PracticeSourceWeak:
					cnt.w++
				}
			}
		}
		for _, it := range overdue {
			if len(items) >= size {
				break
			}
			stepID := ""
			if it.ItemType == model.ItemTypeStep {
				stepID = it.ItemID
			}
			fill(&PracticeItem{Source: PracticeSourceOverdue, SRSItem: it, StepID: stepID})
		}
		for _, m := range mistakes {
			if len(items) >= size {
				break
			}
			fill(&PracticeItem{Source: PracticeSourceMistake, Mistake: m, StepID: m.StepID})
		}
		for _, it := range weak {
			if len(items) >= size {
				break
			}
			stepID := ""
			if it.ItemType == model.ItemTypeStep {
				stepID = it.ItemID
			}
			fill(&PracticeItem{Source: PracticeSourceWeak, SRSItem: it, StepID: stepID})
		}
	}

	return &PracticeSession{
		Items:        items,
		OverdueCount: cnt.o,
		MistakeCount: cnt.m,
		WeakCount:    cnt.w,
	}, nil
}
