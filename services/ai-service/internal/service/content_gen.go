package service

import (
	"context"
	"encoding/json"
	"fmt"

	"github.com/elearning/ai-service/internal/prompts"
	"github.com/elearning/ai-service/internal/providers"
)

// GenerateExerciseInput — параметры генерации (admin-only).
type GenerateExerciseInput struct {
	ExerciseType   string
	Vocabulary     []string
	UserLevel      string
	TargetLanguage string
	NativeLanguage string
}

// GenerateExerciseResult — JSON-структура упражнения + метаданные.
type GenerateExerciseResult struct {
	Content    map[string]any // парсится в structpb на api-слое
	TokensUsed int32
	CostUSD    float64
}

// GenerateExercise — admin-фича. Без сохранения в БД, без quota
// (admin'ы — отдельный кейс).
func (s *Service) GenerateExercise(ctx context.Context, in GenerateExerciseInput) (*GenerateExerciseResult, error) {
	if in.ExerciseType == "" {
		return nil, fmt.Errorf("%w: exercise_type required", ErrInvalidArgument)
	}

	pCtx := prompts.ExerciseContext{
		ExerciseType:   in.ExerciseType,
		Vocabulary:     in.Vocabulary,
		UserLevel:      in.UserLevel,
		TargetLanguage: in.TargetLanguage,
		NativeLanguage: in.NativeLanguage,
	}
	resp, err := s.provider.Chat(ctx,
		[]providers.PromptMessage{
			{Role: "system", Content: prompts.ExerciseSystemPrompt(pCtx)},
			{Role: "user", Content: fmt.Sprintf("Generate one exercise of type %q.", in.ExerciseType)},
		},
		providers.ChatOptions{Model: s.cfg.DefaultModelChat, JSONOutput: true},
	)
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}

	var parsed map[string]any
	if err := json.Unmarshal([]byte(resp.Content), &parsed); err != nil {
		// Если не JSON — оборачиваем raw content.
		parsed = map[string]any{"raw": resp.Content}
	}

	return &GenerateExerciseResult{
		Content:    parsed,
		TokensUsed: resp.TokensUsed,
		CostUSD:    resp.CostUSD,
	}, nil
}
