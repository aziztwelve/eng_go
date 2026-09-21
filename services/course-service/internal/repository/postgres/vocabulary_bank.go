package postgres

import (
	"context"
	"encoding/json"
	"fmt"
	"strings"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type vocabularyBankRepository struct {
	pool *pgxpool.Pool
}

func NewVocabularyBankRepository(pool *pgxpool.Pool) *vocabularyBankRepository {
	return &vocabularyBankRepository{pool: pool}
}

const vocabularyBankSummaryColumns = `w.external_id, w.word,
	COALESCE(NULLIF(t.text, ''), w.meaning), w.part_of_speech, w.cefr_level,
	(w.audio <> '{}'::jsonb)`

func (r *vocabularyBankRepository) List(ctx context.Context, f repository.VocabularyBankListFilters) ([]model.VocabularyBankWordSummary, int, error) {
	var conditions []string
	args := []any{f.Locale}
	position := 2
	var countConditions []string
	var countArgs []any
	countPosition := 1
	if f.CEFRLevel != "" {
		conditions = append(conditions, fmt.Sprintf("w.cefr_level = $%d", position))
		args = append(args, f.CEFRLevel)
		position++
		countConditions = append(countConditions, fmt.Sprintf("w.cefr_level = $%d", countPosition))
		countArgs = append(countArgs, f.CEFRLevel)
		countPosition++
	}
	if f.Search != "" {
		conditions = append(conditions, fmt.Sprintf("(w.word ILIKE $%d OR w.lemma ILIKE $%d OR w.meaning ILIKE $%d)", position, position, position))
		args = append(args, "%"+f.Search+"%")
		position++
		countConditions = append(countConditions, fmt.Sprintf("(w.word ILIKE $%d OR w.lemma ILIKE $%d OR w.meaning ILIKE $%d)", countPosition, countPosition, countPosition))
		countArgs = append(countArgs, "%"+f.Search+"%")
		countPosition++
	}
	where := ""
	if len(conditions) > 0 {
		where = " WHERE " + strings.Join(conditions, " AND ")
	}

	countWhere := ""
	if len(countConditions) > 0 {
		countWhere = " WHERE " + strings.Join(countConditions, " AND ")
	}
	var total int
	if err := r.pool.QueryRow(ctx, "SELECT COUNT(*) FROM vocabulary_bank_words w"+countWhere, countArgs...).Scan(&total); err != nil {
		return nil, 0, err
	}
	limit := f.Limit
	if limit <= 0 || limit > 100 {
		limit = 50
	}
	query := fmt.Sprintf(`SELECT %s FROM vocabulary_bank_words w
		LEFT JOIN vocabulary_bank_translations t ON t.word_id = w.id AND t.locale = $1%s
		ORDER BY w.cefr_level, w.word LIMIT $%d OFFSET $%d`, vocabularyBankSummaryColumns, where, position, position+1)
	args = append(args, limit, max(f.Offset, 0))
	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	entries := make([]model.VocabularyBankWordSummary, 0)
	for rows.Next() {
		entry, err := scanVocabularyBankSummary(rows.Scan)
		if err != nil {
			return nil, 0, err
		}
		entries = append(entries, entry)
	}
	return entries, total, rows.Err()
}

func (r *vocabularyBankRepository) GetByExternalID(ctx context.Context, externalID, locale string) (*model.VocabularyBankWordDetail, error) {
	detail := &model.VocabularyBankWordDetail{}
	query := `SELECT ` + vocabularyBankSummaryColumns + `, w.lemma, w.meaning
		FROM vocabulary_bank_words w
		LEFT JOIN vocabulary_bank_translations t ON t.word_id = w.id AND t.locale = $1
		WHERE w.external_id = $2`
	var wordID string
	if err := r.pool.QueryRow(ctx, query, locale, externalID).Scan(
		&detail.ExternalID, &detail.Word, &detail.Translation, &detail.PartOfSpeech,
		&detail.CEFRLevel, &detail.HasAudio, &detail.Lemma, &detail.Meaning,
	); err != nil {
		return nil, err
	}
	if err := r.pool.QueryRow(ctx, `SELECT id FROM vocabulary_bank_words WHERE external_id = $1`, externalID).Scan(&wordID); err != nil {
		return nil, err
	}

	questions, err := r.pool.Query(ctx, `SELECT grammar_family, tense, question_form, question, positive_answer, negative_answer
		FROM vocabulary_bank_question_sets WHERE word_id = $1 ORDER BY position`, wordID)
	if err != nil {
		return nil, err
	}
	defer questions.Close()
	for questions.Next() {
		var item model.VocabularyBankQuestionSet
		if err := questions.Scan(&item.GrammarFamily, &item.Tense, &item.QuestionForm, &item.Question, &item.Positive, &item.Negative); err != nil {
			return nil, err
		}
		detail.QuestionSets = append(detail.QuestionSets, item)
	}
	if err := questions.Err(); err != nil {
		return nil, err
	}

	activities, err := r.pool.Query(ctx, `SELECT step, activity_type, instruction, payload
		FROM vocabulary_bank_activities WHERE word_id = $1 ORDER BY step`, wordID)
	if err != nil {
		return nil, err
	}
	defer activities.Close()
	for activities.Next() {
		var item model.VocabularyBankActivity
		if err := activities.Scan(&item.Step, &item.Type, &item.Instruction, &item.Payload); err != nil {
			return nil, err
		}
		detail.Activities = append(detail.Activities, item)
	}
	return detail, activities.Err()
}

func scanVocabularyBankSummary(scan func(...any) error) (model.VocabularyBankWordSummary, error) {
	var item model.VocabularyBankWordSummary
	err := scan(&item.ExternalID, &item.Word, &item.Translation, &item.PartOfSpeech, &item.CEFRLevel, &item.HasAudio)
	return item, err
}

func (r *vocabularyBankRepository) GetProgress(ctx context.Context, userID, externalID string) (*model.VocabularyBankProgress, error) {
	progress := &model.VocabularyBankProgress{ExternalID: externalID, CurrentStep: 1}
	err := r.pool.QueryRow(ctx, `SELECT p.current_step, p.completed_at, p.last_activity_at
		FROM user_vocabulary_progress p
		JOIN vocabulary_bank_words w ON w.id = p.word_id
		WHERE p.user_id = $1 AND w.external_id = $2`, userID, externalID).
		Scan(&progress.CurrentStep, &progress.CompletedAt, &progress.LastActivityAt)
	if err == nil {
		return progress, nil
	}
	if err == pgx.ErrNoRows {
		return progress, nil
	}
	return nil, err
}

func (r *vocabularyBankRepository) RecordAttempt(ctx context.Context, attempt model.VocabularyBankAttempt) (*model.VocabularyBankProgress, error) {
	tx, err := r.pool.Begin(ctx)
	if err != nil {
		return nil, err
	}
	defer func() { _ = tx.Rollback(ctx) }()

	var wordID, activityType string
	if err := tx.QueryRow(ctx, `SELECT w.id, a.activity_type
		FROM vocabulary_bank_words w JOIN vocabulary_bank_activities a ON a.word_id = w.id
		WHERE w.external_id = $1 AND a.step = $2`, attempt.ExternalID, attempt.Step).Scan(&wordID, &activityType); err != nil {
		return nil, err
	}
	answer := attempt.Answer
	if len(answer) == 0 {
		answer = json.RawMessage(`{}`)
	}
	if _, err := tx.Exec(ctx, `INSERT INTO user_vocabulary_activity_attempts
		(user_id, word_id, step, activity_type, answer, is_correct, score, time_spent_ms, pronunciation_score)
		VALUES ($1,$2,$3,$4,$5,$6,$7,$8,NULLIF($9, 0))`, attempt.UserID, wordID, attempt.Step, activityType, answer, attempt.IsCorrect, attempt.Score, attempt.TimeSpentMS, attempt.PronunciationScore); err != nil {
		return nil, err
	}
	var progress model.VocabularyBankProgress
	progress.ExternalID = attempt.ExternalID
	if err := tx.QueryRow(ctx, `INSERT INTO user_vocabulary_progress (user_id, word_id, current_step, completed_at, last_activity_at)
		VALUES ($1, $2, CASE WHEN $3 >= 15 AND $4 THEN 15 ELSE LEAST($3 + 1, 15) END, CASE WHEN $3 >= 15 AND $4 THEN NOW() ELSE NULL END, NOW())
		ON CONFLICT (user_id, word_id) DO UPDATE SET
			current_step = CASE WHEN EXCLUDED.completed_at IS NOT NULL THEN 15 WHEN $4 THEN GREATEST(user_vocabulary_progress.current_step, EXCLUDED.current_step) ELSE user_vocabulary_progress.current_step END,
			completed_at = COALESCE(user_vocabulary_progress.completed_at, EXCLUDED.completed_at),
			last_activity_at = NOW()
		RETURNING current_step, completed_at, last_activity_at`, attempt.UserID, wordID, attempt.Step, attempt.IsCorrect).
		Scan(&progress.CurrentStep, &progress.CompletedAt, &progress.LastActivityAt); err != nil {
		return nil, err
	}
	if err := tx.Commit(ctx); err != nil {
		return nil, err
	}
	return &progress, nil
}

func (r *vocabularyBankRepository) ListFeed(ctx context.Context, userID string, f repository.VocabularyBankFeedFilters) (*model.VocabularyBankFeed, error) {
	feed := &model.VocabularyBankFeed{}
	levelClause := ""
	argsBase := []any{userID, f.Locale}
	limitPlaceholder := "$3"
	if f.CEFRLevel != "" {
		levelClause = " AND w.cefr_level = $3"
		argsBase = append(argsBase, f.CEFRLevel)
		limitPlaceholder = "$4"
	}
	query := `SELECT w.external_id, w.word, COALESCE(NULLIF(t.text, ''), w.meaning), w.part_of_speech, w.cefr_level, (w.audio <> '{}'::jsonb), p.current_step, p.last_activity_at
		FROM vocabulary_bank_words w
		LEFT JOIN vocabulary_bank_translations t ON t.word_id = w.id AND t.locale = $2
		JOIN user_vocabulary_progress p ON p.word_id = w.id AND p.user_id = $1
		WHERE p.completed_at IS NULL AND p.current_step > 1` + levelClause + ` ORDER BY p.last_activity_at DESC LIMIT ` + limitPlaceholder
	args := append(argsBase, f.InProgressLimit)
	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, err
	}
	for rows.Next() {
		var entry model.VocabularyBankFeedEntry
		if err := rows.Scan(&entry.ExternalID, &entry.Word, &entry.Translation, &entry.PartOfSpeech, &entry.CEFRLevel, &entry.HasAudio, &entry.CurrentStep, &entry.LastActivityAt); err != nil {
			rows.Close()
			return nil, err
		}
		entry.Status = "in_progress"
		feed.InProgress = append(feed.InProgress, entry)
	}
	if err := rows.Err(); err != nil {
		rows.Close()
		return nil, err
	}
	rows.Close()

	newQuery := `SELECT w.external_id, w.word, COALESCE(NULLIF(t.text, ''), w.meaning), w.part_of_speech, w.cefr_level, (w.audio <> '{}'::jsonb)
		FROM vocabulary_bank_words w
		LEFT JOIN vocabulary_bank_translations t ON t.word_id = w.id AND t.locale = $2
		LEFT JOIN user_vocabulary_progress p ON p.word_id = w.id AND p.user_id = $1
		WHERE p.word_id IS NULL` + levelClause + ` ORDER BY w.cefr_level, w.word LIMIT ` + limitPlaceholder
	rows, err = r.pool.Query(ctx, newQuery, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	for rows.Next() {
		var entry model.VocabularyBankFeedEntry
		if err := rows.Scan(&entry.ExternalID, &entry.Word, &entry.Translation, &entry.PartOfSpeech, &entry.CEFRLevel, &entry.HasAudio); err != nil {
			return nil, err
		}
		entry.Status, entry.CurrentStep = "new", 1
		feed.NewWords = append(feed.NewWords, entry)
	}
	return feed, rows.Err()
}
