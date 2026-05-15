package prompts

import (
	"fmt"
	"strings"
)

// WritingContext — параметры writing assessment.
type WritingContext struct {
	TargetLanguage string
	UserLevel      string
	Prompt         string
	UserText       string
}

// WritingSystemPrompt — оценка письменной работы.
func WritingSystemPrompt(c WritingContext) string {
	target := c.TargetLanguage
	if target == "" {
		target = "English"
	}
	level := c.UserLevel
	if level == "" {
		level = "B1"
	}

	var b strings.Builder
	fmt.Fprintf(&b, "Evaluate this writing exercise from a %s student of %s.\n\n", level, target)
	b.WriteString("Rules:\n")
	b.WriteString("1. Score four dimensions on 0-100: grammar, vocabulary, coherence, style.\n")
	b.WriteString("2. Compute overall_score as the rounded average.\n")
	b.WriteString("3. Provide a corrected version of the user's text (preserve their meaning).\n")
	b.WriteString("4. List 2-5 specific feedback items by category.\n")
	b.WriteString("5. Be constructive, not harsh.\n\n")
	b.WriteString("Response format (JSON only, no markdown):\n")
	b.WriteString(`{
  "overall_score": 0..100,
  "grammar_score": 0..100,
  "vocabulary_score": 0..100,
  "coherence_score": 0..100,
  "style_score": 0..100,
  "corrected_text": "...",
  "feedback": [
    { "category": "grammar|vocabulary|coherence|style", "issue": "...", "suggestion": "..." }
  ]
}`)
	return b.String()
}

// WritingUserPrompt — user message с заданием и текстом.
func WritingUserPrompt(c WritingContext) string {
	var b strings.Builder
	if c.Prompt != "" {
		fmt.Fprintf(&b, "Task: %s\n\n", c.Prompt)
	}
	b.WriteString("Student wrote:\n")
	b.WriteString(c.UserText)
	return b.String()
}
