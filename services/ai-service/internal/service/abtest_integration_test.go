package service

import (
	"context"
	"testing"
	"time"

	"github.com/elearning/ai-service/internal/abtest"
	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/providers"
)

// Verify что service.New с registry, у которого variant.Params.model
// переопределяет, реально использует эту model в SendMessage call.
func TestABTest_ChatModel_OverridesProviderCall(t *testing.T) {
	h := newHarness()
	// Пере-инициализируем сервис с registry, где у experiment'а только
	// один variant с весом > 0 — тогда любой userID попадёт ровно в него
	// и тест детерминирован.
	reg, err := abtest.NewRegistry([]abtest.Experiment{
		{Name: ExperimentChatModel, Variants: []abtest.Variant{
			{ID: "force_premium", Weight: 1, Params: map[string]string{"model": "gpt-test-override"}},
			{ID: "unused", Weight: 0},
		}},
	})
	if err != nil {
		t.Fatalf("registry: %v", err)
	}
	h.svc.abtests = reg

	var seenModel string
	h.provider.chat = func(_ []providers.PromptMessage, opts providers.ChatOptions) (*providers.ChatResponse, error) {
		seenModel = opts.Model
		return &providers.ChatResponse{Content: `{"reply":"ok"}`, TokensUsed: 5, CostUSD: 0.0001, Model: opts.Model}, nil
	}

	ctx := context.Background()
	conv, _, err := h.svc.StartConversation(ctx, StartConversationInput{
		UserID:   "u-ab",
		Scenario: model.ScenarioFreeChat,
	})
	if err != nil {
		t.Fatalf("start: %v", err)
	}
	_, _, err = h.svc.SendMessage(ctx, SendMessageInput{
		UserID:         "u-ab",
		ConversationID: conv.ID,
		Content:        "Hello",
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}

	if seenModel != "gpt-test-override" {
		t.Errorf("expected provider.Chat to receive model=gpt-test-override, got %q", seenModel)
	}
}

// Verify что без активного эксперимента используется conv.Model (legacy).
func TestABTest_ChatModel_NoExperiment_UsesConvModel(t *testing.T) {
	h := newHarness()
	// abtests = EmptyRegistry (default из New) → нет экспериментов.

	var seenModel string
	h.provider.chat = func(_ []providers.PromptMessage, opts providers.ChatOptions) (*providers.ChatResponse, error) {
		seenModel = opts.Model
		return &providers.ChatResponse{Content: `{"reply":"ok"}`, TokensUsed: 5, CostUSD: 0.0001, Model: opts.Model}, nil
	}

	ctx := context.Background()
	conv, _, err := h.svc.StartConversation(ctx, StartConversationInput{
		UserID:   "u-ab",
		Scenario: model.ScenarioFreeChat,
	})
	if err != nil {
		t.Fatalf("start: %v", err)
	}
	_, _, err = h.svc.SendMessage(ctx, SendMessageInput{
		UserID:         "u-ab",
		ConversationID: conv.ID,
		Content:        "Hi",
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}

	// conv.Model = config.DefaultModelChat = "test-chat" из harness.
	if seenModel != "test-chat" {
		t.Errorf("expected fallback to conv.Model=test-chat, got %q", seenModel)
	}
}

// Verify что chat_prompt suffix реально добавляется в system-prompt.
func TestABTest_ChatPrompt_AppendsSuffix(t *testing.T) {
	h := newHarness()
	reg, _ := abtest.NewRegistry([]abtest.Experiment{
		{Name: ExperimentChatPrompt, Variants: []abtest.Variant{
			{ID: "with_suffix", Weight: 1, Params: map[string]string{"system_prompt_suffix": "EXTRA_INSTRUCTION_X"}},
			{ID: "unused", Weight: 0},
		}},
	})
	h.svc.abtests = reg

	var seenSystem string
	h.provider.chat = func(msgs []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		if len(msgs) > 0 && msgs[0].Role == "system" {
			seenSystem = msgs[0].Content
		}
		return &providers.ChatResponse{Content: `{"reply":"ok"}`, TokensUsed: 5, CostUSD: 0.0001}, nil
	}

	ctx := context.Background()
	conv, _, err := h.svc.StartConversation(ctx, StartConversationInput{
		UserID: "u-ab", Scenario: model.ScenarioFreeChat,
	})
	if err != nil {
		t.Fatalf("start: %v", err)
	}
	_, _, err = h.svc.SendMessage(ctx, SendMessageInput{
		UserID: "u-ab", ConversationID: conv.ID, Content: "Hi",
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}
	if !hasSubstr(seenSystem, "EXTRA_INSTRUCTION_X") {
		t.Errorf("system prompt missing suffix:\n%s", seenSystem)
	}
}

// Verify что pickWithExposure АСИНХРОННО логирует assignment в БД,
// один раз на каждый Pick (повторные Pick'и → инкремент counter'а).
func TestABTest_ExposureLogging_RecordsAssignments(t *testing.T) {
	h := newHarness()
	reg, err := abtest.NewRegistry([]abtest.Experiment{
		{Name: ExperimentChatModel, Variants: []abtest.Variant{
			{ID: "v_a", Weight: 1, Params: map[string]string{"model": "model-a"}},
			{ID: "v_b", Weight: 0}, // weight 0 → никогда не выбран
		}},
	})
	if err != nil {
		t.Fatalf("registry: %v", err)
	}
	h.svc.abtests = reg
	h.provider.chat = func(_ []providers.PromptMessage, opts providers.ChatOptions) (*providers.ChatResponse, error) {
		return &providers.ChatResponse{Content: `{"reply":"ok"}`, TokensUsed: 1, CostUSD: 0, Model: opts.Model}, nil
	}

	ctx := context.Background()
	conv, _, err := h.svc.StartConversation(ctx, StartConversationInput{
		UserID: "u-expose", Scenario: model.ScenarioFreeChat,
	})
	if err != nil {
		t.Fatalf("start: %v", err)
	}
	// Два сообщения = два Pick'а (по одному на chatModelFor + chatPromptSuffixFor).
	// Здесь зарегистрирован только chat_model, поэтому ждём 2 exposure записи
	// для одного и того же variant'а.
	for i := 0; i < 2; i++ {
		if _, _, err := h.svc.SendMessage(ctx, SendMessageInput{
			UserID: "u-expose", ConversationID: conv.ID, Content: "ping",
		}); err != nil {
			t.Fatalf("send #%d: %v", i, err)
		}
	}

	// Exposure logger — async (go func), даём ему время дописать.
	deadline := time.Now().Add(2 * time.Second)
	var got int
	for time.Now().Before(deadline) {
		got = h.abExposures.Count("u-expose", ExperimentChatModel, "v_a")
		if got >= 2 {
			break
		}
		time.Sleep(10 * time.Millisecond)
	}
	if got < 2 {
		t.Errorf("expected ≥2 exposures for v_a, got %d", got)
	}
	// v_b weight=0 → никогда не выбран → ноль записей.
	if c := h.abExposures.Count("u-expose", ExperimentChatModel, "v_b"); c != 0 {
		t.Errorf("expected 0 exposures for v_b (weight=0), got %d", c)
	}
}

// Verify что пустой userID НЕ пишет exposure (анонимные вызовы).
func TestABTest_ExposureLogging_SkipsAnonymous(t *testing.T) {
	h := newHarness()
	reg, _ := abtest.NewRegistry([]abtest.Experiment{
		{Name: ExperimentChatModel, Variants: []abtest.Variant{
			{ID: "v_a", Weight: 1},
			{ID: "v_b", Weight: 0},
		}},
	})
	h.svc.abtests = reg

	// Прямой вызов pickWithExposure с пустым userID.
	v, ok := h.svc.pickWithExposure(ExperimentChatModel, "")
	if !ok || v == nil {
		t.Fatalf("expected variant for empty userID, got ok=%v", ok)
	}
	// Дать любым (несуществующим) горутинам шанс.
	time.Sleep(50 * time.Millisecond)
	if c := h.abExposures.Count("", ExperimentChatModel, v.ID); c != 0 {
		t.Errorf("expected 0 anonymous exposures, got %d", c)
	}
}
