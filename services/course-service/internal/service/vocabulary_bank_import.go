package service

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"sort"
	"strings"
)

const vocabularyBankActivityCount = 15

const (
	vocabularyBankProduct     = "LingoIQ"
	vocabularyBankContentType = "vocabulary_learning_bank"
)

// VocabularyBankBatch is the supported LingoIQ JSON batch format. JSONB-like
// fields are deliberately kept as json.RawMessage so the importer preserves
// the activity payload without inventing a second content schema in Go.
type VocabularyBankBatch struct {
	SchemaVersion string                     `json:"schema_version"`
	Product       string                     `json:"product"`
	ContentType   string                     `json:"content_type"`
	CEFRLevel     string                     `json:"cefr_level"`
	BatchNumber   int                        `json:"batch_number"`
	EntryCount    int                        `json:"entry_count"`
	Entries       []VocabularyBankImportWord `json:"entries"`
}

type VocabularyBankImportWord struct {
	ExternalID      string                `json:"id"`
	Word            string                `json:"word"`
	Lemma           string                `json:"lemma"`
	Meaning         string                `json:"meaning"`
	PartOfSpeech    string                `json:"part_of_speech"`
	CEFRLevel       string                `json:"cefr_level"`
	TranslationKey  string                `json:"translation_key"`
	GrammarTargets  json.RawMessage       `json:"grammar_targets"`
	ContextID       string                `json:"context_id"`
	Audio           json.RawMessage       `json:"audio"`
	ImagePrompt     json.RawMessage       `json:"image_prompt"`
	QuestionSets    []VocabularyQuestion  `json:"question_sets"`
	Activities      []VocabularyActivity  `json:"activities"`
}

type VocabularyQuestion struct {
	GrammarFamily string          `json:"grammar_family"`
	Tense         string          `json:"tense"`
	QuestionForm  string          `json:"question_form"`
	Question      string          `json:"question"`
	Positive      json.RawMessage `json:"positive_answer"`
	Negative      json.RawMessage `json:"negative_answer"`
}

type VocabularyActivity struct {
	Step        int             `json:"step"`
	Type        string          `json:"type"`
	Instruction string          `json:"instruction"`
	Payload     json.RawMessage `json:"-"`
}

// UnmarshalJSON retains all fields, including type-specific activity payload.
func (a *VocabularyActivity) UnmarshalJSON(data []byte) error {
	type fields struct {
		Step        int    `json:"step"`
		Type        string `json:"type"`
		Instruction string `json:"instruction"`
	}
	var value fields
	if err := json.Unmarshal(data, &value); err != nil {
		return err
	}
	a.Step, a.Type, a.Instruction = value.Step, value.Type, value.Instruction
	a.Payload = append(a.Payload[:0], data...)
	return nil
}

// ReadVocabularyBankBatch reads and validates one source file before any
// database work. Its checksum is used for idempotent import reporting.
func ReadVocabularyBankBatch(path string) (*VocabularyBankBatch, string, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, "", fmt.Errorf("read vocabulary batch: %w", err)
	}
	var batch VocabularyBankBatch
	sum := sha256.Sum256(data)
	checksum := hex.EncodeToString(sum[:])
	if err := json.Unmarshal(data, &batch); err != nil {
		return nil, checksum, fmt.Errorf("decode vocabulary batch: %w", err)
	}
	if err := ValidateVocabularyBankBatch(&batch); err != nil {
		return &batch, checksum, err
	}
	return &batch, checksum, nil
}

// ValidateVocabularyBankBatch enforces the supplier contract before import.
func ValidateVocabularyBankBatch(batch *VocabularyBankBatch) error {
	if batch == nil {
		return fmt.Errorf("vocabulary batch is required")
	}
	if strings.TrimSpace(batch.SchemaVersion) == "" {
		return fmt.Errorf("schema_version is required")
	}
	if batch.Product != vocabularyBankProduct {
		return fmt.Errorf("product must be %q", vocabularyBankProduct)
	}
	if batch.ContentType != vocabularyBankContentType {
		return fmt.Errorf("content_type must be %q", vocabularyBankContentType)
	}
	if !isVocabularyBankCEFRLevel(batch.CEFRLevel) {
		return fmt.Errorf("cefr_level must be one of A1, A2, B1, B2, C1, got %q", batch.CEFRLevel)
	}
	if batch.BatchNumber < 1 {
		return fmt.Errorf("batch_number must be positive")
	}
	if batch.EntryCount != len(batch.Entries) {
		return fmt.Errorf("entry_count is %d but entries contains %d records", batch.EntryCount, len(batch.Entries))
	}
	if batch.EntryCount != 500 {
		return fmt.Errorf("entry_count must be 500, got %d", batch.EntryCount)
	}

	seen := make(map[string]struct{}, len(batch.Entries))
	for index := range batch.Entries {
		word := &batch.Entries[index]
		if err := validateVocabularyBankWord(word, batch.CEFRLevel); err != nil {
			return fmt.Errorf("entries[%d]: %w", index, err)
		}
		if _, duplicate := seen[word.ExternalID]; duplicate {
			return fmt.Errorf("entries[%d]: duplicate id %q", index, word.ExternalID)
		}
		seen[word.ExternalID] = struct{}{}
	}
	return nil
}

func validateVocabularyBankWord(word *VocabularyBankImportWord, batchLevel string) error {
	required := map[string]string{
		"id": word.ExternalID, "word": word.Word, "lemma": word.Lemma,
		"meaning": word.Meaning, "part_of_speech": word.PartOfSpeech,
		"cefr_level": word.CEFRLevel, "translation_key": word.TranslationKey,
	}
	keys := make([]string, 0, len(required))
	for key := range required { keys = append(keys, key) }
	sort.Strings(keys)
	for _, key := range keys {
		if strings.TrimSpace(required[key]) == "" { return fmt.Errorf("%s is required", key) }
	}
	if word.CEFRLevel != batchLevel {
		return fmt.Errorf("cefr_level %q does not match batch level %q", word.CEFRLevel, batchLevel)
	}
	if !isVocabularyBankCEFRLevel(word.CEFRLevel) {
		return fmt.Errorf("invalid cefr_level %q", word.CEFRLevel)
	}
	if err := validateJSONObject("audio", word.Audio); err != nil {
		return err
	}
	if err := validateJSONObject("image_prompt", word.ImagePrompt); err != nil {
		return err
	}
	if err := validateJSONArray("grammar_targets", word.GrammarTargets); err != nil {
		return err
	}
	for index, question := range word.QuestionSets {
		if err := validateVocabularyQuestion(question); err != nil {
			return fmt.Errorf("question_sets[%d]: %w", index, err)
		}
	}
	if len(word.Activities) != vocabularyBankActivityCount {
		return fmt.Errorf("must contain %d activities, got %d", vocabularyBankActivityCount, len(word.Activities))
	}
	steps := make(map[int]struct{}, vocabularyBankActivityCount)
	for _, activity := range word.Activities {
		if activity.Step < 1 || activity.Step > vocabularyBankActivityCount {
			return fmt.Errorf("activity step %d is outside 1..15", activity.Step)
		}
		if strings.TrimSpace(activity.Type) == "" || strings.TrimSpace(activity.Instruction) == "" {
			return fmt.Errorf("activity %d requires type and instruction", activity.Step)
		}
		if err := validateJSONObject("activity payload", activity.Payload); err != nil {
			return fmt.Errorf("activity %d: %w", activity.Step, err)
		}
		if _, exists := steps[activity.Step]; exists { return fmt.Errorf("duplicate activity step %d", activity.Step) }
		steps[activity.Step] = struct{}{}
	}
	for step := 1; step <= vocabularyBankActivityCount; step++ {
		if _, exists := steps[step]; !exists { return fmt.Errorf("missing activity step %d", step) }
	}
	return nil
}

func isVocabularyBankCEFRLevel(level string) bool {
	switch level {
	case "A1", "A2", "B1", "B2", "C1":
		return true
	default:
		return false
	}
}

func validateVocabularyQuestion(question VocabularyQuestion) error {
	for field, value := range map[string]string{
		"grammar_family": question.GrammarFamily,
		"tense":          question.Tense,
		"question_form":  question.QuestionForm,
		"question":       question.Question,
	} {
		if strings.TrimSpace(value) == "" {
			return fmt.Errorf("%s is required", field)
		}
	}
	if err := validateJSONObject("positive_answer", question.Positive); err != nil {
		return err
	}
	return validateJSONObject("negative_answer", question.Negative)
}

func validateJSONObject(field string, value json.RawMessage) error {
	if len(value) == 0 || !json.Valid(value) || value[0] != '{' {
		return fmt.Errorf("%s must be a JSON object", field)
	}
	return nil
}

func validateJSONArray(field string, value json.RawMessage) error {
	if len(value) == 0 || !json.Valid(value) || value[0] != '[' {
		return fmt.Errorf("%s must be a JSON array", field)
	}
	return nil
}
