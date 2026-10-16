package service

import (
	"encoding/json"
	"fmt"
	"strings"
)

// ValidateVocabularyBankMobileReady is an opt-in publication gate. The generic
// legacy importer remains usable for other consumers and older content.
func ValidateVocabularyBankMobileReady(batch *VocabularyBankBatch) error {
	if err := ValidateVocabularyBankBatch(batch); err != nil {
		return err
	}
	expected := []string{"discover", "listen", "tap_for_meaning", "repeat", "word_match", "meaning_choice", "fill_the_blank", "sentence_builder", "present_question", "past_question", "future_question", "wh_question", "positive_answer", "negative_answer", "speak_and_review"}
	for _, word := range batch.Entries {
		for _, activity := range word.Activities {
			if activity.Type != expected[activity.Step-1] {
				return fmt.Errorf("%s step %d: type %q is not supported at this position by the mobile player", word.ExternalID, activity.Step, activity.Type)
			}
			var p struct {
				Answer      string         `json:"answer"`
				Options     []string       `json:"options"`
				Tokens      []string       `json:"tokens"`
				Prompt      string         `json:"prompt"`
				Content     map[string]any `json:"content"`
				ModelAnswer map[string]any `json:"model_answer"`
				Question    string         `json:"question"`
			}
			if err := json.Unmarshal(activity.Payload, &p); err != nil {
				return err
			}
			if activity.Step >= 5 && activity.Step <= 8 && strings.TrimSpace(p.Answer) == "" {
				return fmt.Errorf("%s step %d: answer key required", word.ExternalID, activity.Step)
			}
			if activity.Step == 5 || activity.Step == 6 {
				found := false
				for _, option := range p.Options {
					if option == p.Answer {
						found = true
					}
				}
				if len(p.Options) < 2 || !found {
					return fmt.Errorf("%s step %d: options must include the answer and a distractor", word.ExternalID, activity.Step)
				}
			}
			if activity.Step == 7 && strings.TrimSpace(p.Prompt) == "" {
				return fmt.Errorf("%s: cloze prompt required", word.ExternalID)
			}
			if activity.Step == 8 && normalizeVocabularyAnswer(strings.Join(p.Tokens, " ")) != normalizeVocabularyAnswer(p.Answer) {
				// Tokens can be shuffled; verify their multiset rather than their order.
				if !sameVocabularyTokens(p.Tokens, strings.Fields(p.Answer)) {
					return fmt.Errorf("%s: sentence tokens do not match answer", word.ExternalID)
				}
			}
			if activity.Step >= 9 && activity.Step <= 12 && (p.Content == nil || p.Content["question"] == nil) {
				return fmt.Errorf("%s step %d: question content required", word.ExternalID, activity.Step)
			}
			if (activity.Step == 13 || activity.Step == 14) && (p.ModelAnswer == nil || strings.TrimSpace(p.Question) == "") {
				return fmt.Errorf("%s step %d: question and model answer required", word.ExternalID, activity.Step)
			}
		}
	}
	return nil
}
func sameVocabularyTokens(a, b []string) bool {
	if len(a) != len(b) {
		return false
	}
	counts := map[string]int{}
	for _, v := range a {
		counts[normalizeVocabularyAnswer(v)]++
	}
	for _, v := range b {
		key := normalizeVocabularyAnswer(v)
		counts[key]--
		if counts[key] < 0 {
			return false
		}
	}
	return true
}
