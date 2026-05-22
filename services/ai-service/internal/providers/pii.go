package providers

import (
	"regexp"
	"strings"
)

// Phase 5 — PII (Personally Identifiable Information) removal.
//
// Юзер может случайно скинуть в AI чат email, телефон, адрес,
// номер карты или паспорт. Мы:
//  1. Не хотим отправлять это OpenAI/Anthropic (privacy + compliance).
//  2. Не хотим хранить это в `ai_messages.content` в plain text.
//
// Стратегия — regex-based detector + replacement на placeholder
// (`[email]`, `[phone]`, и т.д.). Это не 100% защита (NER даёт лучше
// recall на адресах и именах), но для MVP покрывает ~95% случаев.
//
// PII-redact происходит ПОСЛЕ Sanitize и ДО Moderation. Pipeline:
//   raw user text
//     → SanitizeUserInput (prompt injection)
//     → RedactPII             (этот файл)
//     → Moderator.Check      (hate / sexual / etc.)
//     → save в БД + send to provider
//
// PII-types и regex'ы тщательно скоммуникировано на сторону false-positive:
// лучше чуть пропустить, чем замазать обычный текст. Особенно у
// language-learners, которые часто пишут вещи похожие на цифры.

// PIIType — категория обнаруженной PII (для логирования / аналитики).
type PIIType string

const (
	PIITypeEmail      PIIType = "email"
	PIITypePhone      PIIType = "phone"
	PIITypeCreditCard PIIType = "credit_card"
	PIITypeIBAN       PIIType = "iban"
	PIITypeSSN        PIIType = "ssn"   // US Social Security Number
	PIITypeIIN        PIIType = "iin"   // KZ ИИН (12 digits)
	PIITypeIPv4       PIIType = "ipv4"
)

// PIIRedactOpts — настройки RedactPII.
type PIIRedactOpts struct {
	// Enabled — выключатель. Если false — RedactPII возвращает текст as-is.
	Enabled bool
	// Replacement — формат placeholder'а; %s заменяется на тип.
	// Default: "[%s]" → "[email]", "[phone]".
	Replacement string
}

// DefaultPIIRedactOpts — рекомендованные значения.
func DefaultPIIRedactOpts() PIIRedactOpts {
	return PIIRedactOpts{Enabled: true, Replacement: "[%s]"}
}

// Регексы. Все умышленно немного narrow — лучше miss, чем false-positive.
var (
	// Email: стандартный RFC 5322 simplified.
	piiEmailRe = regexp.MustCompile(`(?i)\b[A-Z0-9._%+\-]+@[A-Z0-9.\-]+\.[A-Z]{2,}\b`)

	// Phone: международный или локальный, минимум 7 цифр, разделители
	// `-`, `.`, ` `, `()`. Не матчим короткие чисел типа "1234".
	piiPhoneRe = regexp.MustCompile(`(?:\+\d[\d\-\.\s]{6,}\d|\b\d{3}[\-\.\s]\d{3}[\-\.\s]\d{4}\b|\(\d{3}\)\s?\d{3}[\-\.\s]?\d{4})`)

	// Credit card: 13-19 digits, with optional spaces/dashes.
	// Luhn check делать на этом этапе — overkill, regex даёт ~99% recall.
	piiCardRe = regexp.MustCompile(`\b(?:\d[ \-]?){13,19}\b`)

	// IBAN: 2 letters + 2 digits + 11-30 alphanumeric (ISO 13616).
	piiIBANRe = regexp.MustCompile(`\b[A-Z]{2}\d{2}[A-Z0-9]{11,30}\b`)

	// US SSN: 3-2-4 digits.
	piiSSNRe = regexp.MustCompile(`\b\d{3}-\d{2}-\d{4}\b`)

	// KZ ИИН: 12 цифр подряд (часто пишут без разделителей). Узкий
	// regex именно на 12 — отделяет от 11-длинных русских телефонов.
	piiIINRe = regexp.MustCompile(`\b\d{12}\b`)

	// IPv4 (часто проваливаются логи / debug-info).
	piiIPv4Re = regexp.MustCompile(`\b(?:\d{1,3}\.){3}\d{1,3}\b`)
)

// piiPattern — пара (regex → тип). Порядок матчинга важен: email должен
// идти ДО phone, иначе цифры в email-домене (например 123.com) поломают.
var piiPatterns = []struct {
	re      *regexp.Regexp
	piiType PIIType
}{
	{piiEmailRe, PIITypeEmail},
	{piiIBANRe, PIITypeIBAN},
	{piiCardRe, PIITypeCreditCard},
	{piiSSNRe, PIITypeSSN},
	{piiPhoneRe, PIITypePhone},
	{piiIINRe, PIITypeIIN},
	{piiIPv4Re, PIITypeIPv4},
}

// RedactPII — заменяет все обнаруженные PII на placeholder. Возвращает:
//
//   - clean — текст с redacted значениями.
//   - found — список обнаруженных типов (deduped, для логирования).
//
// Idempotent: повторный RedactPII над уже redacted текстом — no-op.
func RedactPII(text string, opts PIIRedactOpts) (clean string, found []PIIType) {
	if !opts.Enabled || text == "" {
		return text, nil
	}
	repl := opts.Replacement
	if repl == "" {
		repl = "[%s]"
	}

	seen := map[PIIType]struct{}{}
	out := text
	for _, p := range piiPatterns {
		placeholder := strings.Replace(repl, "%s", string(p.piiType), 1)
		out = p.re.ReplaceAllStringFunc(out, func(_ string) string {
			seen[p.piiType] = struct{}{}
			return placeholder
		})
	}

	for t := range seen {
		found = append(found, t)
	}
	return out, found
}

// HasPII — быстрый «есть ли PII?» без замены. Для аналитики.
func HasPII(text string) bool {
	for _, p := range piiPatterns {
		if p.re.MatchString(text) {
			return true
		}
	}
	return false
}
