package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/course-service/internal/converter"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// PinForToday — добавить flashcard в очередь "сегодня". Идемпотентно.
func (a *api) PinForToday(ctx context.Context, req *coursev1.PinForTodayRequest) (*coursev1.PinForTodayResponse, error) {
	if req.UserId == "" || req.FlashcardId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and flashcard_id are required")
	}
	addedAt, _, err := a.todayQueueService.Pin(ctx, req.UserId, req.FlashcardId, req.QueuedForDate)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	return &coursev1.PinForTodayResponse{AddedAt: timestamppb.New(addedAt)}, nil
}

// UnpinFromToday — убрать flashcard из очереди. Идемпотентно (no-op если нет).
func (a *api) UnpinFromToday(ctx context.Context, req *coursev1.UnpinFromTodayRequest) (*coursev1.UnpinFromTodayResponse, error) {
	if req.UserId == "" || req.FlashcardId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id and flashcard_id are required")
	}
	if err := a.todayQueueService.Unpin(ctx, req.UserId, req.FlashcardId, req.QueuedForDate); err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	return &coursev1.UnpinFromTodayResponse{}, nil
}

// ListTodayQueue — карточки в очереди "сегодня" (или указанную дату).
// include_srs — TODO (SM-2 проекция).
func (a *api) ListTodayQueue(ctx context.Context, req *coursev1.ListTodayQueueRequest) (*coursev1.ListTodayQueueResponse, error) {
	if req.UserId == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}
	items, resolvedDate, err := a.todayQueueService.List(ctx, req.UserId, req.QueuedForDate)
	if err != nil {
		return nil, mapFlashcardErr(err, codes.Internal)
	}
	out := make([]*coursev1.Flashcard, 0, len(items))
	for _, f := range items {
		out = append(out, converter.ToFlashcardProto(f))
	}
	return &coursev1.ListTodayQueueResponse{
		Items:         out,
		QueuedForDate: resolvedDate.Format("2006-01-02"),
	}, nil
}
