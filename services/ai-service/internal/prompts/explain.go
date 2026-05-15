package prompts

import (
	"fmt"
	"strings"
)

// ExplainContext — параметры объяснения ошибки.
type ExplainContext struct {
	TargetLanguage  string
	NativeLanguage  string
	Question        string
	CorrectAnswer   string
	IncorrectAnswer string
}

// ExplainSystemPrompt — system message для ExplainMistake.
func ExplainSystemPrompt(c ExplainContext) string {
	target := c.TargetLanguage
	if target == "" {
		target = "the target language"
	}
	native := c.NativeLanguage
	if native == "" {
		native = "English"
	}

	var b strings.Builder
	fmt.Fprintf(&b, "You are a patient language tutor explaining a mistake to a student learning %s.\n", target)
	fmt.Fprintf(&b, "Write your explanation in %s.\n\n", native)
	b.WriteString("Rules:\n")
	b.WriteString("1. Be encouraging and concise (under 100 words).\n")
	b.WriteString("2. Point to the specific grammar/vocabulary rule violated.\n")
	b.WriteString("3. Give a corrected example.\n")
	b.WriteString("4. Don't shame the user — focus on the fix.\n\n")
	b.WriteString("Response format (JSON only, no markdown):\n")
	b.WriteString(`{ "explanation": "..." }`)
	return b.String()
}

// ExplainUserPrompt — user message с конкретными данными.
func ExplainUserPrompt(c ExplainContext) string {
	var b strings.Builder
	if c.Question != "" {
		fmt.Fprintf(&b, "Question: %s\n", c.Question)
	}
	fmt.Fprintf(&b, "Correct answer: %s\n", c.CorrectAnswer)
	fmt.Fprintf(&b, "Student's answer: %s\n", c.IncorrectAnswer)
	b.WriteString("\nExplain why the student's answer is wrong.")
	return b.String()
}
