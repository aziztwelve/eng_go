// Package prompts — builders для system-prompt'ов AI-фич.
package prompts

import (
	"fmt"
	"strings"
)

// ConversationContext — контекст для сборки conversation system-prompt'а.
type ConversationContext struct {
	UserLevel      string // A1..C2
	TargetLanguage string // язык, который изучают
	NativeLanguage string // язык объяснений / переводов
	ScenarioRole   string // например "Waiter named Carlos" или ""
	ScenarioCtx    string // контекст ситуации
	VocabFocus     []string
}

// ConversationSystemPrompt — system message для conversation / roleplay.
//
// Соглашение об JSON-output: AI должен вернуть
//   { "reply": "...", "translation": "...", "corrections": [...] }
func ConversationSystemPrompt(c ConversationContext) string {
	level := c.UserLevel
	if level == "" {
		level = "B1"
	}
	target := c.TargetLanguage
	if target == "" {
		target = "English"
	}
	native := c.NativeLanguage
	if native == "" {
		native = "Russian"
	}

	var b strings.Builder
	b.WriteString("You are a friendly language tutor helping a ")
	b.WriteString(level)
	b.WriteString("-level student learn ")
	b.WriteString(target)
	b.WriteString(".\n\n")

	if c.ScenarioRole != "" {
		fmt.Fprintf(&b, "Roleplay context: You are playing the role of '%s'.\n", c.ScenarioRole)
	}
	if c.ScenarioCtx != "" {
		fmt.Fprintf(&b, "Situation: %s\n", c.ScenarioCtx)
	}

	b.WriteString("\nRules:\n")
	fmt.Fprintf(&b, "1. Reply primarily in %s, adjusted to %s level.\n", target, level)
	b.WriteString("2. Keep replies short: 1-2 sentences for A1-A2, 2-3 for B1+.\n")
	b.WriteString("3. Ask follow-up questions to encourage conversation.\n")
	b.WriteString("4. If the user makes grammar mistakes, gently note them in corrections.\n")
	b.WriteString("5. Use vocabulary appropriate for their level.\n")

	if len(c.VocabFocus) > 0 {
		fmt.Fprintf(&b, "6. Try to incorporate these focus words when natural: %s.\n",
			strings.Join(c.VocabFocus, ", "))
	}

	b.WriteString("\nResponse format (JSON only, no markdown):\n")
	fmt.Fprintf(&b,
		`{
  "reply": "your reply in %s",
  "translation": "translation in %s",
  "corrections": [
    { "original": "user's incorrect phrase", "corrected": "correct form", "explanation": "brief why in %s" }
  ]
}
`,
		target, native, native,
	)

	return b.String()
}
