package service

import (
	"context"

	"github.com/elearning/gamification-service/internal/model"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// StepCompletedInput — DTO, который сервис получает извне (course-service).
type StepCompletedInput struct {
	UserID    string
	StepID    string
	LessonID  string
	StepKind  gamificationv1.StepKind
	IsCorrect bool
	Score     float64
}

// StepCompletedResult объединяет результат AddXP + апдейтa streak'а.
type StepCompletedResult struct {
	XP     *AddXPResult
	Stats  *model.UserStats
	Streak *model.UserStats // для совместимости с proto (Streak отдельным полем)
}

// OnStepCompleted — реакция на завершение шага: XP + streak.
func (s *Service) OnStepCompleted(ctx context.Context, in StepCompletedInput) (*StepCompletedResult, error) {
	xpAmount := XPForStep(in.StepKind, in.IsCorrect, in.Score)
	res := &StepCompletedResult{}
	if xpAmount > 0 {
		stepID := in.StepID
		xp, err := s.AddXP(ctx, in.UserID, xpAmount, model.XPReasonStepCompleted, &stepID)
		if err != nil {
			return nil, err
		}
		res.XP = xp
		res.Stats = xp.Stats
	}
	return res, nil
}

// LessonCompletedInput — DTO для OnLessonCompleted.
type LessonCompletedInput struct {
	UserID   string
	LessonID string
}

// OnLessonCompleted — даем bonus XP за урок, апдейтим streak и проверяем achievements.
func (s *Service) OnLessonCompleted(ctx context.Context, in LessonCompletedInput) (*AddXPResult, error) {
	lessonID := in.LessonID
	xp, err := s.AddXP(ctx, in.UserID, XPForLessonBonus(), model.XPReasonLessonCompleted, &lessonID)
	if err != nil {
		return nil, err
	}
	// Streak двигаем именно на уровне урока, а не каждого шага.
	if _, err := s.UpdateStreak(ctx, in.UserID); err != nil {
		return nil, err
	}
	// После streak — еще раз проверим achievements (могли разблокироваться streak-категории).
	streakUnlocked, err := s.CheckAchievements(ctx, in.UserID, AchievementTriggerStreakUpdated)
	if err == nil && len(streakUnlocked) > 0 {
		xp.UnlockedAchievements = append(xp.UnlockedAchievements, streakUnlocked...)
	}
	return xp, nil
}

// CourseCompletedInput — DTO для OnCourseCompleted.
type CourseCompletedInput struct {
	UserID   string
	CourseID string
	// ISO 639-1 код языка; пустой допустим, но тогда `languages` achievement
	// не сдвинется.
	Language string
}

// OnCourseCompleted — пользователь прошел все уроки курса. Начисляем bonus XP
// и денормализуем язык в stats.learned_languages для achievement `languages`.
func (s *Service) OnCourseCompleted(ctx context.Context, in CourseCompletedInput) (*AddXPResult, error) {
	if in.Language != "" {
		if err := s.appendLearnedLanguage(ctx, in.UserID, in.Language); err != nil {
			return nil, err
		}
	}
	courseID := in.CourseID
	xp, err := s.AddXP(ctx, in.UserID, XPForCourseBonus(), model.XPReasonCourseCompleted, &courseID)
	if err != nil {
		return nil, err
	}
	return xp, nil
}

// appendLearnedLanguage добавляет язык в stats.learned_languages (без
// дубликатов). Делается перед AddXP, чтобы первый же matchCriteria после
// начисления уже видел обновленный slice.
func (s *Service) appendLearnedLanguage(ctx context.Context, userID, lang string) error {
	stats, err := s.ensureStats(ctx, userID)
	if err != nil {
		return err
	}
	for _, l := range stats.LearnedLanguages {
		if l == lang {
			return nil
		}
	}
	stats.LearnedLanguages = append(stats.LearnedLanguages, lang)
	return s.stats.Update(ctx, stats)
}

// QuizCompletedInput — DTO для OnQuizCompleted.
type QuizCompletedInput struct {
	UserID          string
	QuizID          string
	ScorePercentage float64
	IsPassed        bool
}

// OnQuizCompleted — попытка квиза завершена. Начисляем XP с reason'ом
// quiz_completed (или quiz_perfect для 100%) — это разделение позволяет
// matchCriteria различать `quiz_completed` и `perfect_quizzes` через
// countXPByReason. Если не passed — ничего не делаем.
func (s *Service) OnQuizCompleted(ctx context.Context, in QuizCompletedInput) (*AddXPResult, error) {
	amount, isPerfect := XPForQuizCompleted(in.ScorePercentage, in.IsPassed)
	if amount == 0 {
		return nil, nil
	}
	reason := model.XPReasonQuizCompleted
	if isPerfect {
		reason = model.XPReasonQuizPerfect
	}
	quizID := in.QuizID
	return s.AddXP(ctx, in.UserID, amount, reason, &quizID)
}
