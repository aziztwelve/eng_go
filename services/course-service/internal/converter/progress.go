package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/course-service/internal/model"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ToStepProgressProto конвертирует модель прогресса шага в protobuf
func ToStepProgressProto(progress *model.StepProgress) *coursev1.StepProgress {
	if progress == nil {
		return nil
	}

	proto := &coursev1.StepProgress{
		Id:               progress.ID,
		UserId:           progress.UserID,
		StepId:           progress.StepID,
		LessonId:         progress.LessonID,
		Completed:        progress.Completed,
		TimeSpentSeconds: progress.TimeSpentSeconds,
		Attempts:         progress.Attempts,
		CreatedAt:        timestamppb.New(progress.CreatedAt),
		UpdatedAt:        timestamppb.New(progress.UpdatedAt),
	}

	if progress.CompletedAt != nil {
		proto.CompletedAt = timestamppb.New(*progress.CompletedAt)
	}

	if progress.Score != nil {
		proto.Score = *progress.Score
	}

	return proto
}

// ToLessonProgressProto конвертирует модель прогресса урока в protobuf
func ToLessonProgressProto(progress *model.LessonProgress) *coursev1.LessonProgress {
	if progress == nil {
		return nil
	}

	proto := &coursev1.LessonProgress{
		Id:                 progress.ID,
		UserId:             progress.UserID,
		LessonId:           progress.LessonID,
		CourseId:           progress.CourseID,
		TotalSteps:         progress.TotalSteps,
		CompletedSteps:     progress.CompletedSteps,
		ProgressPercentage: progress.ProgressPercentage,
		StartedAt:          timestamppb.New(progress.StartedAt),
		LastActivityAt:     timestamppb.New(progress.LastActivityAt),
	}

	if progress.CompletedAt != nil {
		proto.CompletedAt = timestamppb.New(*progress.CompletedAt)
	}

	return proto
}
