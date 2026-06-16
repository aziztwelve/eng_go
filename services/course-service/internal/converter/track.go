package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/course-service/internal/model"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ToTrackProto конвертирует модель трека в protobuf.
func ToTrackProto(t *model.Track) *coursev1.Track {
	if t == nil {
		return nil
	}
	return &coursev1.Track{
		Id:          t.ID,
		Code:        t.Code,
		Title:       t.Title,
		Description: t.Description,
		IconUrl:     t.IconURL,
		Language:    t.Language,
		Level:       t.Level,
		TrackType:   t.TrackType,
		IsPublished: t.IsPublished,
		SortOrder:   t.SortOrder,
		Motivation:  t.Motivation,
		CreatedBy:   t.CreatedBy,
		CreatedAt:   timestamppb.New(t.CreatedAt),
		UpdatedAt:   timestamppb.New(t.UpdatedAt),
	}
}

// FromCreateTrackRequest строит модель из protobuf-запроса.
func FromCreateTrackRequest(req *coursev1.CreateTrackRequest) *model.Track {
	return &model.Track{
		Code:        req.Code,
		Title:       req.Title,
		Description: req.Description,
		IconURL:     req.IconUrl,
		Language:    req.Language,
		Level:       req.Level,
		TrackType:   req.TrackType,
		SortOrder:   req.SortOrder,
		CreatedBy:   req.CreatedBy,
	}
}

// ApplyUpdateTrackRequest применяет ненулевые поля из запроса к модели.
func ApplyUpdateTrackRequest(t *model.Track, req *coursev1.UpdateTrackRequest) {
	if req.Title != nil {
		t.Title = req.Title.Value
	}
	if req.Description != nil {
		t.Description = req.Description.Value
	}
	if req.IconUrl != nil {
		t.IconURL = req.IconUrl.Value
	}
	if req.Language != nil {
		t.Language = req.Language.Value
	}
	if req.Level != nil {
		t.Level = req.Level.Value
	}
	if req.TrackType != nil {
		t.TrackType = req.TrackType.Value
	}
	if req.SortOrder != nil {
		t.SortOrder = req.SortOrder.Value
	}
}
