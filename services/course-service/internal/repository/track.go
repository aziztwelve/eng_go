package repository

import (
	"context"

	"github.com/elearning/course-service/internal/model"
)

// TrackListFilters — фильтры для списка треков.
type TrackListFilters struct {
	Language           *string
	Level              *string
	TrackType          *string
	Search             string
	IncludeUnpublished bool
	Limit              int
	Offset             int
}

// TrackRepository — интерфейс работы с learning tracks.
type TrackRepository interface {
	// Track CRUD
	Create(ctx context.Context, track *model.Track) error
	GetByID(ctx context.Context, id string) (*model.Track, error)
	GetByCode(ctx context.Context, code string) (*model.Track, error)
	Update(ctx context.Context, track *model.Track) error
	Delete(ctx context.Context, id string) error
	List(ctx context.Context, filters TrackListFilters) ([]*model.Track, int, error)
	Publish(ctx context.Context, id string, isPublished bool) error

	// Track <-> Lesson links
	AddLesson(ctx context.Context, trackID, lessonID string, orderIndex int32) error
	RemoveLesson(ctx context.Context, trackID, lessonID string) error
	ListLessons(ctx context.Context, trackID string) ([]*model.Lesson, error)
	ReorderLessons(ctx context.Context, trackID string, lessonOrder []string) error
}
