package onboarding

import (
	"context"
	"database/sql"
	"errors"

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
