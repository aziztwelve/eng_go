package service

import (
	"context"
	"errors"
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
}

type trackService struct {
	repo repository.TrackRepository
}

// NewTrackService создаёт сервис learning tracks.
func NewTrackService(repo repository.TrackRepository) TrackService {
	return &trackService{repo: repo}
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
