package service

import (
	"encoding/json"
	"fmt"
	"testing"
)

func TestValidateVocabularyBankBatchAcceptsCompleteBatch(t *testing.T) {
	batch := validVocabularyBankBatch()
	if err := ValidateVocabularyBankBatch(batch); err != nil {
		t.Fatalf("expected valid batch, got %v", err)
	}
}

func TestValidateVocabularyBankBatchRejectsMissingActivity(t *testing.T) {
	batch := validVocabularyBankBatch()
	batch.Entries[0].Activities = batch.Entries[0].Activities[:14]
	if err := ValidateVocabularyBankBatch(batch); err == nil {
		t.Fatal("expected activity validation error")
	}
}

func TestValidateVocabularyBankBatchRejectsDuplicateExternalID(t *testing.T) {
	batch := validVocabularyBankBatch()
	batch.Entries[1].ExternalID = batch.Entries[0].ExternalID
	if err := ValidateVocabularyBankBatch(batch); err == nil {
		t.Fatal("expected duplicate ID validation error")
	}
}

func TestValidateVocabularyBankBatchRejectsWrongContentContract(t *testing.T) {
	batch := validVocabularyBankBatch()
	batch.ContentType = "flashcards"
	if err := ValidateVocabularyBankBatch(batch); err == nil {
		t.Fatal("expected content contract validation error")
	}
}

func TestValidateVocabularyBankBatchRejectsMalformedActivityPayload(t *testing.T) {
	batch := validVocabularyBankBatch()
	batch.Entries[0].Activities[0].Payload = json.RawMessage(`[]`)
	if err := ValidateVocabularyBankBatch(batch); err == nil {
		t.Fatal("expected activity payload validation error")
	}
}

func validVocabularyBankBatch() *VocabularyBankBatch {
	entries := make([]VocabularyBankImportWord, 500)
	for i := range entries {
		activities := make([]VocabularyActivity, 15)
		for step := range activities {
			activities[step] = VocabularyActivity{
				Step: step + 1, Type: "test", Instruction: "Do it", Payload: json.RawMessage(`{}`),
			}
		}
		entries[i] = VocabularyBankImportWord{
			ExternalID: fmt.Sprintf("A1-VOC-001-%03d", i+1), Word: "WORD", Lemma: "word", Meaning: "a word",
			PartOfSpeech: "noun", CEFRLevel: "A1", TranslationKey: fmt.Sprintf("vocabulary.word_%d", i+1),
			GrammarTargets: json.RawMessage(`[]`), Audio: json.RawMessage(`{}`), ImagePrompt: json.RawMessage(`{}`), Activities: activities,
		}
	}
	return &VocabularyBankBatch{
		SchemaVersion: "2.0.0", Product: "LingoIQ", ContentType: "vocabulary_learning_bank",
		CEFRLevel: "A1", BatchNumber: 1, EntryCount: 500, Entries: entries,
	}
}

func TestValidateVocabularyBankAllowsMissingOptionalGrammarTargets(t *testing.T) {
	batch := validVocabularyBankBatch()
	batch.Entries[0].GrammarTargets = nil
	if err := ValidateVocabularyBankBatch(batch); err != nil {
		t.Fatal(err)
	}
	batch.Entries[0].GrammarTargets = json.RawMessage(`{}`)
	if err := ValidateVocabularyBankBatch(batch); err == nil {
		t.Fatal("malformed grammar targets accepted")
	}
}
func TestVocabularyMobileReadyRejectsUnsupportedTypes(t *testing.T) {
	if err := ValidateVocabularyBankMobileReady(validVocabularyBankBatch()); err == nil {
		t.Fatal("unsupported types passed publication gate")
	}
}

func TestVocabularyMobileReadyPayloads(t *testing.T) {
	makeBatch := func() *VocabularyBankBatch {
		b := validVocabularyBankBatch()
		kinds := []string{"discover", "listen", "tap_for_meaning", "repeat", "word_match", "meaning_choice", "fill_the_blank", "sentence_builder", "present_question", "past_question", "future_question", "wh_question", "positive_answer", "negative_answer", "speak_and_review"}
		for i := range b.Entries {
			for j := range b.Entries[i].Activities {
				a := &b.Entries[i].Activities[j]
				a.Type = kinds[j]
				a.Payload = json.RawMessage(`{"answer":"a word","options":["a word","another"],"tokens":["word","a"],"prompt":"a ____","content":{"question":"Is this a word?"},"question":"Is this a word?","model_answer":{"full":"Yes, it is."}}`)
			}
		}
		return b
	}
	b := makeBatch()
	if err := ValidateVocabularyBankMobileReady(b); err != nil {
		t.Fatal(err)
	}
	b.Entries[0].Activities[4].Payload = json.RawMessage(`{"answer":"missing","options":["a","b"]}`)
	if err := ValidateVocabularyBankMobileReady(b); err == nil {
		t.Fatal("missing answer option accepted")
	}
	b = makeBatch()
	b.Entries[0].Activities[7].Payload = json.RawMessage(`{"answer":"a word","tokens":["other","word"]}`)
	if err := ValidateVocabularyBankMobileReady(b); err == nil {
		t.Fatal("unbuildable sentence accepted")
	}
}
