package model

import "time"

// Flashcard — личная карточка слова пользователя (Phase 7).
//
// См. docs/tasks/phase-7-word-flashcards.md.
//
// Гибридная модель: если карточка ссылается на system vocabulary
// (auto-from-lesson / auto-from-mistake / ai_suggestion), VocabularyID
// заполнен. Если manual — VocabularyID = "", все поля inline.
type Flashcard struct {
	ID              string
	UserID          string
	Source          string // 'manual' | 'lesson' | 'mistake' | 'ai_suggestion'
	VocabularyID    string // optional, "" для manual
	Word            string
	Translation     string
	Language        string
	TargetLanguage  string
	Definition      string // optional
	ExampleSentence string // optional
	Transcription   string // optional, IPA: /həˈloʊ/
	AudioURL        string // optional
	ImageURL        string // optional
	ArchivedAt      *time.Time
	CreatedAt       time.Time
	UpdatedAt       time.Time

	// Computed на app-уровне (не из колонок).
	PinnedToday bool

	// Опциональная SM-2 проекция (заполняется когда include_srs=true).
	// nil → данные не запрашивались (не значит «нет SRS-карточки»).
	Strength      *float64
	Repetitions   *int32
	NextReviewAt  *time.Time
}

// FlashcardSource — допустимые значения Source.
const (
	FlashcardSourceManual       = "manual"
	FlashcardSourceLesson       = "lesson"
	FlashcardSourceMistake      = "mistake"
	FlashcardSourceAISuggestion = "ai_suggestion"
)

// IsValidFlashcardSource — проверка ввода против CHECK constraint в БД.
func IsValidFlashcardSource(s string) bool {
	switch s {
	case FlashcardSourceManual,
		FlashcardSourceLesson,
		FlashcardSourceMistake,
		FlashcardSourceAISuggestion:
		return true
	}
	return false
}
