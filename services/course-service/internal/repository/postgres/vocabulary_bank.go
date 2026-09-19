package postgres

import (
	"context"
	"fmt"
	"strings"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type vocabularyBankRepository struct {
	pool *pgxpool.Pool
}

func NewVocabularyBankRepository(pool *pgxpool.Pool) repository.VocabularyBankRepository {
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
