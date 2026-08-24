package service

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// TrackService — бизнес-логика learning tracks (Phase 0 standalone content).
type TrackService interface {
	CreateTrack(ctx context.Context, track *model.Track) (*model.Track, error)
	GetTrack(ctx context.Context, id string) (*model.Track, error)
	GetTrackByCode(ctx context.Context, code string) (*model.Track, error)
	UpdateTrack(ctx context.Context, track *model.Track) (*model.Track, error)
	DeleteTrack(ctx context.Context, id string) error
	ListTracks(ctx context.Context, filters repository.TrackListFilters) ([]*model.Track, int, error)
	PublishTrack(ctx context.Context, id string, isPublished bool) (*model.Track, error)

	AddLessonToTrack(ctx context.Context, trackID, lessonID string, orderIndex int32) error
	RemoveLessonFromTrack(ctx context.Context, trackID, lessonID string) error
	ListTrackLessons(ctx context.Context, trackID string) ([]*model.Lesson, error)
	ReorderTrackLessons(ctx context.Context, trackID string, lessonOrder []string) error

	// User plan (Phase 8) — персональный набор треков.
	GenerateUserPlan(ctx context.Context, userID, language, level, goal string) (int, error)
	GetUserTracks(ctx context.Context, userID string) ([]*model.UserTrack, error)
	AddUserTrack(ctx context.Context, userID, trackID string) error
	RemoveUserTrack(ctx context.Context, userID, trackID string) error
	ListTrackVocabulary(ctx context.Context, trackID, userID, search string, limit, offset int) ([]*model.TrackVocabularyEntry, int, error)
	AddTrackVocabularyAsFlashcards(ctx context.Context, trackID, userID string, vocabularyIDs []string) (created, skipped []*model.Flashcard, err error)
}

type trackService struct {
	repo       repository.TrackRepository
	flashcards FlashcardService
	vocab      VocabularyService
}

// NewTrackService создаёт сервис learning tracks.
func NewTrackService(repo repository.TrackRepository, deps ...interface{}) TrackService {
	s := &trackService{repo: repo}
	for _, dep := range deps {
		switch v := dep.(type) {
		case FlashcardService:
			s.flashcards = v
		case VocabularyService:
			s.vocab = v
		}
	}
	return s
}

func (s *trackService) ListTrackVocabulary(ctx context.Context, trackID, userID, search string, limit, offset int) ([]*model.TrackVocabularyEntry, int, error) {
	return s.repo.ListVocabulary(ctx, trackID, userID, search, limit, offset)
}

func (s *trackService) AddTrackVocabularyAsFlashcards(ctx context.Context, trackID, userID string, vocabularyIDs []string) (created, skipped []*model.Flashcard, err error) {
	if len(vocabularyIDs) == 0 || len(vocabularyIDs) > 100 {
		return nil, nil, errors.New("vocabulary_ids must contain 1..100 items")
	}
	belongs, err := s.repo.VocabularyBelongsToTrack(ctx, trackID, vocabularyIDs)
	if err != nil {
		return nil, nil, err
	}
	seen := make(map[string]bool)
	for _, id := range vocabularyIDs {
		if seen[id] {
			continue
		}
		seen[id] = true
		if !belongs[id] {
			return nil, nil, fmt.Errorf("vocabulary %s does not belong to track", id)
		}
		v, err := s.vocab.Get(ctx, id)
		if err != nil {
			return nil, nil, err
		}
		card, made, err := s.flashcards.AddVocabularyAsFlashcard(ctx, userID, v, model.FlashcardSourceLesson)
		if err != nil {
			return nil, nil, err
		}
		if made {
			created = append(created, card)
		} else {
			skipped = append(skipped, card)
		}
	}
	return created, skipped, nil
}

func validateTrack(t *model.Track) error {
	t.Code = strings.TrimSpace(t.Code)
	t.Title = strings.TrimSpace(t.Title)
	if t.Code == "" {
		return errors.New("track code is required")
	}
	if t.Title == "" {
		return errors.New("track title is required")
	}
	return nil
}

func (s *trackService) CreateTrack(ctx context.Context, track *model.Track) (*model.Track, error) {
	if err := validateTrack(track); err != nil {
		return nil, err
	}
	if err := s.repo.Create(ctx, track); err != nil {
		return nil, err
	}
	return track, nil
}

func (s *trackService) GetTrack(ctx context.Context, id string) (*model.Track, error) {
	return s.repo.GetByID(ctx, id)
}

func (s *trackService) GetTrackByCode(ctx context.Context, code string) (*model.Track, error) {
	return s.repo.GetByCode(ctx, code)
}

func (s *trackService) UpdateTrack(ctx context.Context, track *model.Track) (*model.Track, error) {
	if err := validateTrack(track); err != nil {
		return nil, err
	}
	if err := s.repo.Update(ctx, track); err != nil {
		return nil, err
	}
	return track, nil
}

func (s *trackService) DeleteTrack(ctx context.Context, id string) error {
	return s.repo.Delete(ctx, id)
}

func (s *trackService) ListTracks(ctx context.Context, filters repository.TrackListFilters) ([]*model.Track, int, error) {
	return s.repo.List(ctx, filters)
}

func (s *trackService) PublishTrack(ctx context.Context, id string, isPublished bool) (*model.Track, error) {
	if err := s.repo.Publish(ctx, id, isPublished); err != nil {
		return nil, err
	}
	return s.repo.GetByID(ctx, id)
}

func (s *trackService) AddLessonToTrack(ctx context.Context, trackID, lessonID string, orderIndex int32) error {
	return s.repo.AddLesson(ctx, trackID, lessonID, orderIndex)
}

func (s *trackService) RemoveLessonFromTrack(ctx context.Context, trackID, lessonID string) error {
	return s.repo.RemoveLesson(ctx, trackID, lessonID)
}

func (s *trackService) ListTrackLessons(ctx context.Context, trackID string) ([]*model.Lesson, error) {
	return s.repo.ListLessons(ctx, trackID)
}

func (s *trackService) ReorderTrackLessons(ctx context.Context, trackID string, lessonOrder []string) error {
	return s.repo.ReorderLessons(ctx, trackID, lessonOrder)
}

// GenerateUserPlan подбирает треки под профиль (level + goal) и материализует
// их в user_tracks. Один активный трек (первый по рангу), остальные — locked.
// Идемпотентно (UPSERT не сбрасывает completed/manual).
func (s *trackService) GenerateUserPlan(ctx context.Context, userID, language, level, goal string) (int, error) {
	if strings.TrimSpace(userID) == "" {
		return 0, errors.New("user_id is required")
	}
	candidates, err := s.repo.SelectPlanCandidates(ctx, language, level, goal)
	if err != nil {
		return 0, err
	}
	assigned := 0
	for i, t := range candidates {
		status := model.UserTrackStatusLocked
		if i == 0 {
			status = model.UserTrackStatusActive // 1 активный трек за раз
		}
		ut := &model.UserTrack{
			UserID:     userID,
			Track:      t,
			OrderIndex: int32(i),
			Status:     status,
			Source:     model.UserTrackSourceOnboarding,
		}
		if err := s.repo.UpsertUserTrack(ctx, ut); err != nil {
			return assigned, err
		}
		assigned++
	}
	return assigned, nil
}

func (s *trackService) GetUserTracks(ctx context.Context, userID string) ([]*model.UserTrack, error) {
	if strings.TrimSpace(userID) == "" {
		return nil, errors.New("user_id is required")
	}
	return s.repo.ListUserTracks(ctx, userID)
}

// AddUserTrack добавляет трек в план вручную (в конец, активным).
func (s *trackService) AddUserTrack(ctx context.Context, userID, trackID string) error {
	if strings.TrimSpace(userID) == "" || strings.TrimSpace(trackID) == "" {
		return errors.New("user_id and track_id are required")
	}
	t, err := s.repo.GetByID(ctx, trackID)
	if err != nil {
		return err
	}
	n, err := s.repo.CountUserTracks(ctx, userID)
	if err != nil {
		return err
	}
	ut := &model.UserTrack{
		UserID:     userID,
		Track:      t,
		OrderIndex: int32(n),
		Status:     model.UserTrackStatusActive,
		Source:     model.UserTrackSourceManual,
	}
	return s.repo.UpsertUserTrack(ctx, ut)
}

func (s *trackService) RemoveUserTrack(ctx context.Context, userID, trackID string) error {
	if strings.TrimSpace(userID) == "" || strings.TrimSpace(trackID) == "" {
		return errors.New("user_id and track_id are required")
	}
	return s.repo.DeleteUserTrack(ctx, userID, trackID)
}
