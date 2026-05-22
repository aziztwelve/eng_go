package providers

import (
	"context"
	"errors"
	"fmt"

	openai "github.com/sashabaranov/go-openai"
)

// ModerationResult — итог проверки содержимого Moderator'ом.
type ModerationResult struct {
	// Flagged — true, если хотя бы одна категория сработала.
	Flagged bool
	// Categories — список сработавших категорий (hate, violence, sexual...).
	Categories []string
	// Reason — короткое человекочитаемое объяснение для UI.
	Reason string
}

// ErrContentFlagged — sentinel: контент заблокирован Moderator'ом.
var ErrContentFlagged = errors.New("content flagged by moderation")

// Moderator — фильтр запрещённого контента. Применяется service-слоем
// до того, как user-text уходит в провайдер, и после получения reply.
//
// Реализации:
//   - OpenAIModerator — OpenAI Moderation API (бесплатное у OpenAI).
//   - NoopModerator — всё пропускает (отключённый режим).
type Moderator interface {
	// Check — анализирует строку. Возвращает Flagged + список сработавших
	// категорий. Ошибка сети не блокирует контент (fail-open) — caller
	// решает, как реагировать.
	Check(ctx context.Context, text string) (*ModerationResult, error)
}

// NoopModerator — пропускает всё, полезен в dev / при отсутствии API-ключа.
type NoopModerator struct{}

// NewNoopModerator — конструктор.
func NewNoopModerator() *NoopModerator { return &NoopModerator{} }

// Check — всегда {Flagged: false}.
func (m *NoopModerator) Check(_ context.Context, _ string) (*ModerationResult, error) {
	return &ModerationResult{Flagged: false}, nil
}

// OpenAIModerator — обёртка над openai.CreateModeration.
type OpenAIModerator struct {
	client *openai.Client
	model  string
}

// NewOpenAIModerator — конструктор. Использует тот же APIKey что и chat;
// модель по умолчанию — `text-moderation-latest`.
func NewOpenAIModerator(apiKey string, baseURL string) (*OpenAIModerator, error) {
	if apiKey == "" {
		return nil, errors.New("openai moderator: APIKey required")
	}
	cfg := openai.DefaultConfig(apiKey)
	if baseURL != "" {
		cfg.BaseURL = baseURL
	}
	return &OpenAIModerator{
		client: openai.NewClientWithConfig(cfg),
		model:  openai.ModerationTextLatest,
	}, nil
}

// Check — выполняет moderations.create.
func (m *OpenAIModerator) Check(ctx context.Context, text string) (*ModerationResult, error) {
	if text == "" {
		return &ModerationResult{Flagged: false}, nil
	}
	resp, err := m.client.Moderations(ctx, openai.ModerationRequest{
		Input: text,
		Model: m.model,
	})
	if err != nil {
		return nil, fmt.Errorf("openai moderate: %w", err)
	}
	if len(resp.Results) == 0 {
		return &ModerationResult{Flagged: false}, nil
	}
	r := resp.Results[0]
	if !r.Flagged {
		return &ModerationResult{Flagged: false}, nil
	}
	cats := collectFlaggedCategories(r.Categories)
	return &ModerationResult{
		Flagged:    true,
		Categories: cats,
		Reason:     "Content flagged by moderation: " + joinNonEmpty(cats, ", "),
	}, nil
}

// collectFlaggedCategories — список булевых полей ResultCategories,
// которые == true.
func collectFlaggedCategories(c openai.ResultCategories) []string {
	var out []string
	if c.Hate {
		out = append(out, "hate")
	}
	if c.HateThreatening {
		out = append(out, "hate/threatening")
	}
	if c.SelfHarm {
		out = append(out, "self-harm")
	}
	if c.Sexual {
		out = append(out, "sexual")
	}
	if c.SexualMinors {
		out = append(out, "sexual/minors")
	}
	if c.Violence {
		out = append(out, "violence")
	}
	if c.ViolenceGraphic {
		out = append(out, "violence/graphic")
	}
	if c.Harassment {
		out = append(out, "harassment")
	}
	if c.HarassmentThreatening {
		out = append(out, "harassment/threatening")
	}
	if c.SelfHarmIntent {
		out = append(out, "self-harm/intent")
	}
	if c.SelfHarmInstructions {
		out = append(out, "self-harm/instructions")
	}
	return out
}

func joinNonEmpty(parts []string, sep string) string {
	if len(parts) == 0 {
		return ""
	}
	out := parts[0]
	for _, p := range parts[1:] {
		if p == "" {
			continue
		}
		out += sep + p
	}
	return out
}
