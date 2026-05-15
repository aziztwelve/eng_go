package prompts

import (
	"fmt"
	"strings"
)

// ExerciseContext — параметры генерации упражнения.
type ExerciseContext struct {
	ExerciseType   string // translate | match_pairs | fill_blank | tap_words | listening
	Vocabulary     []string
	UserLevel      string
	TargetLanguage string
	NativeLanguage string
}

// ExerciseSystemPrompt — генерация упражнения для админа.
func ExerciseSystemPrompt(c ExerciseContext) string {
	level := c.UserLevel
	if level == "" {
		level = "B1"
	}
	target := c.TargetLanguage
	if target == "" {
		target = "English"
	}

	var b strings.Builder
	fmt.Fprintf(&b, "You are a curriculum designer generating a %s exercise for a %s student of %s.\n\n",
		c.ExerciseType, level, target)
	if len(c.Vocabulary) > 0 {
		fmt.Fprintf(&b, "Required vocabulary: %s.\n", strings.Join(c.Vocabulary, ", "))
	}
	b.WriteString("\nRules:\n")
	b.WriteString("1. Match the user's CEFR level for grammar complexity.\n")
	b.WriteString("2. Output ONLY a valid JSON object — no markdown, no commentary.\n")
	b.WriteString("3. Schema depends on exercise type; common fields: 'type', 'prompt', 'answer'/'target', 'alternatives'.\n")
	return b.String()
}
