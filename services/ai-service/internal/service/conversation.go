package service

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/prompts"
	"github.com/elearning/ai-service/internal/providers"
	"github.com/elearning/ai-service/internal/repository"
	"github.com/elearning/ai-service/internal/scenarios"
)

// historyDepth — сколько последних сообщений добавляем в prompt.
const historyDepth = 10

// StartConversationInput — параметры новой беседы.
type StartConversationInput struct {
	UserID         string
	Scenario       string
	TargetLanguage string
	UserLevel      string
	Title          string
}

// StartConversation — создаёт conversation. Если scenario — roleplay,
// сразу пишется initial_message от AI (assistant role).
func (s *Service) StartConversation(ctx context.Context, in StartConversationInput) (*model.Conversation, *model.Message, error) {
	if in.UserID == "" {
		return nil, nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if in.Scenario == "" {
		return nil, nil, fmt.Errorf("%w: scenario required", ErrInvalidArgument)
	}

	// Подтягиваем профиль для дефолтов.
	profile := s.fetchProfile(ctx, in.UserID)
	target := firstNonEmpty(in.TargetLanguage, profile.TargetLanguage, "en")
	level := firstNonEmpty(in.UserLevel, profile.UserLevel, "B1")

	title := in.Title
	var scenarioInitial string

	// Если scenario — roleplay, валидируем существование и берём данные.
	if strings.HasPrefix(in.Scenario, "roleplay_") {
		sc, ok := scenarios.GetByID(in.Scenario)
		if !ok {
			return nil, nil, fmt.Errorf("%w: %s", ErrScenarioNotFound, in.Scenario)
		}
		if title == "" {
			title = sc.Title
		}
		// Если в scenario указан язык — overrideим target.
		if sc.Language != "" {
			target = sc.Language
		}
		if sc.UserLevel != "" {
			level = sc.UserLevel
		}
		scenarioInitial = sc.InitialMessage
	}

	if in.Scenario == model.ScenarioFreeChat && title == "" {
		title = "Free chat"
	}
	if in.Scenario == model.ScenarioTutorQA && title == "" {
		title = "Tutor Q&A"
	}

	conv := &model.Conversation{
		UserID:         in.UserID,
		Title:          title,
		Scenario:       in.Scenario,
		TargetLanguage: target,
		UserLevel:      level,
		Model:          s.cfg.DefaultModelChat,
	}
	if err := s.conversations.Create(ctx, conv); err != nil {
		return nil, nil, fmt.Errorf("create conversation: %w", err)
	}

	var initialMsg *model.Message
	if scenarioInitial != "" {
		initialMsg = &model.Message{
			ConversationID: conv.ID,
			Role:           model.RoleAssistant,
			Content:        scenarioInitial,
			CreatedAt:      time.Now().UTC(),
		}
		if err := s.messages.Create(ctx, initialMsg); err != nil {
			return nil, nil, fmt.Errorf("create initial message: %w", err)
		}
		if err := s.conversations.UpdateStats(ctx, conv.ID, 0, 0, initialMsg.CreatedAt); err != nil {
			return nil, nil, fmt.Errorf("update stats: %w", err)
		}
		conv.MessageCount = 1
		conv.LastMessageAt = initialMsg.CreatedAt
	}

	return conv, initialMsg, nil
}

// SendMessageInput — параметры отправки сообщения.
type SendMessageInput struct {
	UserID         string
	ConversationID string
	Content        string
	WantAudio      bool
}

// SendMessage — пишет user-message, генерит assistant reply через provider,
// сохраняет, инкрементит quota, возвращает оба сообщения.
func (s *Service) SendMessage(ctx context.Context, in SendMessageInput) (*model.Message, *model.Message, error) {
	if in.UserID == "" || in.ConversationID == "" {
		return nil, nil, fmt.Errorf("%w: user_id and conversation_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.Content) == "" {
		return nil, nil, fmt.Errorf("%w: content must not be empty", ErrInvalidArgument)
	}

	conv, err := s.conversations.GetByID(ctx, in.ConversationID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, nil, ErrNotFound
		}
		return nil, nil, fmt.Errorf("get conversation: %w", err)
	}
	if conv.UserID != in.UserID {
		return nil, nil, ErrForbidden
	}
	if conv.IsEnded() {
		return nil, nil, fmt.Errorf("%w: conversation ended", ErrInvalidArgument)
	}

	// Quota check (не для tutor_qa? — нет, всё одинаково: chat counter).
	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindChat, 1); err != nil {
		return nil, nil, err
	}

	// Сохраняем user-message.
	userMsg := &model.Message{
		ConversationID: conv.ID,
		Role:           model.RoleUser,
		Content:        in.Content,
		CreatedAt:      time.Now().UTC(),
	}
	if err := s.messages.Create(ctx, userMsg); err != nil {
		return nil, nil, fmt.Errorf("create user message: %w", err)
	}

	// Берём историю (last N) для prompt'а.
	history, err := s.messages.GetLastN(ctx, conv.ID, historyDepth)
	if err != nil {
		return nil, nil, fmt.Errorf("get history: %w", err)
	}

	// Profile для system-prompt'а.
	profile := s.fetchProfile(ctx, in.UserID)
	scenarioCtx, scenarioRole, vocabFocus := scenarioFor(conv.Scenario)

	systemPrompt := prompts.ConversationSystemPrompt(prompts.ConversationContext{
		UserLevel:      conv.UserLevel,
		TargetLanguage: conv.TargetLanguage,
		NativeLanguage: firstNonEmpty(profile.NativeLanguage, "en"),
		ScenarioRole:   scenarioRole,
		ScenarioCtx:    scenarioCtx,
		VocabFocus:     vocabFocus,
	})

	// Собираем prompt: system + history.
	promptMessages := []providers.PromptMessage{
		{Role: "system", Content: systemPrompt},
	}
	for _, m := range history {
		promptMessages = append(promptMessages, providers.PromptMessage{
			Role:    string(m.Role),
			Content: m.Content,
		})
	}

	chatResp, err := s.provider.Chat(ctx, promptMessages, providers.ChatOptions{
		Model:      conv.Model,
		JSONOutput: true,
	})
	if err != nil {
		return nil, nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}

	// Парсим JSON-ответ.
	reply, translation, corrections := parseConversationReply(chatResp.Content)

	assistantMsg := &model.Message{
		ConversationID: conv.ID,
		Role:           model.RoleAssistant,
		Content:        reply,
		Translation:    translation,
		Corrections:    corrections,
		TokensUsed:     chatResp.TokensUsed,
		CostUSD:        chatResp.CostUSD,
		CreatedAt:      time.Now().UTC(),
	}

	if in.WantAudio {
		ttsResp, err := s.provider.SynthesizeTTS(ctx, reply, providers.TTSOptions{
			Language: conv.TargetLanguage,
		})
		if err == nil && ttsResp != nil {
			assistantMsg.AudioURL = ttsResp.AudioURL
			assistantMsg.CostUSD += ttsResp.CostUSD
		}
		// Ошибка TTS не валит SendMessage — ассистентский reply всё равно
		// возвращается, просто без audio_url.
	}

	if err := s.messages.Create(ctx, assistantMsg); err != nil {
		return nil, nil, fmt.Errorf("create assistant message: %w", err)
	}

	// Обновляем counters в conversation.
	if err := s.conversations.UpdateStats(ctx, conv.ID, chatResp.TokensUsed, chatResp.CostUSD, assistantMsg.CreatedAt); err != nil {
		// Non-fatal: логируется внешним кодом, conversation продолжает работать.
		_ = err
	}

	// Increment quota.
	_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindChat, 1)

	return userMsg, assistantMsg, nil
}

// ListConversations — пагинированный список пользователя.
func (s *Service) ListConversations(ctx context.Context, userID string, limit, offset int) ([]*model.Conversation, int64, error) {
	if userID == "" {
		return nil, 0, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	return s.conversations.ListByUser(ctx, userID, limit, offset)
}

// GetConversation — конверсация + сообщения. Проверяет ownership.
func (s *Service) GetConversation(ctx context.Context, userID, convID string) (*model.Conversation, []*model.Message, error) {
	if userID == "" || convID == "" {
		return nil, nil, fmt.Errorf("%w: user_id and conversation_id required", ErrInvalidArgument)
	}
	conv, err := s.conversations.GetByID(ctx, convID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, nil, ErrNotFound
		}
		return nil, nil, err
	}
	if conv.UserID != userID {
		return nil, nil, ErrForbidden
	}
	msgs, err := s.messages.ListByConversation(ctx, convID)
	if err != nil {
		return nil, nil, fmt.Errorf("list messages: %w", err)
	}
	return conv, msgs, nil
}

// DeleteConversation — soft-delete (ended_at). Проверяет ownership.
func (s *Service) DeleteConversation(ctx context.Context, userID, convID string) error {
	if userID == "" || convID == "" {
		return fmt.Errorf("%w: user_id and conversation_id required", ErrInvalidArgument)
	}
	conv, err := s.conversations.GetByID(ctx, convID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return ErrNotFound
		}
		return err
	}
	if conv.UserID != userID {
		return ErrForbidden
	}
	if err := s.conversations.MarkEnded(ctx, convID); err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return ErrNotFound
		}
		return err
	}
	return nil
}

// =====================================================================
// Helpers
// =====================================================================

// scenarioFor — извлекает context/role/vocab для conv.Scenario. Для
// free_chat / tutor_qa возвращает пустые значения.
func scenarioFor(id string) (ctxStr, role string, vocab []string) {
	if !strings.HasPrefix(id, "roleplay_") {
		return "", "", nil
	}
	sc, ok := scenarios.GetByID(id)
	if !ok {
		return "", "", nil
	}
	return sc.Context, sc.AIRole, sc.VocabularyFocus
}

// parseConversationReply — парсит JSON-ответ провайдера.
//
// Если JSON не валиден — fallback: весь content считаем reply, без
// перевода и поправок. Это страхует от случая, когда модель забыла
// формат.
func parseConversationReply(content string) (reply, translation string, corrections []model.Correction) {
	var parsed struct {
		Reply       string             `json:"reply"`
		Translation string             `json:"translation"`
		Corrections []model.Correction `json:"corrections"`
	}
	if err := json.Unmarshal([]byte(content), &parsed); err != nil || parsed.Reply == "" {
		return content, "", nil
	}
	return parsed.Reply, parsed.Translation, parsed.Corrections
}

// firstNonEmpty — первая непустая строка или дефолт.
func firstNonEmpty(values ...string) string {
	for _, v := range values {
		if v != "" {
			return v
		}
	}
	return ""
}
