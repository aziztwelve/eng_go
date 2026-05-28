package onboarding

import (
	"context"
	"database/sql"
	"errors"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/user-service/internal/model"
	"github.com/elearning/user-service/internal/repository"
)

type repo struct {
	pool *pgxpool.Pool
}

// NewRepository создаёт onboarding-репозиторий поверх pgxpool.
func NewRepository(pool *pgxpool.Pool) repository.OnboardingRepository {
	return &repo{pool: pool}
}

// scanState читает строку с onboardingColumns в OnboardingState.
func scanState(row pgx.Row) (model.OnboardingState, error) {
	var (
		userID         string
		nativeLang     sql.NullString
		targetLang     sql.NullString
		proficiency    sql.NullString
		dailyGoalXP    sql.NullInt32
		motivation     []string
		signupSource   sql.NullString
		placementScore sql.NullInt32
		dateOfBirth    sql.NullTime
		onboardedAt    sql.NullTime

		// v3 fields:
		ageBracket         sql.NullString
		dailyCommitMinutes sql.NullInt32
		painPoint          sql.NullString
		speakingSituation  sql.NullString
		pastBlocker        sql.NullString
		futureRegret       sql.NullString
		emotionalReaction  sql.NullString
		reminderSlot       sql.NullString
		paywallSeenAt      sql.NullTime
		paywallChoice      sql.NullString
	)

	err := row.Scan(
		&userID,
		&nativeLang,
		&targetLang,
		&proficiency,
		&dailyGoalXP,
		&motivation,
		&signupSource,
		&placementScore,
		&dateOfBirth,
		&onboardedAt,
		&ageBracket,
		&dailyCommitMinutes,
		&painPoint,
		&speakingSituation,
		&pastBlocker,
		&futureRegret,
		&emotionalReaction,
		&reminderSlot,
		&paywallSeenAt,
		&paywallChoice,
	)
	if err != nil {
		return model.OnboardingState{}, err
	}

	state := model.OnboardingState{
		UserID:     userID,
		Motivation: motivation,
	}
	if motivation == nil {
		state.Motivation = []string{}
	}
	if nativeLang.Valid {
		state.NativeLanguage = &nativeLang.String
	}
	if targetLang.Valid {
		state.TargetLanguage = &targetLang.String
	}
	if proficiency.Valid {
		state.ProficiencyLevel = &proficiency.String
	}
	if dailyGoalXP.Valid {
		v := dailyGoalXP.Int32
		state.DailyGoalXP = &v
	}
	if signupSource.Valid {
		state.SignupSource = &signupSource.String
	}
	if placementScore.Valid {
		v := placementScore.Int32
		state.PlacementScore = &v
	}
	if dateOfBirth.Valid {
		t := dateOfBirth.Time
		state.DateOfBirth = &t
	}
	if onboardedAt.Valid {
		t := onboardedAt.Time
		state.OnboardedAt = &t
	}

	// v3 fields:
	if ageBracket.Valid {
		state.AgeBracket = &ageBracket.String
	}
	if dailyCommitMinutes.Valid {
		v := dailyCommitMinutes.Int32
		state.DailyCommitMinutes = &v
	}
	if painPoint.Valid {
		state.PainPoint = &painPoint.String
	}
	if speakingSituation.Valid {
		state.SpeakingSituation = &speakingSituation.String
	}
	if pastBlocker.Valid {
		state.PastBlocker = &pastBlocker.String
	}
	if futureRegret.Valid {
		state.FutureRegret = &futureRegret.String
	}
	if emotionalReaction.Valid {
		state.EmotionalReaction = &emotionalReaction.String
	}
	if reminderSlot.Valid {
		state.ReminderSlot = &reminderSlot.String
	}
	if paywallSeenAt.Valid {
		t := paywallSeenAt.Time
		state.PaywallSeenAt = &t
	}
	if paywallChoice.Valid {
		state.PaywallChoice = &paywallChoice.String
	}

	return state, nil
}

// GetState возвращает текущее состояние онбординга. Если строки в profiles
// нет — возвращаем пустой state с UserID, без ошибки (юзер ещё ничего не
// PATCH'ил, и это OK).
func (r *repo) GetState(ctx context.Context, userID string) (model.OnboardingState, error) {
	state, err := scanState(r.pool.QueryRow(ctx, queryGetOnboarding, userID))
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.OnboardingState{
				UserID:     userID,
				Motivation: []string{},
			}, nil
		}
		return model.OnboardingState{}, err
	}
	return state, nil
}

// PatchState — partial-update + upsert. Создаёт строку в profiles если её
// ещё нет.
func (r *repo) PatchState(ctx context.Context, userID string, patch model.PatchOnboardingData) (model.OnboardingState, error) {
	dob := ""
	if patch.DateOfBirth != nil {
		dob = *patch.DateOfBirth
	}

	row := r.pool.QueryRow(ctx, queryUpsertOnboarding,
		userID,
		toNullString(patch.NativeLanguage),
		toNullString(patch.TargetLanguage),
		toNullString(patch.ProficiencyLevel),
		toNullInt32(patch.DailyGoalXP),
		patch.Motivation, // []string → text[]
		patch.MotivationSet,
		toNullString(patch.SignupSource),
		toNullInt32(patch.PlacementScore),
		dob,
		// v3:
		toNullString(patch.AgeBracket),
		toNullInt32(patch.DailyCommitMinutes),
		toNullString(patch.PainPoint),
		toNullString(patch.SpeakingSituation),
		toNullString(patch.PastBlocker),
		toNullString(patch.FutureRegret),
		toNullString(patch.EmotionalReaction),
		toNullString(patch.ReminderSlot),
		toNullTime(patch.PaywallSeenAt),
		toNullString(patch.PaywallChoice),
	)
	return scanState(row)
}

// Complete — выставляет onboarded_at = NOW() если ещё не задано.
func (r *repo) Complete(ctx context.Context, userID string) (model.OnboardingState, error) {
	return scanState(r.pool.QueryRow(ctx, queryCompleteOnboarding, userID))
}

func toNullString(s *string) sql.NullString {
	if s == nil {
		return sql.NullString{}
	}
	return sql.NullString{String: *s, Valid: true}
}

func toNullInt32(v *int32) sql.NullInt32 {
	if v == nil {
		return sql.NullInt32{}
	}
	return sql.NullInt32{Int32: *v, Valid: true}
}

func toNullTime(t *time.Time) sql.NullTime {
	if t == nil {
		return sql.NullTime{}
	}
	return sql.NullTime{Time: *t, Valid: true}
}
