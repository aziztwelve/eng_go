// Package abtest — лёгкий A/B-фреймворк для prompts/моделей в ai-service
// (Phase 5.X).
//
// Цели:
//  1. Назначать пользователю детерминированный вариант для каждого
//     эксперимента (один и тот же user_id + эксперимент → один и тот же
//     variant между перезапусками сервиса).
//  2. Конфигурироваться runtime'ом через JSON в env (`AI_AB_EXPERIMENTS`),
//     без перекомпиляции и БД-миграций.
//  3. Поддерживать 2..N вариантов с произвольными целочисленными весами.
//  4. Поддерживать переопределения параметров на variant (например, разные
//     модели или системные промпты).
//
// Anti-goals (не делаем):
//   - Holdout / multi-arm bandits / sequential testing — для прода нужен
//     полноценный feature-flag сервис (LaunchDarkly / Unleash / etc).
//   - Persistence assignments — детерминизм по hash достаточно для MVP.
package abtest

import (
	"crypto/sha256"
	"encoding/binary"
	"encoding/json"
	"errors"
	"fmt"
	"strings"
)

// Experiment — описание одного A/B-эксперимента.
type Experiment struct {
	// Name — уникальный идентификатор (e.g. "chat_model", "system_prompt").
	Name string `json:"name"`
	// Variants — 2..N вариантов с весами. Сумма весов > 0.
	Variants []Variant `json:"variants"`
}

// Variant — один вариант эксперимента.
//
// `Params` — ad-hoc мапа любых ключей: `model`, `system_prompt_suffix`,
// `temperature`, и т.д. Чтение — через хелперы (`StringParam` / `FloatParam`).
type Variant struct {
	// ID — стабильный идентификатор варианта (e.g. "control", "variant_a").
	// Логируется при assignment'е → попадает в analytics.
	ID string `json:"id"`
	// Weight — относительный вес (целочисленный). Probability =
	// Weight / sum(Variants.Weight).
	Weight int `json:"weight"`
	// Params — параметры варианта (model, prompt suffix, ...).
	Params map[string]string `json:"params"`
}

// Registry — иммутабельный набор экспериментов; lookup'ы — O(1) по имени.
type Registry struct {
	byName map[string]*Experiment
}

// NewRegistry — конструктор.
//
// Валидирует:
//   - Имена экспериментов уникальны.
//   - Каждый experiment имеет ≥ 2 вариантов.
//   - Сумма весов > 0.
//   - Имена вариантов внутри одного experiment'а уникальны.
func NewRegistry(experiments []Experiment) (*Registry, error) {
	r := &Registry{byName: make(map[string]*Experiment, len(experiments))}
	for i := range experiments {
		exp := experiments[i]
		if exp.Name == "" {
			return nil, fmt.Errorf("abtest: experiment[%d] name is empty", i)
		}
		if _, dup := r.byName[exp.Name]; dup {
			return nil, fmt.Errorf("abtest: duplicate experiment name %q", exp.Name)
		}
		if len(exp.Variants) < 2 {
			return nil, fmt.Errorf("abtest: experiment %q must have ≥ 2 variants", exp.Name)
		}
		seen := map[string]struct{}{}
		var total int
		for j := range exp.Variants {
			v := &exp.Variants[j]
			if v.ID == "" {
				return nil, fmt.Errorf("abtest: experiment %q variant[%d] id is empty", exp.Name, j)
			}
			if _, dup := seen[v.ID]; dup {
				return nil, fmt.Errorf("abtest: duplicate variant id %q in experiment %q", v.ID, exp.Name)
			}
			seen[v.ID] = struct{}{}
			if v.Weight < 0 {
				return nil, fmt.Errorf("abtest: variant %q in %q has negative weight", v.ID, exp.Name)
			}
			total += v.Weight
		}
		if total <= 0 {
			return nil, fmt.Errorf("abtest: experiment %q total weight must be > 0", exp.Name)
		}
		r.byName[exp.Name] = &exp
	}
	return r, nil
}

// EmptyRegistry — пустой registry (никаких экспериментов). Удобно как
// default — `Pick` всегда вернёт ok=false.
func EmptyRegistry() *Registry { return &Registry{byName: map[string]*Experiment{}} }

// ParseRegistry — десериализует JSON-массив экспериментов из строки.
// Пустая строка → EmptyRegistry, без ошибки.
func ParseRegistry(jsonStr string) (*Registry, error) {
	jsonStr = strings.TrimSpace(jsonStr)
	if jsonStr == "" {
		return EmptyRegistry(), nil
	}
	var experiments []Experiment
	if err := json.Unmarshal([]byte(jsonStr), &experiments); err != nil {
		return nil, fmt.Errorf("abtest: parse json: %w", err)
	}
	return NewRegistry(experiments)
}

// Pick — детерминированно выбирает variant эксперимента для (userID, name).
//
// Возвращает (nil, false) если эксперимент не зарегистрирован — caller
// в этом случае использует свой default.
//
// Алгоритм:
//   bucket = hash("<exp.Name>:<userID>") mod sum(weights)
//   variant = первый, у которого cumulative weight ≥ bucket+1.
//
// Свойства:
//   - Стабильность: один и тот же user_id всегда попадает в один и тот же
//     bucket, между перезапусками сервиса assignment не меняется.
//   - Independence: добавление НОВОГО эксперимента не меняет assignment'ы
//     старых (хеш с включением exp.Name).
//   - Изменение весов = переразбиение пользователей. Это by design (см.
//     A/B-testing best practices: лучше создать новый эксперимент).
func (r *Registry) Pick(experimentName, userID string) (*Variant, bool) {
	exp, ok := r.byName[experimentName]
	if !ok {
		return nil, false
	}
	if userID == "" {
		// Нет user-id — отдаём первый variant (стабильно, для не-залогиненных
		// сценариев типа admin tools). Альтернатива — pseudo-random, но это
		// нарушит детерминизм.
		return &exp.Variants[0], true
	}
	var total int
	for _, v := range exp.Variants {
		total += v.Weight
	}
	bucket := bucketize(experimentName, userID, total)
	cum := 0
	for i := range exp.Variants {
		cum += exp.Variants[i].Weight
		if bucket < cum {
			return &exp.Variants[i], true
		}
	}
	// Недостижимо при total > 0 — fallback на последний variant.
	return &exp.Variants[len(exp.Variants)-1], true
}

// Has — true если эксперимент с таким именем зарегистрирован.
func (r *Registry) Has(experimentName string) bool {
	_, ok := r.byName[experimentName]
	return ok
}

// Names — список всех зарегистрированных экспериментов (для диагностики).
func (r *Registry) Names() []string {
	out := make([]string, 0, len(r.byName))
	for n := range r.byName {
		out = append(out, n)
	}
	return out
}

// StringParam — читает строковый параметр variant'а с дефолтом.
// Удобно для подмены model/prompt без дополнительной валидации.
func (v *Variant) StringParam(key, def string) string {
	if v == nil || v.Params == nil {
		return def
	}
	if val, ok := v.Params[key]; ok && val != "" {
		return val
	}
	return def
}

// =====================================================================
// internals
// =====================================================================

func bucketize(experimentName, userID string, total int) int {
	if total <= 0 {
		return 0
	}
	h := sha256.New()
	h.Write([]byte(experimentName))
	h.Write([]byte{':'})
	h.Write([]byte(userID))
	sum := h.Sum(nil)
	// 4 байта достаточно — диапазон 2^32 покрывает любые разумные total.
	n := binary.BigEndian.Uint32(sum[:4])
	return int(n % uint32(total))
}

// ErrInvalidConfig — ошибка валидации registry.
var ErrInvalidConfig = errors.New("abtest: invalid config")
