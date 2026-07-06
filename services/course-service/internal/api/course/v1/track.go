package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/course-service/internal/converter"
	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ListTracks возвращает страницу треков с фильтрами.
func (a *api) ListTracks(ctx context.Context, req *coursev1.ListTracksRequest) (*coursev1.ListTracksResponse, error) {
	filters := repository.TrackListFilters{
		Search:             req.Search,
		IncludeUnpublished: req.IncludeUnpublished,
		Limit:              int(req.Limit),
		Offset:             int(req.Offset),
	}
	if req.Language != nil {
		v := req.Language.Value
		filters.Language = &v
	}
	if req.Level != nil {
		v := req.Level.Value
		filters.Level = &v
	}
	if req.TrackType != nil {
		v := req.TrackType.Value
		filters.TrackType = &v
	}
	if len(req.Motivation) > 0 {
		filters.Motivation = req.Motivation
	}

	tracks, total, err := a.trackService.ListTracks(ctx, filters)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to list tracks: %v", err)
	}

	protoTracks := make([]*coursev1.Track, 0, len(tracks))
	for _, t := range tracks {
		protoTracks = append(protoTracks, converter.ToTrackProto(t))
	}
	return &coursev1.ListTracksResponse{Tracks: protoTracks, Total: int32(total)}, nil
}

// GetTrack возвращает трек по ID, опционально с уроками.
func (a *api) GetTrack(ctx context.Context, req *coursev1.GetTrackRequest) (*coursev1.GetTrackResponse, error) {
	if req.TrackId == "" {
		return nil, status.Error(codes.InvalidArgument, "track_id is required")
	}
	track, err := a.trackService.GetTrack(ctx, req.TrackId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "track not found: %v", err)
	}
	return a.buildTrackResponse(ctx, track, req.IncludeLessons)
}

// GetTrackByCode возвращает трек по коду.
func (a *api) GetTrackByCode(ctx context.Context, req *coursev1.GetTrackByCodeRequest) (*coursev1.GetTrackResponse, error) {
	if req.Code == "" {
		return nil, status.Error(codes.InvalidArgument, "code is required")
	}
	track, err := a.trackService.GetTrackByCode(ctx, req.Code)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "track not found: %v", err)
	}
	return a.buildTrackResponse(ctx, track, req.IncludeLessons)
}

func (a *api) buildTrackResponse(ctx context.Context, track *model.Track, includeLessons bool) (*coursev1.GetTrackResponse, error) {
	resp := &coursev1.GetTrackResponse{Track: converter.ToTrackProto(track)}
	if includeLessons {
		lessons, err := a.trackService.ListTrackLessons(ctx, track.ID)
		if err != nil {
			return nil, status.Errorf(codes.Internal, "failed to load track lessons: %v", err)
		}
		for _, l := range lessons {
			resp.Lessons = append(resp.Lessons, converter.ToLessonProto(l))
		}
	}
	return resp, nil
}

// CreateTrack создаёт новый трек.
func (a *api) CreateTrack(ctx context.Context, req *coursev1.CreateTrackRequest) (*coursev1.CreateTrackResponse, error) {
	track, err := a.trackService.CreateTrack(ctx, converter.FromCreateTrackRequest(req))
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "failed to create track: %v", err)
	}
	return &coursev1.CreateTrackResponse{Track: converter.ToTrackProto(track)}, nil
}

// UpdateTrack обновляет трек.
func (a *api) UpdateTrack(ctx context.Context, req *coursev1.UpdateTrackRequest) (*coursev1.UpdateTrackResponse, error) {
	if req.TrackId == "" {
		return nil, status.Error(codes.InvalidArgument, "track_id is required")
	}
	existing, err := a.trackService.GetTrack(ctx, req.TrackId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "track not found: %v", err)
	}
	converter.ApplyUpdateTrackRequest(existing, req)
	updated, err := a.trackService.UpdateTrack(ctx, existing)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to update track: %v", err)
	}
	return &coursev1.UpdateTrackResponse{Track: converter.ToTrackProto(updated)}, nil
}

// DeleteTrack удаляет трек.
func (a *api) DeleteTrack(ctx context.Context, req *coursev1.DeleteTrackRequest) (*coursev1.DeleteTrackResponse, error) {
	if req.TrackId == "" {
		return nil, status.Error(codes.InvalidArgument, "track_id is required")
	}
	if err := a.trackService.DeleteTrack(ctx, req.TrackId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete track: %v", err)
	}
	return &coursev1.DeleteTrackResponse{Success: true}, nil
}

// PublishTrack переключает публикацию трека.
func (a *api) PublishTrack(ctx context.Context, req *coursev1.PublishTrackRequest) (*coursev1.PublishTrackResponse, error) {
	if req.TrackId == "" {
		return nil, status.Error(codes.InvalidArgument, "track_id is required")
	}
	track, err := a.trackService.PublishTrack(ctx, req.TrackId, req.IsPublished)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to publish track: %v", err)
	}
	return &coursev1.PublishTrackResponse{Track: converter.ToTrackProto(track)}, nil
}

// AddLessonToTrack привязывает урок к треку.
func (a *api) AddLessonToTrack(ctx context.Context, req *coursev1.AddLessonToTrackRequest) (*coursev1.AddLessonToTrackResponse, error) {
	if req.TrackId == "" || req.LessonId == "" {
		return nil, status.Error(codes.InvalidArgument, "track_id and lesson_id are required")
	}
	if err := a.trackService.AddLessonToTrack(ctx, req.TrackId, req.LessonId, req.OrderIndex); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to add lesson: %v", err)
	}
	return &coursev1.AddLessonToTrackResponse{Success: true}, nil
}

// RemoveLessonFromTrack отвязывает урок от трека.
func (a *api) RemoveLessonFromTrack(ctx context.Context, req *coursev1.RemoveLessonFromTrackRequest) (*coursev1.RemoveLessonFromTrackResponse, error) {
	if req.TrackId == "" || req.LessonId == "" {
		return nil, status.Error(codes.InvalidArgument, "track_id and lesson_id are required")
	}
	if err := a.trackService.RemoveLessonFromTrack(ctx, req.TrackId, req.LessonId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to remove lesson: %v", err)
	}
	return &coursev1.RemoveLessonFromTrackResponse{Success: true}, nil
}

// ReorderTrackLessons атомарно переустанавливает порядок уроков.
func (a *api) ReorderTrackLessons(ctx context.Context, req *coursev1.ReorderTrackLessonsRequest) (*coursev1.ReorderTrackLessonsResponse, error) {
	if req.TrackId == "" {
		return nil, status.Error(codes.InvalidArgument, "track_id is required")
	}
	if err := a.trackService.ReorderTrackLessons(ctx, req.TrackId, req.LessonIds); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to reorder lessons: %v", err)
	}
	return &coursev1.ReorderTrackLessonsResponse{Success: true}, nil
}

// GenerateUserPlan подбирает треки под профиль (level + goal) и материализует
// их в персональный план пользователя (user_tracks).
func (a *api) GenerateUserPlan(ctx context.Context, req *coursev1.GenerateUserPlanRequest) (*coursev1.GenerateUserPlanResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	n, err := a.trackService.GenerateUserPlan(ctx, req.UserId, req.Language, req.Level, req.Goal)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to generate user plan: %v", err)
	}
	return &coursev1.GenerateUserPlanResponse{TracksAssigned: int32(n)}, nil
}

// GetUserTracks возвращает персональный план пользователя.
func (a *api) GetUserTracks(ctx context.Context, req *coursev1.GetUserTracksRequest) (*coursev1.GetUserTracksResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	list, err := a.trackService.GetUserTracks(ctx, req.UserId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get user tracks: %v", err)
	}
	resp := &coursev1.GetUserTracksResponse{}
	for _, ut := range list {
		resp.Tracks = append(resp.Tracks, converter.ToUserTrackProto(ut))
	}
	return resp, nil
}

// AddUserTrack добавляет трек в план пользователя вручную.
func (a *api) AddUserTrack(ctx context.Context, req *coursev1.AddUserTrackRequest) (*coursev1.AddUserTrackResponse, error) {
	if req.UserId == "" || req.TrackId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and track_id are required")
	}
	if err := a.trackService.AddUserTrack(ctx, req.UserId, req.TrackId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to add user track: %v", err)
	}
	return &coursev1.AddUserTrackResponse{Success: true}, nil
}

// RemoveUserTrack убирает трек из плана пользователя.
func (a *api) RemoveUserTrack(ctx context.Context, req *coursev1.RemoveUserTrackRequest) (*coursev1.RemoveUserTrackResponse, error) {
	if req.UserId == "" || req.TrackId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and track_id are required")
	}
	if err := a.trackService.RemoveUserTrack(ctx, req.UserId, req.TrackId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to remove user track: %v", err)
	}
	return &coursev1.RemoveUserTrackResponse{Success: true}, nil
}
