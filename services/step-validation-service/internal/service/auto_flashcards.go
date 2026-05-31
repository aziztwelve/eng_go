package service

import (
	"context"
	"encoding/json"

	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
	"github.com/elearning/step-validation-service/internal/client/course"
)

// Phase 7: auto-add из уроков.
//
// При correct ответе на vocabulary-bearing шаг (match_pairs / fill_blank /
// translate / listening) извлекаем `vocabulary_id` из step.content и
// добавляем как личные flashcards юзера (source='lesson').
//
// Идемпотентность обеспечена UNIQUE-индексом на стороне course-service —
// повторный correct по тому же шагу не плодит дубли.
//
// Хук полностью non-fatal: ошибки логируются, Submit не валится. Только
// шаги, чьи pairs несут `vocabulary_id`, дают эффект (inline-only content
// без ссылки на system vocabulary — пропускается, дедуп невозможен).

// stepTypesWithVocabulary — типы, из которых извлекаем словарь.
var stepTypesWithVocabulary = map[string]bool{
	"match_pairs": true,
	"fill_blank":  true,
	"translate":   true,
	"listening":   true,
}

// matchPairsContent — нас интересует только vocabulary_id у пар.
type matchPairsContent struct {
	Pairs []struct {
		VocabularyID string `json:"vocabulary_id"`
	} `json:"pairs"`
}

// singleVocabContent — fill_blank / translate / listening ссылаются на
// одно слово (если автор указал vocabulary_id).
type singleVocabContent struct {
	VocabularyID string `json:"vocabulary_id"`
}

// extractVocabularyIDs — достаёт уникальные непустые vocabulary_id из
// контента шага в зависимости от типа.
func extractVocabularyIDs(stepType string, content []byte) []string {
	if !stepTypesWithVocabulary[stepType] || len(content) == 0 {
		return nil
	}

	seen := make(map[string]struct{})
	var out []string
	add := func(id string) {
		if id == "" {
			return
		}
		if _, ok := seen[id]; ok {
			return
		}
		seen[id] = struct{}{}
		out = append(out, id)
	}

	switch stepType {
	case "match_pairs":
		var c matchPairsContent
		if err := json.Unmarshal(content, &c); err != nil {
			return nil
		}
		for _, p := range c.Pairs {
			add(p.VocabularyID)
		}
	default: // fill_blank / translate / listening
		var c singleVocabContent
		if err := json.Unmarshal(content, &c); err != nil {
			return nil
		}
		add(c.VocabularyID)
	}
	return out
}

// autoAddFlashcards — best-effort hook. Вызывается из Submit только при
// correct ответе. Не возвращает ошибок (логирует).
func (s *submissionService) autoAddFlashcards(ctx context.Context, userID string, step *course.Step) {
	if step == nil {
		return
	}
	ids := extractVocabularyIDs(step.Type, []byte(step.Content))
	if len(ids) == 0 {
		return
	}

	added := 0
	for _, vocabID := range ids {
		if err := s.courseClient.AddVocabularyAsFlashcard(ctx, userID, vocabID, "lesson"); err != nil {
			logger.Warn(ctx, "auto-add flashcard failed (non-fatal)",
				zap.String("step_id", step.ID),
				zap.String("user_id", userID),
				zap.String("vocabulary_id", vocabID),
				zap.Error(err),
			)
			continue
		}
		added++
	}
	if added > 0 {
		logger.Info(ctx, "auto-added flashcards from lesson",
			zap.String("step_id", step.ID),
			zap.String("user_id", userID),
			zap.Int("count", added),
		)
	}
}
