package providers

import (
	"context"
	"crypto/md5"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"strings"
)

// MockProvider — детерминированный stub для разработки и тестов.
//
// Возвращает реалистичные tokens_used / cost_usd / структурированные
// JSON-ответы, чтобы вся business-logic (caching, quota, conversion)
// тестировалась без реальных API-ключей.
type MockProvider struct{}

// NewMockProvider — конструктор.
func NewMockProvider() *MockProvider {
	return &MockProvider{}
}

// Name — "mock".
func (p *MockProvider) Name() string { return "mock" }

// Chat — анализирует последнее user-сообщение и возвращает осмысленный
// ответ. Если опция JSONOutput — формирует JSON по соглашению, который
// сервисный слой парсит для conversation / explain / writing / etc.
func (p *MockProvider) Chat(ctx context.Context, messages []PromptMessage, opts ChatOptions) (*ChatResponse, error) {
	if len(messages) == 0 {
		return nil, fmt.Errorf("messages must not be empty")
	}
	systemPrompt := ""
	lastUser := ""
	for _, m := range messages {
		if m.Role == "system" && systemPrompt == "" {
			systemPrompt = m.Content
		}
		if m.Role == "user" {
			lastUser = m.Content
		}
	}

	model := opts.Model
	if model == "" {
		model = "mock-default"
	}

	content := buildMockReply(systemPrompt, lastUser, opts.JSONOutput)

	// Реалистичный счёт токенов.
	inputTokens := int32(estimateTokens(messages))
	outputTokens := int32(estimateTokenCount(content))
	totalTokens := inputTokens + outputTokens

	return &ChatResponse{
		Content:    content,
		TokensUsed: totalTokens,
		CostUSD:    estimateCost(model, inputTokens, outputTokens),
		Model:      model,
	}, nil
}

// Transcribe — возвращает target_text с лёгким искажением (для теста
// pronunciation accuracy).
func (p *MockProvider) Transcribe(ctx context.Context, audio []byte, opts TranscribeOptions) (*TranscribeResponse, error) {
	if len(audio) == 0 {
		return nil, fmt.Errorf("audio must not be empty")
	}
	// Используем длину audio как seed для детерминизма.
	hash := md5.Sum(audio)
	confidence := 0.8 + float64(hash[0])/1275.0 // 0.8..1.0

	// Mock-транскрипт: используем хеш как «псевдо-распознанный» текст.
	// В реальной реализации тут будет результат Whisper API.
	text := fmt.Sprintf("mock transcription %s", hex.EncodeToString(hash[:4]))

	return &TranscribeResponse{
		Text:       text,
		Confidence: confidence,
		CostUSD:    estimateAudioCost(len(audio)),
	}, nil
}

// SynthesizeTTS — возвращает фейковый audio_url, без реальной записи.
func (p *MockProvider) SynthesizeTTS(ctx context.Context, text string, opts TTSOptions) (*TTSResponse, error) {
	if text == "" {
		return &TTSResponse{}, nil
	}
	hash := md5.Sum([]byte(text + "|" + opts.Voice + "|" + opts.Language))
	url := fmt.Sprintf("https://example.com/mock-tts/%s.mp3", hex.EncodeToString(hash[:]))
	// Примерная оценка длительности: 150 wpm = 2.5 wps = ~0.4s/word.
	words := len(strings.Fields(text))
	durationMs := int32(words * 400)
	return &TTSResponse{
		AudioURL:   url,
		DurationMs: durationMs,
		CostUSD:    float64(len(text)) * 0.000005, // mock: $5 / 1M chars
	}, nil
}

// =====================================================================
// Helpers
// =====================================================================

// buildMockReply — основная эвристика mock-ответа.
//
// Если в system prompt'е есть «JSON» (т.е. провайдер должен вернуть
// структурированный ответ), генерим JSON по типу запроса:
//   - conversation: { reply, translation, corrections }
//   - explain: { explanation }
//   - writing: { overall_score, ..., corrected_text, feedback }
//   - exercise: { type, ... }  (по типу указанного в input)
//
// Иначе — plain-text «I understand: ...».
func buildMockReply(systemPrompt, userMsg string, wantJSON bool) string {
	if !wantJSON {
		return fmt.Sprintf("I hear you say: %q. Tell me more.", userMsg)
	}

	lower := strings.ToLower(systemPrompt)
	switch {
	case strings.Contains(lower, "language tutor") || strings.Contains(lower, "conversation"):
		return mockConversationJSON(userMsg)
	case strings.Contains(lower, "explain"):
		return mockExplainJSON(userMsg)
	case strings.Contains(lower, "evaluate this writing") || strings.Contains(lower, "writing assessment"):
		return mockWritingJSON(userMsg)
	case strings.Contains(lower, "generate") && strings.Contains(lower, "exercise"):
		return mockExerciseJSON(userMsg)
	case strings.Contains(lower, "tutor") && strings.Contains(lower, "answer"):
		return mockTutorJSON(userMsg)
	default:
		return fmt.Sprintf(`{"reply":"Mock reply to: %s"}`, escapeJSON(userMsg))
	}
}

func mockConversationJSON(userMsg string) string {
	corrections := []map[string]string{}
	// Простая эвристика грамматических ошибок: если есть "i go" / "i goes"
	// (типичные beginner mistakes) — генерим коррекцию.
	if strings.Contains(strings.ToLower(userMsg), "i goes") {
		corrections = append(corrections, map[string]string{
			"original":    "I goes",
			"corrected":   "I go",
			"explanation": "First-person singular uses 'go', not 'goes'.",
		})
	}
	if strings.Contains(strings.ToLower(userMsg), "yo soy") && strings.Contains(strings.ToLower(userMsg), "frio") {
		corrections = append(corrections, map[string]string{
			"original":    "Yo soy frío",
			"corrected":   "Yo tengo frío",
			"explanation": "In Spanish, 'I'm cold' uses 'tener' (to have), not 'ser' (to be).",
		})
	}

	reply := "¡Qué interesante! ¿Puedes contarme más?"
	translation := "How interesting! Can you tell me more?"

	resp := map[string]any{
		"reply":       reply,
		"translation": translation,
		"corrections": corrections,
	}
	b, _ := json.Marshal(resp)
	return string(b)
}

func mockExplainJSON(userMsg string) string {
	resp := map[string]any{
		"explanation": fmt.Sprintf("Your answer differs from the expected form. " +
			"In this context, the verb conjugation should match the subject's " +
			"person and number. Try reviewing the verb table for first-person " +
			"singular forms."),
	}
	b, _ := json.Marshal(resp)
	return string(b)
}

func mockWritingJSON(userMsg string) string {
	// Простой расчёт: длина текста → score.
	score := 60 + (len(userMsg) % 30)
	if score > 95 {
		score = 95
	}
	resp := map[string]any{
		"overall_score":    score,
		"grammar_score":    score - 5,
		"vocabulary_score": score + 2,
		"coherence_score":  score - 3,
		"style_score":      score,
		"corrected_text":   userMsg,
		"feedback": []map[string]string{
			{
				"category":   "grammar",
				"issue":      "Mock-detected minor issue",
				"suggestion": "Consider revising the verb tense for consistency.",
			},
			{
				"category":   "vocabulary",
				"issue":      "Could use more varied vocabulary",
				"suggestion": "Try synonyms to enrich your text.",
			},
		},
	}
	b, _ := json.Marshal(resp)
	return string(b)
}

func mockExerciseJSON(userMsg string) string {
	// Generic exercise structure. Caller (admin) сам интерпретирует.
	resp := map[string]any{
		"type":          "translate",
		"prompt":        "Translate the following sentence:",
		"sentence":      "I would like a coffee, please.",
		"target":        "Quisiera un café, por favor.",
		"alternatives":  []string{"Quisiera un café, por favor.", "Me gustaría un café."},
		"vocabulary_focus": []string{"would like", "coffee", "please"},
	}
	b, _ := json.Marshal(resp)
	return string(b)
}

func mockTutorJSON(userMsg string) string {
	resp := map[string]any{
		"answer": fmt.Sprintf("Great question! In language learning, the topic '%s' is fundamental. "+
			"It usually involves understanding context, pattern recognition, and consistent practice. "+
			"Would you like a specific example?", strings.TrimSpace(userMsg)),
	}
	b, _ := json.Marshal(resp)
	return string(b)
}

// estimateTokens — грубая оценка токенов для prompt-сообщений.
// Правило: ~1 token ≈ 4 символа английского текста.
func estimateTokens(messages []PromptMessage) int {
	total := 0
	for _, m := range messages {
		total += estimateTokenCount(m.Content) + 4 // 4 за role/separators
	}
	return total
}

func estimateTokenCount(text string) int {
	if text == "" {
		return 0
	}
	n := len(text) / 4
	if n < 1 {
		return 1
	}
	return n
}

// estimateCost — берёт тарифы phase-5 doc'а, fallback gpt-4o-mini.
func estimateCost(model string, inputTokens, outputTokens int32) float64 {
	in, out := tariff(model)
	return (float64(inputTokens)*in + float64(outputTokens)*out) / 1_000_000
}

// tariff — $/1M tokens (input, output).
func tariff(model string) (input, output float64) {
	switch {
	case strings.HasPrefix(model, "gpt-4o-mini"):
		return 0.15, 0.60
	case strings.HasPrefix(model, "gpt-4o"):
		return 2.50, 10.00
	case strings.Contains(model, "haiku"):
		return 0.25, 1.25
	case strings.Contains(model, "sonnet"):
		return 3.00, 15.00
	default:
		return 0.15, 0.60
	}
}

// estimateAudioCost — Whisper $0.006/minute. У mock'а аудио в bytes,
// так что считаем как ~16 KB/sec → 1 min = ~960 KB.
func estimateAudioCost(bytes int) float64 {
	minutes := float64(bytes) / (960 * 1024)
	return minutes * 0.006
}

func escapeJSON(s string) string {
	b, _ := json.Marshal(s)
	if len(b) >= 2 {
		return string(b[1 : len(b)-1])
	}
	return s
}
