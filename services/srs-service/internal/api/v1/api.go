// Package v1 — gRPC API srs-service.
package v1

import (
	"context"
	"encoding/json"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
	"github.com/elearning/srs-service/internal/converter"
	"github.com/elearning/srs-service/internal/service"
)

type api struct {
	srsv1.UnimplementedSRSServiceServer
	svc service.Service
}

// NewAPI — конструктор API.
func NewAPI(svc service.Service) *api {
	return &api{svc: svc}
}

// === SRS ===

func (a *api) EnsureItem(ctx context.Context, req *srsv1.EnsureItemRequest) (*srsv1.EnsureItemResponse, error) {
	if req.UserId == "" || req.ItemId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and item_id are required")
	}
	itemType := converter.ItemTypeFromProto(req.ItemType)
	if itemType == "" {
		return nil, status.Error(codes.InvalidArgument, "item_type is required")
	}
	item, created, err := a.svc.EnsureItem(ctx, req.UserId, itemType, req.ItemId)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.EnsureItemResponse{
		Item:    converter.ToSRSItemProto(item),
		Created: created,
	}, nil
}

func (a *api) RecordReview(ctx context.Context, req *srsv1.RecordReviewRequest) (*srsv1.RecordReviewResponse, error) {
	if req.UserId == "" || req.ItemId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and item_id are required")
	}
	itemType := converter.ItemTypeFromProto(req.ItemType)
	if itemType == "" {
		return nil, status.Error(codes.InvalidArgument, "item_type is required")
	}

	item, hist, err := a.svc.RecordReview(ctx, service.RecordReviewInput{
		UserID:         req.UserId,
		ItemType:       itemType,
		ItemID:         req.ItemId,
		Quality:        req.Quality,
		ResponseTimeMs: req.ResponseTimeMs,
		UsedHint:       req.UsedHint,
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.RecordReviewResponse{
		Item:    converter.ToSRSItemProto(item),
		History: converter.ToReviewHistoryProto(hist),
	}, nil
}

func (a *api) GetDueItems(ctx context.Context, req *srsv1.GetDueItemsRequest) (*srsv1.GetDueItemsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	limit := int(req.Limit)
	if limit <= 0 {
		limit = 20
	}
	items, total, err := a.svc.GetDueItems(ctx, req.UserId, converter.ItemTypeFromProto(req.ItemType), limit)
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &srsv1.GetDueItemsResponse{Total: int32(total)}
	for _, i := range items {
		out.Items = append(out.Items, converter.ToSRSItemProto(i))
	}
	return out, nil
}

func (a *api) GetWeakItems(ctx context.Context, req *srsv1.GetWeakItemsRequest) (*srsv1.GetWeakItemsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	limit := int(req.Limit)
	if limit <= 0 {
		limit = 20
	}
	items, err := a.svc.GetWeakItems(ctx, req.UserId, converter.ItemTypeFromProto(req.ItemType), limit)
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &srsv1.GetWeakItemsResponse{}
	for _, i := range items {
		out.Items = append(out.Items, converter.ToSRSItemProto(i))
	}
	return out, nil
}

func (a *api) GetStats(ctx context.Context, req *srsv1.GetStatsRequest) (*srsv1.GetStatsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	stats, err := a.svc.GetStats(ctx, req.UserId)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.GetStatsResponse{
		TotalItems:    stats.Total,
		DueNow:        stats.DueNow,
		Mastered:      stats.Mastered,
		Learning:      stats.Learning,
		Fresh:         stats.Fresh,
		ReviewedToday: stats.ReviewedToday,
	}, nil
}

// === Mistakes ===

func (a *api) RecordMistake(ctx context.Context, req *srsv1.RecordMistakeRequest) (*srsv1.RecordMistakeResponse, error) {
	if req.UserId == "" || req.StepId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and step_id are required")
	}
	answerJSON, err := converter.StructToJSON(req.IncorrectAnswer)
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "invalid incorrect_answer: %v", err)
	}
	if len(answerJSON) == 0 {
		return nil, status.Error(codes.InvalidArgument, "incorrect_answer is required")
	}
	m, incremented, err := a.svc.RecordMistake(ctx, req.UserId, req.StepId, json.RawMessage(answerJSON))
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.RecordMistakeResponse{
		Mistake:     converter.ToMistakeProto(m),
		Incremented: incremented,
	}, nil
}

func (a *api) ResolveMistakesForStep(ctx context.Context, req *srsv1.ResolveMistakesForStepRequest) (*srsv1.ResolveMistakesForStepResponse, error) {
	if req.UserId == "" || req.StepId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and step_id are required")
	}
	n, err := a.svc.ResolveMistakesForStep(ctx, req.UserId, req.StepId)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.ResolveMistakesForStepResponse{ResolvedCount: n}, nil
}

func (a *api) ListMistakes(ctx context.Context, req *srsv1.ListMistakesRequest) (*srsv1.ListMistakesResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	limit := int(req.Limit)
	if limit <= 0 {
		limit = 20
	}
	offset := int(req.Offset)
	if offset < 0 {
		offset = 0
	}
	resolvedFilter := int(req.Resolved)
	list, total, err := a.svc.ListMistakes(ctx, req.UserId, resolvedFilter, limit, offset)
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &srsv1.ListMistakesResponse{Total: int32(total)}
	for _, m := range list {
		out.Mistakes = append(out.Mistakes, converter.ToMistakeProto(m))
	}
	return out, nil
}

// === Practice ===

func (a *api) GeneratePracticeSession(ctx context.Context, req *srsv1.GeneratePracticeSessionRequest) (*srsv1.GeneratePracticeSessionResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	sess, err := a.svc.GeneratePracticeSession(ctx, service.PracticeInput{
		UserID:       req.UserId,
		Size:         int(req.Size),
		RatioOverdue: int(req.RatioOverdue),
		RatioMistake: int(req.RatioMistake),
		RatioWeak:    int(req.RatioWeak),
	})
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &srsv1.GeneratePracticeSessionResponse{
		OverdueCount: sess.OverdueCount,
		MistakeCount: sess.MistakeCount,
		WeakCount:    sess.WeakCount,
	}
	for _, p := range sess.Items {
		out.Items = append(out.Items, &srsv1.PracticeItem{
			Source:  practiceSourceToProto(p.Source),
			SrsItem: converter.ToSRSItemProto(p.SRSItem),
			Mistake: converter.ToMistakeProto(p.Mistake),
			StepId:  p.StepID,
		})
	}
	return out, nil
}

func practiceSourceToProto(src service.PracticeSource) srsv1.PracticeSource {
	switch src {
	case service.PracticeSourceOverdue:
		return srsv1.PracticeSource_PRACTICE_SOURCE_OVERDUE
	case service.PracticeSourceMistake:
		return srsv1.PracticeSource_PRACTICE_SOURCE_MISTAKE
	case service.PracticeSourceWeak:
		return srsv1.PracticeSource_PRACTICE_SOURCE_WEAK
	default:
		return srsv1.PracticeSource_PRACTICE_SOURCE_UNSPECIFIED
	}
}

// === Skill decay ===

func (a *api) InitSkill(ctx context.Context, req *srsv1.InitSkillRequest) (*srsv1.InitSkillResponse, error) {
	if req.UserId == "" || req.SkillId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and skill_id are required")
	}
	skillType := converter.SkillTypeFromProto(req.SkillType)
	if skillType == "" {
		return nil, status.Error(codes.InvalidArgument, "skill_type is required")
	}
	skill, created, err := a.svc.InitSkill(ctx, req.UserId, req.SkillId, skillType, req.DecayRate)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.InitSkillResponse{
		Skill:   converter.ToSkillDecayProto(skill),
		Created: created,
	}, nil
}

func (a *api) StrengthenSkill(ctx context.Context, req *srsv1.StrengthenSkillRequest) (*srsv1.StrengthenSkillResponse, error) {
	if req.UserId == "" || req.SkillId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and skill_id are required")
	}
	skill, err := a.svc.StrengthenSkill(ctx, req.UserId, req.SkillId, req.Amount)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.StrengthenSkillResponse{
		Skill: converter.ToSkillDecayProto(skill),
	}, nil
}

func (a *api) GetSkillStrengths(ctx context.Context, req *srsv1.GetSkillStrengthsRequest) (*srsv1.GetSkillStrengthsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	limit := int(req.Limit)
	if limit <= 0 {
		limit = 50
	}
	offset := int(req.Offset)
	if offset < 0 {
		offset = 0
	}
	skills, total, err := a.svc.GetSkillStrengths(ctx, req.UserId, converter.SkillTypeFromProto(req.SkillType), limit, offset)
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &srsv1.GetSkillStrengthsResponse{Total: int32(total)}
	for _, s := range skills {
		out.Skills = append(out.Skills, converter.ToSkillDecayProto(s))
	}
	return out, nil
}

func (a *api) GetWeakSkills(ctx context.Context, req *srsv1.GetWeakSkillsRequest) (*srsv1.GetWeakSkillsResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	limit := int(req.Limit)
	if limit <= 0 {
		limit = 10
	}
	skills, err := a.svc.GetWeakSkills(ctx, req.UserId, converter.SkillTypeFromProto(req.SkillType), limit)
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &srsv1.GetWeakSkillsResponse{}
	for _, s := range skills {
		out.Skills = append(out.Skills, converter.ToSkillDecayProto(s))
	}
	return out, nil
}

func (a *api) RunDailyDecay(ctx context.Context, req *srsv1.RunDailyDecayRequest) (*srsv1.RunDailyDecayResponse, error) {
	affected, err := a.svc.RunDailyDecay(ctx, req.UserId)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &srsv1.RunDailyDecayResponse{Affected: affected}, nil
}

func mapServiceError(err error) error {
	switch {
	case errors.Is(err, service.ErrInvalidArgument),
		errors.Is(err, service.ErrInvalidItemType),
		errors.Is(err, service.ErrInvalidQuality):
		return status.Error(codes.InvalidArgument, err.Error())
	case errors.Is(err, service.ErrNotFound):
		return status.Error(codes.NotFound, err.Error())
	default:
		return status.Errorf(codes.Internal, "%v", err)
	}
}
