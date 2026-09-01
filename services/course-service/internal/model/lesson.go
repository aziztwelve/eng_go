package model

import "time"

// Lesson представляет урок
type Lesson struct {
	ID          string
	ModuleID    string
	Title       string
	Description string
	// TitleI18N / DescriptionI18N — локализованные значения ({"ru":..,"en":..}).
	// Title/Description — выбранная локаль (заполняется при чтении).
	TitleI18N       map[string]string
	DescriptionI18N map[string]string
	OrderIndex      int32
	CreatedAt       time.Time
	UpdatedAt       time.Time
}
