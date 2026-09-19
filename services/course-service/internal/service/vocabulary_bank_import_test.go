package service

import (
	"encoding/json"
	"fmt"
	"testing"
)

func TestValidateVocabularyBankBatchAcceptsCompleteBatch(t *testing.T) {
	batch := validVocabularyBankBatch()
	if err := ValidateVocabularyBankBatch(batch); err != nil { t.Fatalf("expected valid batch, got %v", err) }
}

func TestValidateVocabularyBankBatchRejectsMissingActivity(t *testing.T) {
	batch := validVocabularyBankBatch()
	batch.Entries[0].Activities = batch.Entries[0].Activities[:14]
	if err := ValidateVocabularyBankBatch(batch); err == nil { t.Fatal("expected activity validation error") }
}

func TestValidateVocabularyBankBatchRejectsDuplicateExternalID(t *testing.T) {
	batch := validVocabularyBankBatch()
	batch.Entries[1].ExternalID = batch.Entries[0].ExternalID
	if err := ValidateVocabularyBankBatch(batch); err == nil { t.Fatal("expected duplicate ID validation error") }
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
