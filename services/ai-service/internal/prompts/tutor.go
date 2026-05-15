package prompts

import (
	"fmt"
	"strings"
)

// TutorContext — параметры одиночного Q&A с tutor'ом.
type TutorContext struct {
	TargetLanguage string
	NativeLanguage string
}

// TutorSystemPrompt — system message для AskTutor.
func TutorSystemPrompt(c TutorContext) string {
	target := c.TargetLanguage
	if target == "" {
		target = "the target language"
	}
	native := c.NativeLanguage
	if native == "" {
		native = "English"
	}
	var b strings.Builder
	fmt.Fprintf(&b, "You are a knowledgeable language tutor specialising in %s.\n", target)
	fmt.Fprintf(&b, "Answer the student's question clearly in %s, with examples when helpful.\n\n", native)
	b.WriteString("Rules:\n")
	b.WriteString("1. Be concise but thorough (1-3 short paragraphs).\n")
	b.WriteString("2. Use simple, encouraging language.\n")
	b.WriteString("3. If the question is off-topic for language learning, gently redirect.\n\n")
	b.WriteString("Response format (JSON only, no markdown):\n")
	b.WriteString(`{ "answer": "..." }`)
	return b.String()
}
