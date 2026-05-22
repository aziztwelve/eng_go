package providers

import (
	"regexp"
	"strings"
)

// Phase 5.34 — защита от prompt injection.
//
// Атаки бывают двух классов:
//   1. Прямые: «Ignore all previous instructions and ...» — пытаются
//      переопределить system prompt.
//   2. Косвенные: фейковые «system:» / «assistant:» roles в user-тексте,
//      пытаясь убедить модель что это часть chat-истории.
//
// Стратегия: НЕ блокируем сообщение, а нейтрализуем подозрительные
// паттерны — заменяем role-маркеры и режим-инструкции на безопасные
// эквиваленты. Это сохраняет UX (юзер не видит «ваше сообщение
// заблокировано» из-за false-positive) и при этом ломает большинство
// атак.

// SanitizeOpts — настройки SanitizeUserInput.
type SanitizeOpts struct {
	// MaxLength — обрезаем длиннее N символов (0 = без лимита).
	// Слишком длинный prompt — типичный вектор jailbreak.
	MaxLength int
}

// DefaultSanitizeOpts — рекомендованные значения.
func DefaultSanitizeOpts() SanitizeOpts {
	return SanitizeOpts{MaxLength: 4000}
}

// Паттерны для нейтрализации. Все case-insensitive.
var (
	// Role-маркеры в начале строки: "system:", "assistant:", "USER:".
	rolePrefixRe = regexp.MustCompile(`(?im)^\s*(system|assistant|user|ai|tool|function)\s*:`)

	// Явные инструкции игнорировать prompt.
	injectionPhrasesRe = regexp.MustCompile(`(?i)\b(ignore|disregard|forget|override)\s+(all\s+)?(previous|prior|above|earlier|the)\s+(instructions?|prompts?|rules?|directives?|context)\b`)

	// «You are now ...» / «pretend you are ...» — попытка ролевого jailbreak.
	roleSwitchRe = regexp.MustCompile(`(?i)\b(you\s+are\s+now|pretend\s+(to\s+be|you\s+are)|act\s+as\s+if|from\s+now\s+on\s+you)\b`)

	// Markdown / XML фейковые tag'и: <system>, <|im_start|>, [INST] и пр.
	chatTemplateRe = regexp.MustCompile(`(?i)(<\|im_start\|>|<\|im_end\|>|\[/?INST\]|<system>|</system>|<assistant>|</assistant>|<\|user\|>|<\|assistant\|>|<\|system\|>)`)
)

// SanitizeUserInput — очищает user-text перед отправкой в LLM.
//
//  1. Trim + обрезаем по MaxLength.
//  2. role-маркеры в начале строк: "system:" → "[system_]:".
//  3. injection-фразы: «ignore previous instructions» → «[redacted instruction]».
//  4. Role-switch попытки: «you are now ...» → «[redacted role switch]».
//  5. Chat-template tag'и удаляются полностью.
//
// Возвращает санитизированный текст и булеан `wasModified`.
// `wasModified=true` — caller может залогировать suspicious input.
func SanitizeUserInput(text string, opts SanitizeOpts) (sanitized string, wasModified bool) {
	original := text
	t := strings.TrimSpace(text)

	if opts.MaxLength > 0 && len(t) > opts.MaxLength {
		t = t[:opts.MaxLength]
	}

	t = chatTemplateRe.ReplaceAllString(t, "")
	t = rolePrefixRe.ReplaceAllString(t, "[$1_]:")
	t = injectionPhrasesRe.ReplaceAllString(t, "[redacted instruction]")
	t = roleSwitchRe.ReplaceAllString(t, "[redacted role switch]")

	t = strings.TrimSpace(t)
	return t, t != strings.TrimSpace(original)
}
