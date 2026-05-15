// Package srs — клиент к srs-service для course-service.
//
// На Phase 3 full course-service триггерит InitSkill при первом завершении
// урока (skill_type=LESSON) и модуля (skill_type=MODULE). Кроме этого
// StrengthenSkill вызывается при повторном правильном прохождении урока,
// чтобы decay не успел «съесть» strength навыка.
//
// Реализации: grpc (boundary) и noop (fallback, активен если адрес не задан).
// Любые ошибки SRS — non-fatal: логируются и не пробрасываются в основной поток.
package srs

import "context"

// SkillType — гранулярность decay-карточки.
type SkillType string

const (
	SkillTypeModule SkillType = "module"
	SkillTypeLesson SkillType = "lesson"
)

// InitSkillEvent — событие «первый раз закрыли lesson/module».
type InitSkillEvent struct {
	UserID    string
	SkillID   string
	SkillType SkillType
	// DecayRate — 0 → дефолт (0.05 per day).
	DecayRate float64
}

// StrengthenSkillEvent — событие «практика по навыку».
type StrengthenSkillEvent struct {
	UserID    string
	SkillID   string
	SkillType SkillType
	// Amount ∈ (0..1], сколько добавить к current_strength.
	Amount float64
}

// Client — контракт клиента srs-service.
// Реализации не должны паниковать; ошибки логируются и не пробрасываются.
type Client interface {
	InitSkill(ctx context.Context, event InitSkillEvent) error
	StrengthenSkill(ctx context.Context, event StrengthenSkillEvent) error
}
