package service

import (
	"context"
	"testing"
	"time"

	userclient "github.com/elearning/gamification-service/internal/client/user"
	"github.com/elearning/gamification-service/internal/model"
)

// fakeUserClient — реализация userclient.Client для unit-тестов.
type fakeUserClient struct {
	dob string
	tz  string
}

func (f *fakeUserClient) DateOfBirthMMDD(_ context.Context, _ string) (string, error) {
	return f.dob, nil
}

func (f *fakeUserClient) Timezone(_ context.Context, _ string) (string, error) {
	return f.tz, nil
}

// buildServiceWithUser — buildService + кастомный user-клиент. Возвращает
// также fakeAch, чтобы тесты могли инжектить каталог достижений.
// `user` может быть nil — в этом случае Service получит noop-клиент.
func buildServiceWithUser(now func() time.Time, user *fakeUserClient) (*Service, *fakeStats, *fakeXP, *fakeAch) {
	stats := newFakeStats()
	xp := newFakeXP()
	dg := newFakeDailyGoal()
	streak := newFakeStreak()
	ach := newFakeAch()
	cfg := Config{MaxHearts: 5, HeartRegenInterval: 30 * time.Minute, DefaultDailyXP: 20, StreakFreezeMax: 2}
	// Передаем nil interface (а не nil-указатель в interface), чтобы New
	// подменил его на noop. Иначе method call упадет в nil-pointer panic.
	var uc userclient.Client
	if user != nil {
		uc = user
	}
	svc := New(cfg, stats, xp, dg, streak, ach, uc)
	if now != nil {
		svc.WithClock(now)
	}
	return svc, stats, xp, ach
}

func TestOnCourseCompleted_AppendsLanguageAndAwardsBonus(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, stats, _, _ := buildServiceWithUser(c.get, nil)

	res, err := svc.OnCourseCompleted(context.Background(), CourseCompletedInput{
		UserID:   "u1",
		CourseID: "course-en",
		Language: "en",
	})
	mustNotErr(t, err)
	if res == nil {
		t.Fatalf("expected non-nil AddXPResult")
	}
	if res.Stats.TotalXP != XPForCourseBonus() {
		t.Fatalf("total xp = %d, want %d", res.Stats.TotalXP, XPForCourseBonus())
	}

	s, err := stats.Get(context.Background(), "u1")
	mustNotErr(t, err)
	if len(s.LearnedLanguages) != 1 || s.LearnedLanguages[0] != "en" {
		t.Fatalf("learned_languages = %v, want [en]", s.LearnedLanguages)
	}

	// Повторный course с тем же языком — дубликата быть не должно.
	_, err = svc.OnCourseCompleted(context.Background(), CourseCompletedInput{
		UserID:   "u1",
		CourseID: "course-en-2",
		Language: "en",
	})
	mustNotErr(t, err)
	s, _ = stats.Get(context.Background(), "u1")
	if len(s.LearnedLanguages) != 1 {
		t.Fatalf("learned_languages dup not deduped: %v", s.LearnedLanguages)
	}
}

func TestOnCourseCompleted_EmptyLanguageSkipsAppend(t *testing.T) {
	svc, stats, _, _ := buildServiceWithUser(nil, nil)
	_, err := svc.OnCourseCompleted(context.Background(), CourseCompletedInput{
		UserID:   "u1",
		CourseID: "c1",
		Language: "",
	})
	mustNotErr(t, err)
	s, err := stats.Get(context.Background(), "u1")
	mustNotErr(t, err)
	if len(s.LearnedLanguages) != 0 {
		t.Fatalf("expected no languages, got %v", s.LearnedLanguages)
	}
}

func TestOnCourseCompleted_UnlocksLanguagesAchievement(t *testing.T) {
	svc, _, _, ach := buildServiceWithUser(nil, nil)

	// Каталог: language-polyglot требует 2 разных языка.
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-polyglot",
		Code:     "polyglot_2",
		Title:    "Polyglot",
		Category: "language",
		XPReward: 50,
		Criteria: []byte(`{"type":"languages","value":2}`),
	})

	res, err := svc.OnCourseCompleted(context.Background(), CourseCompletedInput{
		UserID: "u1", CourseID: "c-en", Language: "en",
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 0 {
		t.Fatalf("should not unlock at 1 language, got %d", len(res.UnlockedAchievements))
	}

	res, err = svc.OnCourseCompleted(context.Background(), CourseCompletedInput{
		UserID: "u1", CourseID: "c-es", Language: "es",
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 1 || res.UnlockedAchievements[0].AchievementID != "ach-polyglot" {
		t.Fatalf("expected polyglot unlock, got %+v", res.UnlockedAchievements)
	}
}

func TestOnQuizCompleted_PerfectUsesQuizPerfectReason(t *testing.T) {
	svc, _, xp, _ := buildServiceWithUser(nil, nil)

	res, err := svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID:          "u1",
		QuizID:          "q1",
		ScorePercentage: 100,
		IsPassed:        true,
	})
	mustNotErr(t, err)
	if res == nil {
		t.Fatalf("expected non-nil AddXPResult for perfect quiz")
	}

	txns, _, err := xp.ListByUser(context.Background(), "u1", 100, 0)
	mustNotErr(t, err)
	if len(txns) != 1 {
		t.Fatalf("expected 1 transaction, got %d", len(txns))
	}
	if txns[0].Reason != model.XPReasonQuizPerfect {
		t.Fatalf("reason = %s, want %s", txns[0].Reason, model.XPReasonQuizPerfect)
	}
	if txns[0].Amount != 40 {
		t.Fatalf("amount = %d, want 40", txns[0].Amount)
	}
}

func TestOnQuizCompleted_PassedNotPerfectUsesQuizCompletedReason(t *testing.T) {
	svc, _, xp, _ := buildServiceWithUser(nil, nil)

	_, err := svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID:          "u1",
		QuizID:          "q1",
		ScorePercentage: 80,
		IsPassed:        true,
	})
	mustNotErr(t, err)

	txns, _, _ := xp.ListByUser(context.Background(), "u1", 100, 0)
	if len(txns) != 1 {
		t.Fatalf("expected 1 transaction, got %d", len(txns))
	}
	if txns[0].Reason != model.XPReasonQuizCompleted {
		t.Fatalf("reason = %s, want %s", txns[0].Reason, model.XPReasonQuizCompleted)
	}
	if txns[0].Amount != 15 {
		t.Fatalf("amount = %d, want 15", txns[0].Amount)
	}
}

func TestOnQuizCompleted_FailedIsNoop(t *testing.T) {
	svc, _, xp, _ := buildServiceWithUser(nil, nil)

	res, err := svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID:          "u1",
		QuizID:          "q1",
		ScorePercentage: 40,
		IsPassed:        false,
	})
	mustNotErr(t, err)
	if res != nil {
		t.Fatalf("expected nil result for failed quiz, got %+v", res)
	}

	txns, _, _ := xp.ListByUser(context.Background(), "u1", 100, 0)
	if len(txns) != 0 {
		t.Fatalf("expected 0 transactions, got %d", len(txns))
	}
}

func TestMatchCriteria_PerfectQuizzes(t *testing.T) {
	svc, _, _, ach := buildServiceWithUser(nil, nil)
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-pq3",
		Code:     "perfect_3",
		Category: "quiz",
		Criteria: []byte(`{"type":"perfect_quizzes","value":3}`),
	})

	// 2 perfect + 1 regular — еще не должно unlock'нуть perfect_quizzes.
	for i := 0; i < 2; i++ {
		res, err := svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
			UserID: "u1", QuizID: "q", ScorePercentage: 100, IsPassed: true,
		})
		mustNotErr(t, err)
		if len(res.UnlockedAchievements) != 0 {
			t.Fatalf("iteration %d: unexpected unlock at <3 perfect", i)
		}
	}
	res, err := svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID: "u1", QuizID: "q", ScorePercentage: 80, IsPassed: true,
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 0 {
		t.Fatalf("regular quiz should not unlock perfect_quizzes")
	}

	// 3-й perfect → unlock.
	res, err = svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID: "u1", QuizID: "q", ScorePercentage: 100, IsPassed: true,
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 1 {
		t.Fatalf("expected 1 unlock at 3 perfect, got %d", len(res.UnlockedAchievements))
	}
}

func TestMatchCriteria_QuizCompletedCountsBothReasons(t *testing.T) {
	svc, _, _, ach := buildServiceWithUser(nil, nil)
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-q3",
		Code:     "quiz_3",
		Category: "quiz",
		Criteria: []byte(`{"type":"quiz_completed","value":3}`),
	})

	// 1 perfect + 2 regular = 3 — должно unlock'нуть на 3-й.
	res, err := svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID: "u1", QuizID: "q", ScorePercentage: 100, IsPassed: true,
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 0 {
		t.Fatalf("should not unlock at 1 quiz")
	}
	res, err = svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID: "u1", QuizID: "q", ScorePercentage: 70, IsPassed: true,
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 0 {
		t.Fatalf("should not unlock at 2 quizzes")
	}
	res, err = svc.OnQuizCompleted(context.Background(), QuizCompletedInput{
		UserID: "u1", QuizID: "q", ScorePercentage: 70, IsPassed: true,
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 1 {
		t.Fatalf("expected unlock when regular+perfect = target, got %d", len(res.UnlockedAchievements))
	}
}

func TestMatchCriteria_CoursesCompleted(t *testing.T) {
	svc, _, _, ach := buildServiceWithUser(nil, nil)
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-c2",
		Code:     "courses_2",
		Category: "course",
		Criteria: []byte(`{"type":"courses_completed","value":2}`),
	})

	res, err := svc.OnCourseCompleted(context.Background(), CourseCompletedInput{
		UserID: "u1", CourseID: "c1", Language: "en",
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 0 {
		t.Fatalf("should not unlock at 1 course")
	}

	res, err = svc.OnCourseCompleted(context.Background(), CourseCompletedInput{
		UserID: "u1", CourseID: "c2", Language: "es",
	})
	mustNotErr(t, err)
	if len(res.UnlockedAchievements) != 1 {
		t.Fatalf("expected unlock at 2 courses, got %d", len(res.UnlockedAchievements))
	}
}

func TestMatchCriteria_BirthdayMatch(t *testing.T) {
	// Сегодня — 12 мая, профиль 05-12. Должно unlock'нуть.
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, ach := buildServiceWithUser(c.get, &fakeUserClient{dob: "05-12"})
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-bday",
		Code:     "birthday",
		Category: "special",
		Criteria: []byte(`{"type":"birthday"}`),
	})

	got, err := svc.CheckAchievements(context.Background(), "u1", AchievementTriggerXPAdded)
	mustNotErr(t, err)
	if len(got) != 1 {
		t.Fatalf("expected birthday unlock, got %d", len(got))
	}
}

func TestMatchCriteria_BirthdayMismatch(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, ach := buildServiceWithUser(c.get, &fakeUserClient{dob: "01-15"})
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-bday",
		Code:     "birthday",
		Category: "special",
		Criteria: []byte(`{"type":"birthday"}`),
	})

	got, err := svc.CheckAchievements(context.Background(), "u1", AchievementTriggerXPAdded)
	mustNotErr(t, err)
	if len(got) != 0 {
		t.Fatalf("should not unlock on different date, got %d", len(got))
	}
}

func TestMatchCriteria_BirthdayNoProfileDoesNotUnlock(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, ach := buildServiceWithUser(c.get, &fakeUserClient{dob: ""})
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-bday",
		Code:     "birthday",
		Category: "special",
		Criteria: []byte(`{"type":"birthday"}`),
	})

	got, err := svc.CheckAchievements(context.Background(), "u1", AchievementTriggerXPAdded)
	mustNotErr(t, err)
	if len(got) != 0 {
		t.Fatalf("should not unlock when dob is empty, got %d", len(got))
	}
}

// 2026-05-12 23:30 UTC == 2026-05-13 02:30 Europe/Moscow (UTC+3).
// Юзер должен видеть это как 13 мая.
func TestMatchCriteria_BirthdayUsesUserTimezone(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 23, 30, 0, 0, time.UTC)}
	svc, _, _, ach := buildServiceWithUser(c.get, &fakeUserClient{dob: "05-13", tz: "Europe/Moscow"})
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-bday",
		Code:     "birthday",
		Category: "special",
		Criteria: []byte(`{"type":"birthday"}`),
	})

	got, err := svc.CheckAchievements(context.Background(), "u1", AchievementTriggerXPAdded)
	mustNotErr(t, err)
	if len(got) != 1 {
		t.Fatalf("expected birthday unlock in user's tz (Moscow already 05-13), got %d", len(got))
	}
}

// time_of_day "ночная сова" 22-6: UTC=18:00 → Moscow=21:00 (не должно).
// UTC=20:00 → Moscow=23:00 (должно).
func TestMatchCriteria_TimeOfDayUsesUserTimezone(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 18, 0, 0, 0, time.UTC)}
	svc, _, _, ach := buildServiceWithUser(c.get, &fakeUserClient{tz: "Europe/Moscow"})
	ach.catalog = append(ach.catalog, &model.Achievement{
		ID:       "ach-night",
		Code:     "night_owl",
		Category: "special",
		Criteria: []byte(`{"type":"time_of_day","hour_from":22,"hour_to":6}`),
	})

	got, err := svc.CheckAchievements(context.Background(), "u1", AchievementTriggerXPAdded)
	mustNotErr(t, err)
	if len(got) != 0 {
		t.Fatalf("21:00 local is not within 22-6, should not unlock, got %d", len(got))
	}

	c.setTo(time.Date(2026, 5, 12, 20, 0, 0, 0, time.UTC)) // → 23:00 Moscow
	got, err = svc.CheckAchievements(context.Background(), "u1", AchievementTriggerXPAdded)
	mustNotErr(t, err)
	if len(got) != 1 {
		t.Fatalf("23:00 local is within 22-6, should unlock, got %d", len(got))
	}
}

// Streak: UTC=00:30 → Moscow=03:30 — пользователь должен считать это
// "новым днем" по Moscow, чтобы streak.++ сработал.
func TestStreak_AdvancesAcrossDayBoundaryInUserTimezone(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 12, 0, 0, 0, time.UTC)}
	svc, _, _, _ := buildServiceWithUser(c.get, &fakeUserClient{tz: "Europe/Moscow"})

	// 12 мая 12:00 UTC == 15:00 Moscow (12 мая). День 1.
	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 1 {
		t.Fatalf("day 1 streak = %d, want 1", stats.CurrentStreak)
	}

	// 12 мая 22:00 UTC == 13 мая 01:00 Moscow. День 2 в зоне пользователя.
	c.setTo(time.Date(2026, 5, 12, 22, 0, 0, 0, time.UTC))
	stats, err = svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 2 {
		t.Fatalf("day 2 (across UTC-Moscow boundary) streak = %d, want 2", stats.CurrentStreak)
	}
}

// Streak: до перехода полуночи в зоне пользователя — повторный вызов в
// тот же локальный день не двигает streak (идемпотентность сохранена).
func TestStreak_SameLocalDayStillIdempotent(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 18, 0, 0, 0, time.UTC)}
	svc, _, _, _ := buildServiceWithUser(c.get, &fakeUserClient{tz: "Europe/Moscow"})

	// 18:00 UTC == 21:00 Moscow (12 мая)
	_, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)

	// 20:30 UTC == 23:30 Moscow (тот же 12 мая) — streak не должен расти.
	c.setTo(time.Date(2026, 5, 12, 20, 30, 0, 0, time.UTC))
	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 1 {
		t.Fatalf("same local day double-call streak = %d, want 1", stats.CurrentStreak)
	}
}

// Невалидное имя зоны → UTC fallback (никакой паники).
func TestUserLocation_InvalidTimezoneFallsBackToUTC(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _ := buildServiceWithUser(c.get, &fakeUserClient{tz: "Mars/Olympus_Mons"})

	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 1 {
		t.Fatalf("streak after fallback = %d, want 1", stats.CurrentStreak)
	}
}
