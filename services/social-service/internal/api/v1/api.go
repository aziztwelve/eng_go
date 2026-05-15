package v1

import (
	"context"
	"errors"

	"github.com/google/uuid"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"
	"github.com/elearning/social-service/internal/converter"
	"github.com/elearning/social-service/internal/service"
)

// API — gRPC handler для SocialService.
type API struct {
	socialv1.UnimplementedSocialServiceServer
	svc *service.Service
}

func NewAPI(svc *service.Service) *API {
	return &API{svc: svc}
}

func (a *API) ListLeagues(ctx context.Context, _ *socialv1.ListLeaguesRequest) (*socialv1.ListLeaguesResponse, error) {
	leagues, err := a.svc.ListLeagues(ctx)
	if err != nil {
		return nil, mapError(err)
	}
	return &socialv1.ListLeaguesResponse{Leagues: converter.ToLeaguesProto(leagues)}, nil
}

func (a *API) EnsureUserInLeague(ctx context.Context, req *socialv1.EnsureUserInLeagueRequest) (*socialv1.EnsureUserInLeagueResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	ul, created, err := a.svc.EnsureUserInLeague(ctx, uid)
	if err != nil {
		return nil, mapError(err)
	}
	res, err := a.svc.GetMyLeague(ctx, uid)
	if err != nil {
		return nil, mapError(err)
	}
	return &socialv1.EnsureUserInLeagueResponse{
		UserLeague: converter.ToUserLeagueProto(ul, res.League),
		Created:    created,
	}, nil
}

func (a *API) GetMyLeague(ctx context.Context, req *socialv1.GetMyLeagueRequest) (*socialv1.GetMyLeagueResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	res, err := a.svc.GetMyLeague(ctx, uid)
	if err != nil {
		return nil, mapError(err)
	}
	return &socialv1.GetMyLeagueResponse{
		UserLeague: converter.ToUserLeagueProto(res.UserLeague, res.League),
		CycleEndAt: timestamppbNew(res.CycleEndAt),
	}, nil
}

func (a *API) GetMyLeaderboard(ctx context.Context, req *socialv1.GetMyLeaderboardRequest) (*socialv1.GetMyLeaderboardResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	res, err := a.svc.GetMyLeaderboard(ctx, uid)
	if err != nil {
		return nil, mapError(err)
	}
	entries := make([]*socialv1.LeaderboardEntry, 0, len(res.Entries))
	for _, e := range res.Entries {
		entries = append(entries, converter.ToLeaderboardEntryProto(e, uid))
	}
	return &socialv1.GetMyLeaderboardResponse{
		League:          converter.ToLeagueProto(res.League),
		CohortId:        res.CohortID.String(),
		CycleEndAt:      timestamppbNew(res.CycleEndAt),
		MyRank:          int32(res.MyRank),
		MyWeeklyXp:      int32(res.MyWeeklyXP),
		Entries:         entries,
		PromotionCount:  int32(res.PromotionCount),
		DemotionCount:   int32(res.DemotionCount),
	}, nil
}

func (a *API) GetHistory(ctx context.Context, req *socialv1.GetHistoryRequest) (*socialv1.GetHistoryResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	entries, total, err := a.svc.GetHistory(ctx, uid, int(req.GetLimit()), int(req.GetOffset()))
	if err != nil {
		return nil, mapError(err)
	}
	out := make([]*socialv1.LeagueHistoryEntry, 0, len(entries))
	for _, e := range entries {
		out = append(out, converter.ToHistoryProto(e))
	}
	return &socialv1.GetHistoryResponse{Entries: out, Total: int32(total)}, nil
}

func (a *API) RunWeeklyRotation(ctx context.Context, req *socialv1.RunWeeklyRotationRequest) (*socialv1.RunWeeklyRotationResponse, error) {
	stats, err := a.svc.RunWeeklyRotation(ctx, req.GetForce())
	if err != nil {
		return nil, mapError(err)
	}
	return &socialv1.RunWeeklyRotationResponse{
		CohortsProcessed: int32(stats.CohortsProcessed),
		UsersPromoted:    int32(stats.UsersPromoted),
		UsersDemoted:     int32(stats.UsersDemoted),
		UsersSustained:   int32(stats.UsersSustained),
	}, nil
}

func parseUUID(s string) (uuid.UUID, error) {
	if s == "" {
		return uuid.Nil, errors.New("empty")
	}
	return uuid.Parse(s)
}

func mapError(err error) error {
	switch {
	case err == nil:
		return nil
	case errors.Is(err, service.ErrInvalidArgument):
		return status.Error(codes.InvalidArgument, err.Error())
	case errors.Is(err, service.ErrNotFound):
		return status.Error(codes.NotFound, err.Error())
	default:
		return status.Error(codes.Internal, err.Error())
	}
}
