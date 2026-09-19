// Command import-vocabulary-bank validates and imports one LingoIQ batch.
//
// Example:
//   go run ./cmd/import-vocabulary-bank \
//     --file /path/lingoiq_a1_vocabulary_batch_001.json
package main

import (
	"context"
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/config"
	"github.com/elearning/course-service/internal/service"
)

const configPath = "../../deploy/compose/course/.env"

func main() {
	file := flag.String("file", "", "path to one LingoIQ vocabulary JSON batch (required)")
	dsn := flag.String("dsn", "", "PostgreSQL DSN (defaults to course-service environment)")
	dryRun := flag.Bool("dry-run", false, "validate only; do not write to PostgreSQL")
	flag.Parse()

	if *file == "" {
		fmt.Fprintln(os.Stderr, "--file is required")
		os.Exit(2)
	}
	if err := config.Load(configPath); err != nil {
		fatalf("load course-service config: %v", err)
	}
	batch, checksum, err := service.ReadVocabularyBankBatch(*file)
	if err != nil {
		if !*dryRun {
			if reportErr := recordFailedImport(*dsn, *file, checksum, batch, err); reportErr != nil {
				fmt.Fprintf(os.Stderr, "could not save failed import report: %v\n", reportErr)
			}
		}
		fmt.Fprintf(os.Stderr, "invalid vocabulary batch: %v\n", err)
		os.Exit(1)
	}
	fmt.Printf("validated batch %d (%s): %d words, checksum %s\n", batch.BatchNumber, batch.CEFRLevel, len(batch.Entries), checksum)
	if *dryRun {
		return
	}

	if *dsn == "" { *dsn = config.Get().PostgresDSN() }
	ctx, cancel := context.WithTimeout(context.Background(), 2*time.Minute)
	defer cancel()
	pool, err := pgxpool.New(ctx, *dsn)
	if err != nil { fatalf("connect PostgreSQL: %v", err) }
	defer pool.Close()

	created, updated, skipped, err := importBatch(ctx, pool, *file, checksum, batch)
	if err != nil {
		if reportErr := recordFailedImportWithPool(ctx, pool, *file, checksum, batch, err); reportErr != nil {
			fmt.Fprintf(os.Stderr, "could not save failed import report: %v\n", reportErr)
		}
		fatalf("import batch: %v", err)
	}
	fmt.Printf("import complete: created=%d updated=%d skipped=%d\n", created, updated, skipped)
}

func recordFailedImport(dsn, sourceFile, checksum string, batch *service.VocabularyBankBatch, importErr error) error {
	if dsn == "" {
		dsn = config.Get().PostgresDSN()
	}
	ctx, cancel := context.WithTimeout(context.Background(), 15*time.Second)
	defer cancel()
	pool, err := pgxpool.New(ctx, dsn)
	if err != nil {
		return fmt.Errorf("connect PostgreSQL: %w", err)
	}
	defer pool.Close()
	return recordFailedImportWithPool(ctx, pool, sourceFile, checksum, batch, importErr)
}

func recordFailedImportWithPool(ctx context.Context, pool *pgxpool.Pool, sourceFile, checksum string, batch *service.VocabularyBankBatch, importErr error) error {
	if checksum == "" {
		return fmt.Errorf("source checksum is unavailable")
	}
	var schemaVersion, cefrLevel any
	var batchNumber any
	if batch != nil {
		schemaVersion, cefrLevel, batchNumber = batch.SchemaVersion, batch.CEFRLevel, batch.BatchNumber
	}
	validationErrors, err := json.Marshal([]string{importErr.Error()})
	if err != nil {
		return err
	}
	_, err = pool.Exec(ctx, `INSERT INTO vocabulary_bank_import_reports
        (source_file, file_checksum, schema_version, cefr_level, batch_number, status, validation_errors)
        VALUES ($1, $2, $3, $4, $5, 'failed', $6::jsonb)
        ON CONFLICT (file_checksum) DO NOTHING`,
		sourceFile, checksum, schemaVersion, cefrLevel, batchNumber, string(validationErrors))
	return err
}

func importBatch(ctx context.Context, pool *pgxpool.Pool, sourceFile, checksum string, batch *service.VocabularyBankBatch) (int, int, int, error) {
	tx, err := pool.Begin(ctx)
	if err != nil { return 0, 0, 0, err }
	defer func() { _ = tx.Rollback(ctx) }()

	var alreadyImported bool
	if err := tx.QueryRow(ctx, `SELECT EXISTS(SELECT 1 FROM vocabulary_bank_import_reports WHERE file_checksum = $1 AND status = 'completed')`, checksum).Scan(&alreadyImported); err != nil {
		return 0, 0, 0, err
	}
	if alreadyImported { return 0, 0, len(batch.Entries), tx.Commit(ctx) }

	created, updated := 0, 0
	for _, word := range batch.Entries {
		wordID, inserted, err := upsertWord(ctx, tx, batch, checksum, word)
		if err != nil { return 0, 0, 0, fmt.Errorf("%s: %w", word.ExternalID, err) }
		if inserted { created++ } else { updated++ }
		if _, err := tx.Exec(ctx, `DELETE FROM vocabulary_bank_question_sets WHERE word_id = $1`, wordID); err != nil { return 0, 0, 0, err }
		if _, err := tx.Exec(ctx, `DELETE FROM vocabulary_bank_activities WHERE word_id = $1`, wordID); err != nil { return 0, 0, 0, err }
		for index, question := range word.QuestionSets {
			if _, err := tx.Exec(ctx, `INSERT INTO vocabulary_bank_question_sets
                (word_id, position, grammar_family, tense, question_form, question, positive_answer, negative_answer)
                VALUES ($1,$2,$3,$4,$5,$6,$7::jsonb,$8::jsonb)`,
				wordID, index+1, question.GrammarFamily, question.Tense, question.QuestionForm, question.Question,
				jsonValue(question.Positive, `{}`), jsonValue(question.Negative, `{}`)); err != nil { return 0, 0, 0, err }
		}
		for _, activity := range word.Activities {
			if _, err := tx.Exec(ctx, `INSERT INTO vocabulary_bank_activities (word_id, step, activity_type, instruction, payload)
                VALUES ($1,$2,$3,$4,$5::jsonb)`, wordID, activity.Step, activity.Type, activity.Instruction, jsonValue(activity.Payload, `{}`)); err != nil { return 0, 0, 0, err }
		}
	}
	if _, err := tx.Exec(ctx, `INSERT INTO vocabulary_bank_import_reports
        (source_file, file_checksum, schema_version, cefr_level, batch_number, status, entries_created, entries_updated, entries_skipped)
        VALUES ($1,$2,$3,$4,$5,'completed',$6,$7,0)`, sourceFile, checksum, batch.SchemaVersion, batch.CEFRLevel, batch.BatchNumber, created, updated); err != nil {
		return 0, 0, 0, err
	}
	if err := tx.Commit(ctx); err != nil { return 0, 0, 0, err }
	return created, updated, 0, nil
}

func upsertWord(ctx context.Context, tx pgx.Tx, batch *service.VocabularyBankBatch, checksum string, word service.VocabularyBankImportWord) (string, bool, error) {
	var id string
	var inserted bool
	err := tx.QueryRow(ctx, `INSERT INTO vocabulary_bank_words
        (external_id, schema_version, source_batch, word, lemma, meaning, part_of_speech, cefr_level, translation_key, grammar_targets, context_id, audio, image_prompt, content_checksum)
        VALUES ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10::jsonb,NULLIF($11,''),$12::jsonb,$13::jsonb,$14)
        ON CONFLICT (external_id) DO UPDATE SET
          schema_version = EXCLUDED.schema_version, source_batch = EXCLUDED.source_batch, word = EXCLUDED.word,
          lemma = EXCLUDED.lemma, meaning = EXCLUDED.meaning, part_of_speech = EXCLUDED.part_of_speech,
          cefr_level = EXCLUDED.cefr_level, translation_key = EXCLUDED.translation_key,
          grammar_targets = EXCLUDED.grammar_targets, context_id = EXCLUDED.context_id, audio = EXCLUDED.audio,
          image_prompt = EXCLUDED.image_prompt, content_checksum = EXCLUDED.content_checksum
        RETURNING id, (xmax = 0)`,
		word.ExternalID, batch.SchemaVersion, batch.BatchNumber, word.Word, word.Lemma, word.Meaning,
		word.PartOfSpeech, word.CEFRLevel, word.TranslationKey, jsonValue(word.GrammarTargets, `[]`), word.ContextID,
		jsonValue(word.Audio, `{}`), jsonValue(word.ImagePrompt, `{}`), checksum).Scan(&id, &inserted)
	return id, inserted, err
}

func jsonValue(raw json.RawMessage, fallback string) string {
	if len(raw) == 0 { return fallback }
	return string(raw)
}

func fatalf(format string, args ...any) {
	fmt.Fprintf(os.Stderr, format+"\n", args...)
	os.Exit(1)
}
