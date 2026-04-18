package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/course-service/internal/model"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ToCourseProto конвертирует модель курса в protobuf
func ToCourseProto(course *model.Course) *coursev1.Course {
	if course == nil {
		return nil
	}

	return &coursev1.Course{
		Id:           course.ID,
		Title:        course.Title,
		Description:  course.Description,
		Price:        course.Price,
		InstructorId: course.InstructorID,
		Level:        course.Level,
		Language:     course.Language,
		ThumbnailUrl: course.ThumbnailURL,
		IsPublished:  course.IsPublished,
		CreatedAt:    timestamppb.New(course.CreatedAt),
		UpdatedAt:    timestamppb.New(course.UpdatedAt),
	}
}

// ToModuleProto конвертирует модель модуля в protobuf
func ToModuleProto(module *model.Module) *coursev1.Module {
	if module == nil {
		return nil
	}

	return &coursev1.Module{
		Id:          module.ID,
		CourseId:    module.CourseID,
		Title:       module.Title,
		Description: module.Description,
		OrderIndex:  module.OrderIndex,
		CreatedAt:   timestamppb.New(module.CreatedAt),
		UpdatedAt:   timestamppb.New(module.UpdatedAt),
	}
}

// ToLessonProto конвертирует модель урока в protobuf
func ToLessonProto(lesson *model.Lesson) *coursev1.Lesson {
	if lesson == nil {
		return nil
	}

	return &coursev1.Lesson{
		Id:          lesson.ID,
		ModuleId:    lesson.ModuleID,
		Title:       lesson.Title,
		Description: lesson.Description,
		OrderIndex:  lesson.OrderIndex,
		CreatedAt:   timestamppb.New(lesson.CreatedAt),
		UpdatedAt:   timestamppb.New(lesson.UpdatedAt),
	}
}

// ToStepProto конвертирует модель шага в protobuf
func ToStepProto(step *model.Step) *coursev1.Step {
	if step == nil {
		return nil
	}

	return &coursev1.Step{
		Id:         step.ID,
		LessonId:   step.LessonID,
		Type:       string(step.Type),
		Title:      step.Title,
		Content:    step.Content,
		OrderIndex: step.OrderIndex,
		CreatedAt:  timestamppb.New(step.CreatedAt),
		UpdatedAt:  timestamppb.New(step.UpdatedAt),
	}
}

// ToEnrollmentProto конвертирует модель записи в protobuf
func ToEnrollmentProto(enrollment *model.Enrollment) *coursev1.Enrollment {
	if enrollment == nil {
		return nil
	}

	var accessUntil *timestamppb.Timestamp
	if enrollment.AccessUntil != nil {
		accessUntil = timestamppb.New(*enrollment.AccessUntil)
	}

	return &coursev1.Enrollment{
		Id:          enrollment.ID,
		UserId:      enrollment.UserID,
		CourseId:    enrollment.CourseID,
		Status:      string(enrollment.Status),
		EnrolledAt:  timestamppb.New(enrollment.EnrolledAt),
		AccessUntil: accessUntil,
	}
}

// FromCreateCourseRequest конвертирует protobuf запрос в модель курса
func FromCreateCourseRequest(req *coursev1.CreateCourseRequest) *model.Course {
	return &model.Course{
		Title:        req.Title,
		Description:  req.Description,
		Price:        req.Price,
		InstructorID: req.InstructorId,
		Level:        req.Level,
		Language:     req.Language,
		ThumbnailURL: req.ThumbnailUrl,
		IsPublished:  false,
	}
}

// FromUpdateCourseRequest обновляет модель курса из protobuf запроса
func FromUpdateCourseRequest(course *model.Course, req *coursev1.UpdateCourseRequest) {
	if req.Title != nil {
		course.Title = req.Title.Value
	}
	if req.Description != nil {
		course.Description = req.Description.Value
	}
	if req.Price != nil {
		course.Price = req.Price.Value
	}
	if req.Level != nil {
		course.Level = req.Level.Value
	}
	if req.Language != nil {
		course.Language = req.Language.Value
	}
	if req.ThumbnailUrl != nil {
		course.ThumbnailURL = req.ThumbnailUrl.Value
	}
}

// FromCreateModuleRequest конвертирует protobuf запрос в модель модуля
func FromCreateModuleRequest(req *coursev1.CreateModuleRequest) *model.Module {
	return &model.Module{
		CourseID:    req.CourseId,
		Title:       req.Title,
		Description: req.Description,
		OrderIndex:  req.OrderIndex,
	}
}

// FromUpdateModuleRequest обновляет модель модуля из protobuf запроса
func FromUpdateModuleRequest(module *model.Module, req *coursev1.UpdateModuleRequest) {
	if req.Title != nil {
		module.Title = req.Title.Value
	}
	if req.Description != nil {
		module.Description = req.Description.Value
	}
	if req.OrderIndex != nil {
		module.OrderIndex = req.OrderIndex.Value
	}
}

// FromCreateLessonRequest конвертирует protobuf запрос в модель урока
func FromCreateLessonRequest(req *coursev1.CreateLessonRequest) *model.Lesson {
	return &model.Lesson{
		ModuleID:    req.ModuleId,
		Title:       req.Title,
		Description: req.Description,
		OrderIndex:  req.OrderIndex,
	}
}

// FromUpdateLessonRequest обновляет модель урока из protobuf запроса
func FromUpdateLessonRequest(lesson *model.Lesson, req *coursev1.UpdateLessonRequest) {
	if req.Title != nil {
		lesson.Title = req.Title.Value
	}
	if req.Description != nil {
		lesson.Description = req.Description.Value
	}
	if req.OrderIndex != nil {
		lesson.OrderIndex = req.OrderIndex.Value
	}
}

// FromCreateStepRequest конвертирует protobuf запрос в модель шага
func FromCreateStepRequest(req *coursev1.CreateStepRequest) *model.Step {
	return &model.Step{
		LessonID:   req.LessonId,
		Type:       model.StepType(req.Type),
		Title:      req.Title,
		Content:    req.Content,
		OrderIndex: req.OrderIndex,
	}
}

// FromUpdateStepRequest обновляет модель шага из protobuf запроса
func FromUpdateStepRequest(step *model.Step, req *coursev1.UpdateStepRequest) {
	if req.Type != nil {
		step.Type = model.StepType(req.Type.Value)
	}
	if req.Title != nil {
		step.Title = req.Title.Value
	}
	if req.Content != nil {
		step.Content = req.Content.Value
	}
	if req.OrderIndex != nil {
		step.OrderIndex = req.OrderIndex.Value
	}
}

// ToModuleWithLessonsProto конвертирует модуль с уроками в protobuf
func ToModuleWithLessonsProto(module *model.Module, lessons []*model.Lesson, stepsMap map[string][]*model.Step) *coursev1.ModuleWithLessons {
	lessonsWithSteps := make([]*coursev1.LessonWithSteps, 0, len(lessons))

	for _, lesson := range lessons {
		steps := stepsMap[lesson.ID]
		stepsProto := make([]*coursev1.Step, 0, len(steps))
		for _, step := range steps {
			stepsProto = append(stepsProto, ToStepProto(step))
		}

		lessonsWithSteps = append(lessonsWithSteps, &coursev1.LessonWithSteps{
			Lesson: ToLessonProto(lesson),
			Steps:  stepsProto,
		})
	}

	return &coursev1.ModuleWithLessons{
		Module:  ToModuleProto(module),
		Lessons: lessonsWithSteps,
	}
}

// StringValue создает wrapperspb.StringValue
func StringValue(s string) *wrapperspb.StringValue {
	if s == "" {
		return nil
	}
	return wrapperspb.String(s)
}

// DoubleValue создает wrapperspb.DoubleValue
func DoubleValue(d float64) *wrapperspb.DoubleValue {
	return wrapperspb.Double(d)
}
