package validators

import (
	"encoding/json"
	"testing"
)

func raw(t *testing.T, v interface{}) json.RawMessage {
	t.Helper()
	b, err := json.Marshal(v)
	if err != nil {
		t.Fatalf("marshal: %v", err)
	}
	return b
}

// === translate ===

func TestTranslate_ExactMatch(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"correct_translation": "Bebo café todas las mañanas",
	})
	answer := raw(t, map[string]interface{}{
		"words": []string{"Bebo", "café", "todas", "las", "mañanas"},
	})
	got, err := (TranslateValidator{}).Validate(content, answer)
	if err != nil {
		t.Fatalf("err: %v", err)
	}
	if !got.IsCorrect || got.Score != 1 {
		t.Fatalf("expected correct, got %+v", got)
	}
}

func TestTranslate_DiacriticsAndPunctuation(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"correct_translation": "Bebo café todas las mañanas.",
	})
	answer := raw(t, map[string]interface{}{
		"text": "  bebo cafe  todas  las  mananas  ",
	})
	got, _ := (TranslateValidator{}).Validate(content, answer)
	if !got.IsCorrect {
		t.Fatalf("expected diacritic-insensitive match")
	}
}

func TestTranslate_AlternativeAccepted(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"correct_translation": "Bebo café todas las mañanas",
		"alternative_answers": []string{"Yo bebo café todas las mañanas"},
	})
	answer := raw(t, map[string]interface{}{
		"text": "Yo bebo café todas las mañanas",
	})
	got, _ := (TranslateValidator{}).Validate(content, answer)
	if !got.IsCorrect {
		t.Fatalf("alt should match")
	}
}

func TestTranslate_Wrong(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"correct_translation": "Bebo café",
	})
	answer := raw(t, map[string]interface{}{"text": "Como té"})
	got, _ := (TranslateValidator{}).Validate(content, answer)
	if got.IsCorrect || got.Score != 0 {
		t.Fatalf("expected wrong, got %+v", got)
	}
	if got.CorrectAnswer == nil {
		t.Fatalf("correct_answer should be set on miss")
	}
}

func TestTranslate_EmptySubmit(t *testing.T) {
	content := raw(t, map[string]interface{}{"correct_translation": "Hola"})
	answer := raw(t, map[string]interface{}{})
	if _, err := (TranslateValidator{}).Validate(content, answer); err == nil {
		t.Fatalf("empty submit must error")
	}
}

// === match_pairs ===

func TestMatchPairs_AllCorrect(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"pairs": []map[string]string{
			{"left": "Hello", "right": "Hola"},
			{"left": "Bye", "right": "Adiós"},
		},
	})
	answer := raw(t, map[string]interface{}{
		"pairs": map[string]string{"Hello": "Hola", "Bye": "Adiós"},
	})
	got, _ := (MatchPairsValidator{}).Validate(content, answer)
	if !got.IsCorrect || got.Score != 1 {
		t.Fatalf("got %+v", got)
	}
}

func TestMatchPairs_PartialScore(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"pairs": []map[string]string{
			{"left": "A", "right": "1"},
			{"left": "B", "right": "2"},
			{"left": "C", "right": "3"},
			{"left": "D", "right": "4"},
		},
	})
	answer := raw(t, map[string]interface{}{
		"pairs": map[string]string{"A": "1", "B": "X", "C": "3", "D": "4"},
	})
	got, _ := (MatchPairsValidator{}).Validate(content, answer)
	if got.IsCorrect {
		t.Fatalf("should not be all-correct")
	}
	if got.Score < 0.74 || got.Score > 0.76 {
		t.Fatalf("score should be ~0.75, got %v", got.Score)
	}
}

// === listening ===

func TestListening_ExactAndDiacritics(t *testing.T) {
	content := raw(t, map[string]interface{}{"audio_text": "El gato come pescado"})
	for _, txt := range []string{
		"El gato come pescado",
		"el gato come pescado.",
		"  el  gato  come pescado  ",
	} {
		ans := raw(t, map[string]interface{}{"text": txt})
		got, _ := (ListeningValidator{}).Validate(content, ans)
		if !got.IsCorrect {
			t.Fatalf("expected correct for %q", txt)
		}
	}
}

func TestListening_FuzzyOneTypo(t *testing.T) {
	content := raw(t, map[string]interface{}{"audio_text": "El gato come pescado"})
	ans := raw(t, map[string]interface{}{"text": "El gato came pescado"}) // 1 typo
	got, _ := (ListeningValidator{}).Validate(content, ans)
	if !got.IsCorrect {
		t.Fatalf("1-typo must be accepted")
	}
}

func TestListening_TooFar(t *testing.T) {
	content := raw(t, map[string]interface{}{"audio_text": "El gato"})
	ans := raw(t, map[string]interface{}{"text": "Un perro"})
	got, _ := (ListeningValidator{}).Validate(content, ans)
	if got.IsCorrect {
		t.Fatalf("totally different — should be wrong")
	}
}

// === fill_blank ===

func TestFillBlank_Exact(t *testing.T) {
	content := raw(t, map[string]interface{}{"correct_answer": "bebo"})
	ans := raw(t, map[string]interface{}{"answer": "Bebo"})
	got, _ := (FillBlankValidator{}).Validate(content, ans)
	if !got.IsCorrect {
		t.Fatalf("case-insensitive match expected")
	}
}

func TestFillBlank_NotFuzzy(t *testing.T) {
	content := raw(t, map[string]interface{}{"correct_answer": "bebo"})
	ans := raw(t, map[string]interface{}{"answer": "bebbo"}) // typo
	got, _ := (FillBlankValidator{}).Validate(content, ans)
	if got.IsCorrect {
		t.Fatalf("fill_blank is strict, typo must fail")
	}
}

// === tap_words ===

func TestTapWords_ExactOrder(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"correct_words": []string{"I", "want", "to", "drink", "water"},
	})
	ans := raw(t, map[string]interface{}{
		"words": []string{"I", "want", "to", "drink", "water"},
	})
	got, _ := (TapWordsValidator{}).Validate(content, ans)
	if !got.IsCorrect {
		t.Fatalf("got %+v", got)
	}
}

func TestTapWords_WrongOrder(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"correct_words": []string{"I", "want", "to", "drink", "water"},
	})
	ans := raw(t, map[string]interface{}{
		"words": []string{"I", "drink", "to", "want", "water"},
	})
	got, _ := (TapWordsValidator{}).Validate(content, ans)
	if got.IsCorrect {
		t.Fatalf("order matters")
	}
	if got.Score == 0 || got.Score == 1 {
		t.Fatalf("partial score expected, got %v", got.Score)
	}
}

// === quiz ===

func TestQuiz_SingleByIndex(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"options": []map[string]interface{}{
			{"text": "water", "is_correct": true},
			{"text": "fire", "is_correct": false},
		},
	})
	got, _ := (QuizValidator{}).Validate(content, raw(t, map[string]int{"index": 0}))
	if !got.IsCorrect {
		t.Fatalf("expected correct")
	}
	got, _ = (QuizValidator{}).Validate(content, raw(t, map[string]int{"index": 1}))
	if got.IsCorrect {
		t.Fatalf("expected wrong")
	}
}

func TestQuiz_MultiSelect(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"options": []map[string]interface{}{
			{"text": "a", "is_correct": true},
			{"text": "b", "is_correct": false},
			{"text": "c", "is_correct": true},
		},
	})
	got, _ := (QuizValidator{}).Validate(content, raw(t, map[string][]int{"indices": {0, 2}}))
	if !got.IsCorrect {
		t.Fatalf("multi select correct expected")
	}
	got, _ = (QuizValidator{}).Validate(content, raw(t, map[string][]int{"indices": {0}}))
	if got.IsCorrect {
		t.Fatalf("partial multi-select must be wrong")
	}
}

// === story ===

func TestStory_AllChoicesCorrect(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"scenes": []map[string]interface{}{
			{"type": "narrative"},
			{"type": "choice", "options": []map[string]interface{}{
				{"text": "yes", "is_correct": true},
				{"text": "no", "is_correct": false},
			}},
			{"type": "choice", "options": []map[string]interface{}{
				{"text": "again yes", "is_correct": true},
			}},
		},
	})
	got, _ := (StoryValidator{}).Validate(content, raw(t, map[string][]int{"choices": {0, 0}}))
	if !got.IsCorrect {
		t.Fatalf("all correct expected, got %+v", got)
	}
}

func TestStory_PartialChoices(t *testing.T) {
	content := raw(t, map[string]interface{}{
		"scenes": []map[string]interface{}{
			{"type": "choice", "options": []map[string]interface{}{
				{"text": "a", "is_correct": true},
				{"text": "b", "is_correct": false},
			}},
			{"type": "choice", "options": []map[string]interface{}{
				{"text": "c", "is_correct": true},
				{"text": "d", "is_correct": false},
			}},
		},
	})
	got, _ := (StoryValidator{}).Validate(content, raw(t, map[string][]int{"choices": {0, 1}}))
	if got.IsCorrect {
		t.Fatalf("partial — not correct")
	}
	if got.Score != 0.5 {
		t.Fatalf("score should be 0.5, got %v", got.Score)
	}
}

// === Registry sanity ===

func TestRegistry_AllTypesRegistered(t *testing.T) {
	r := NewDefaultRegistry()
	for _, tp := range []string{"quiz", "translate", "match_pairs", "listening", "fill_blank", "tap_words", "story"} {
		if _, ok := r[tp]; !ok {
			t.Fatalf("type %q not registered", tp)
		}
	}
}

func TestRegistry_UnknownType(t *testing.T) {
	r := NewDefaultRegistry()
	if _, err := r.ValidateFor("unknown_type", raw(t, map[string]int{}), raw(t, map[string]int{})); err == nil {
		t.Fatalf("expected error for unknown type")
	}
}

// touch joinWords for coverage
var _ = joinWords([]string{"a"})
