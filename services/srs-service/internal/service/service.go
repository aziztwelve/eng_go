package service

import (
	"context"
	"crypto/md5"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"sort"
	"time"

	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
)

// Sentinel ошибки, маппятся в gRPC коды на уровне API.
var (
	ErrInvalidItemType = errors.New("invalid item_type")
	ErrInvalidQuality  = errors.New("quality must be in [0..5]")
	ErrInvalidArgument = errors.New("invalid argument")
	ErrNotFound        = errors.New("not found")
)

// Service — Phase-3 бизнес-логика.
type Service interface {
	// SRS.
	EnsureItem(ctx context.Context, userID string, itemType model.ItemType, itemID string) (*model.SRSItem, bool, error)
	RecordReview(ctx context.Context, in RecordReviewInput) (*model.SRSItem, *model.ReviewHistory, error)
	GetDueItems(ctx context.Context, userID string, itemType model.ItemType, limit int) ([]*model.SRSItem, int, error)
	GetWeakItems(ctx context.Context, userID string, itemType model.ItemType, limit int) ([]*model.SRSItem, error)
	GetStats(ctx context.Context, userID string) (*repository.SRSStats, error)

	// Mistakes.
	RecordMistake(ctx context.Context, userID, stepID string, answer json.RawMessage) (*model.Mistake, bool, error)
	ResolveMistakesForStep(ctx context.Context, userID, stepID string) (int32, error)
	ListMistakes(ctx context.Context, userID string, resolvedFilter, limit, offset int) ([]*model.Mistake, int, error)

	// Practice (read-only mix).
	GeneratePracticeSession(ctx context.Context, in PracticeInput) (*PracticeSession, error)

	// Skill decay.
	InitSkill(ctx context.Context, userID, skillID string, skillType model.SkillType, decayRate float64) (*model.SkillDecay, bool, error)
	StrengthenSkill(ctx context.Context, userID, skillID string, amount float64) (*model.SkillDecay, error)
	GetSkillStrengths(ctx context.Context, userID string, skillType model.SkillType, limit, offset int) ([]*model.SkillDecay, int, error)
	GetWeakSkills(ctx context.Context, userID string, skillType model.SkillType, limit int) ([]*model.SkillDecay, error)
	RunDailyDecay(ctx context.Context, userID string) (int32, error)
}

// RecordReviewInput — параметры RecordReview.
type RecordReviewInput struct {
	UserID         string
	ItemType       model.ItemType
	ItemID         string
	Quality        int32
	ResponseTimeMs int32
	UsedHint       bool
}

type service struct {
	items    repository.SRSItemRepository
	history  repository.ReviewHistoryRepository
	mistakes repository.MistakeRepository
	skills   repository.SkillDecayRepository
	clock    func() time.Time
}

// New — конструктор.
func New(
	items repository.SRSItemRepository,
	history repository.ReviewHistoryRepository,
	mistakes repository.MistakeRepository,
	skills repository.SkillDecayRepository,
) Service {
	return &service{
		items:    items,
		history:  history,
		mistakes: mistakes,
		skills:   skills,
		clock:    func() time.Time { return time.Now().UTC() },
	}
}

func (s *service) EnsureItem(ctx context.Context, userID string, itemType model.ItemType, itemID string) (*model.SRSItem, bool, error) {
	if userID == "" || itemID == "" {
		return nil, false, ErrInvalidArgument
	}
	if !itemType.IsValid() {
		return nil, false, ErrInvalidItemType
	}
	item := &model.SRSItem{
		UserID:         userID,
		ItemType:       itemType,
		ItemID:         itemID,
		EasinessFactor: model.DefaultEasinessFactor,
		NextReviewAt:   s.clock(),
	}
	return s.items.Upsert(ctx, item)
}

func (s *service) RecordReview(ctx context.Context, in RecordReviewInput) (*model.SRSItem, *model.ReviewHistory, error) {
	if in.UserID == "" || in.ItemID == "" {
		return nil, nil, ErrInvalidArgument
	}
	if !in.ItemType.IsValid() {
		return nil, nil, ErrInvalidItemType
	}
	if in.Quality < 0 || in.Quality > 5 {
		return nil, nil, ErrInvalidQuality
	}

	// Лениво создаём карточку.
	item, _, err := s.EnsureItem(ctx, in.UserID, in.ItemType, in.ItemID)
	if err != nil {
		return nil, nil, fmt.Errorf("ensure item: %w", err)
	}

	now := s.clock()
	ApplySM2(item, in.Quality, in.ResponseTimeMs, now)

	if err := s.items.Update(ctx, item); err != nil {
		return nil, nil, fmt.Errorf("update srs item: %w", err)
	}

	hist := &model.ReviewHistory{
		SRSItemID:         item.ID,
		UserID:            in.UserID,
		Quality:           in.Quality,
		ResponseTimeMs:    in.ResponseTimeMs,
		UsedHint:          in.UsedHint,
		NewIntervalDays:   item.IntervalDays,
		NewEasinessFactor: item.EasinessFactor,
		NewRepetitions:    item.Repetitions,
	}
	if err := s.history.Create(ctx, hist); err != nil {
		return nil, nil, fmt.Errorf("save review history: %w", err)
	}

	return item, hist, nil
}

func (s *service) GetDueItems(ctx context.Context, userID string, itemType model.ItemType, limit int) ([]*model.SRSItem, int, error) {
	if userID == "" {
		return nil, 0, ErrInvalidArgument
	}
	if itemType != "" && !itemType.IsValid() {
		return nil, 0, ErrInvalidItemType
	}
	return s.items.GetDue(ctx, userID, itemType, s.clock(), limit)
}

func (s *service) GetWeakItems(ctx context.Context, userID string, itemType model.ItemType, limit int) ([]*model.SRSItem, error) {
	if userID == "" {
		return nil, ErrInvalidArgument
	}
	if itemType != "" && !itemType.IsValid() {
		return nil, ErrInvalidItemType
	}
	return s.items.GetWeak(ctx, userID, itemType, limit)
}

func (s *service) GetStats(ctx context.Context, userID string) (*repository.SRSStats, error) {
	if userID == "" {
		return nil, ErrInvalidArgument
	}
	now := s.clock()
	todayStart := time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, now.Location())
	return s.items.Stats(ctx, userID, now, todayStart)
}

func (s *service) RecordMistake(ctx context.Context, userID, stepID string, answer json.RawMessage) (*model.Mistake, bool, error) {
	if userID == "" || stepID == "" {
		return nil, false, ErrInvalidArgument
	}
	if len(answer) == 0 {
		return nil, false, ErrInvalidArgument
	}
	hash, err := hashAnswer(answer)
	if err != nil {
		return nil, false, fmt.Errorf("hash answer: %w", err)
	}
	m := &model.Mistake{
		UserID:          userID,
		StepID:          stepID,
		IncorrectAnswer: answer,
		AnswerHash:      hash,
	}
	res, inserted, err := s.mistakes.Upsert(ctx, m)
	if err != nil {
		return nil, false, err
	}
	// incremented = !inserted (т.е. была старая запись и мы её обновили).
	return res, !inserted, nil
}

func (s *service) ResolveMistakesForStep(ctx context.Context, userID, stepID string) (int32, error) {
	if userID == "" || stepID == "" {
		return 0, ErrInvalidArgument
	}
	return s.mistakes.ResolveByStep(ctx, userID, stepID)
}

func (s *service) ListMistakes(ctx context.Context, userID string, resolvedFilter, limit, offset int) ([]*model.Mistake, int, error) {
	if userID == "" {
		return nil, 0, ErrInvalidArgument
	}
	if resolvedFilter < -1 || resolvedFilter > 1 {
		resolvedFilter = -1
	}
	return s.mistakes.List(ctx, userID, resolvedFilter, limit, offset)
}

// hashAnswer — стабильный fingerprint JSON-ответа: отсортированные
// ключи + md5. Используется для дедупликации в user_mistakes.
func hashAnswer(raw json.RawMessage) (string, error) {
	canon, err := canonicalJSON(raw)
	if err != nil {
		return "", err
	}
	sum := md5.Sum(canon)
	return hex.EncodeToString(sum[:]), nil
}

func canonicalJSON(raw json.RawMessage) ([]byte, error) {
	var v any
	if err := json.Unmarshal(raw, &v); err != nil {
		return nil, err
	}
	return marshalCanonical(v)
}

// marshalCanonical — рекурсивно сортирует ключи объектов.
func marshalCanonical(v any) ([]byte, error) {
	switch x := v.(type) {
	case map[string]any:
		keys := make([]string, 0, len(x))
		for k := range x {
			keys = append(keys, k)
		}
		sort.Strings(keys)
		out := []byte{'{'}
		for i, k := range keys {
			if i > 0 {
				out = append(out, ',')
			}
			kb, _ := json.Marshal(k)
			out = append(out, kb...)
			out = append(out, ':')
			vb, err := marshalCanonical(x[k])
			if err != nil {
				return nil, err
			}
			out = append(out, vb...)
		}
		out = append(out, '}')
		return out, nil
	case []any:
		out := []byte{'['}
		for i, el := range x {
			if i > 0 {
				out = append(out, ',')
			}
			eb, err := marshalCanonical(el)
			if err != nil {
				return nil, err
			}
			out = append(out, eb...)
		}
		out = append(out, ']')
		return out, nil
	default:
		return json.Marshal(v)
	}
}
