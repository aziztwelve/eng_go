package providers

import (
	"context"
	"strings"
)

// LanguageRouter — гибридный AIProvider, диспатчит вызовы между
// несколькими бэкендами в зависимости от target_language.
//
// Стратегия (5.32):
//   - Для языков из `HeavyLanguages` (по умолчанию: ru) идём в Heavy
//     провайдер (типично OpenAI GPT-4o или Anthropic Sonnet).
//   - Остальное — в Default (GPT-4o-mini / Haiku).
//
// Если Heavy == nil — фолбэкимся на Default безусловно.
//
// Transcribe / SynthesizeTTS делегируются Default (Anthropic их всё
// равно не поддерживает; если default = Anthropic, придётся передать
// audio-провайдера отдельно — см. WithAudioProvider).
type LanguageRouter struct {
	Default        AIProvider
	Heavy          AIProvider
	HeavyLanguages map[string]bool // нормализованные в lower-case
	// AudioProvider — кому отдавать STT/TTS. Если nil — Default.
	AudioProvider AIProvider
}

// NewLanguageRouter — конструктор. heavyLanguages — список ISO-кодов
// (case-insensitive), которые направляются в `heavy`.
func NewLanguageRouter(def AIProvider, heavy AIProvider, heavyLanguages []string) *LanguageRouter {
	set := make(map[string]bool, len(heavyLanguages))
	for _, l := range heavyLanguages {
		set[strings.ToLower(strings.TrimSpace(l))] = true
	}
	return &LanguageRouter{
		Default:        def,
		Heavy:          heavy,
		HeavyLanguages: set,
	}
}

// Name — "router(default→heavy)".
func (r *LanguageRouter) Name() string {
	def := "nil"
	heavy := "nil"
	if r.Default != nil {
		def = r.Default.Name()
	}
	if r.Heavy != nil {
		heavy = r.Heavy.Name()
	}
	return "router(" + def + "→" + heavy + ")"
}

// Chat — выбирает провайдер на основе language hint в system-prompt'е.
//
// Эвристика: ищем в system message ключевые маркеры языков
// (`learn Russian`, `target language: ru`). Если не находим — Default.
//
// Альтернатива: каждое сообщение содержит явный target_language через
// PromptMessage.Metadata, но текущий интерфейс простой. Используем
// эвристику на system-prompt'ах — `prompts/conversation.go` пишет туда
// «to learn <Language>».
func (r *LanguageRouter) Chat(ctx context.Context, messages []PromptMessage, opts ChatOptions) (*ChatResponse, error) {
	if r.shouldRouteHeavy(messages) && r.Heavy != nil {
		return r.Heavy.Chat(ctx, messages, opts)
	}
	return r.Default.Chat(ctx, messages, opts)
}

// Transcribe — делегируем AudioProvider (либо Default).
func (r *LanguageRouter) Transcribe(ctx context.Context, audio []byte, opts TranscribeOptions) (*TranscribeResponse, error) {
	p := r.audioProvider()
	if p == nil {
		return nil, ErrUnsupported
	}
	return p.Transcribe(ctx, audio, opts)
}

// SynthesizeTTS — делегируем AudioProvider (либо Default).
func (r *LanguageRouter) SynthesizeTTS(ctx context.Context, text string, opts TTSOptions) (*TTSResponse, error) {
	p := r.audioProvider()
	if p == nil {
		return nil, ErrUnsupported
	}
	return p.SynthesizeTTS(ctx, text, opts)
}

func (r *LanguageRouter) audioProvider() AIProvider {
	if r.AudioProvider != nil {
		return r.AudioProvider
	}
	return r.Default
}

// shouldRouteHeavy — true, если в system-prompt упоминается язык
// из HeavyLanguages. Простая, дешёвая эвристика.
func (r *LanguageRouter) shouldRouteHeavy(messages []PromptMessage) bool {
	if len(r.HeavyLanguages) == 0 {
		return false
	}
	for _, m := range messages {
		if m.Role != "system" {
			continue
		}
		lower := strings.ToLower(m.Content)
		for lang := range r.HeavyLanguages {
			if r.langMatches(lower, lang) {
				return true
			}
		}
	}
	return false
}

// langMatches — проверяет, упоминается ли язык `lang` в нормализованном
// system-тексте. Учитываем оба вида указания: ISO-код (`ru`) и полное
// имя (`russian`).
func (r *LanguageRouter) langMatches(systemLower string, lang string) bool {
	// ISO-код — должен быть отдельным токеном (избегаем false positive
	// на "abru", "russia"), поэтому проверяем с граничными пробелами/символами.
	for _, sep := range []string{" " + lang + " ", " " + lang + ".", " " + lang + ",", ":" + lang} {
		if strings.Contains(systemLower, sep) {
			return true
		}
	}
	// Полное имя по таблице (limited).
	full, ok := isoToName[lang]
	if !ok {
		return false
	}
	return strings.Contains(systemLower, full)
}

// isoToName — ISO-639-1 → English name (lower). Только нужные нам языки.
var isoToName = map[string]string{
	"ru": "russian",
	"en": "english",
	"es": "spanish",
	"de": "german",
	"fr": "french",
	"it": "italian",
	"ja": "japanese",
	"zh": "chinese",
	"pt": "portuguese",
	"ar": "arabic",
	"ko": "korean",
}
