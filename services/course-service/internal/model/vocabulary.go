package model

import "time"

// VocabularyEntry представляет пару слово↔перевод.
// Используется match_pairs / fill_blank / listening и админскими
// справочниками (Phase 2). Уникальный ключ — (language, word, target_language).
type VocabularyEntry struct {
	ID             string
	Language       string
	Word           string
	Translation    string
	TargetLanguage string
	AudioURL       string
	ImageURL       string
	Level          string
	POS            string
	CreatedAt      time.Time
	UpdatedAt      time.Time
}
