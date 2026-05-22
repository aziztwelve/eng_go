package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"
	"github.com/elearning/social-service/internal/converter"
	"github.com/elearning/social-service/internal/service"
)

func (a *API) SendFriendRequest(ctx context.Context, req *socialv1.SendFriendRequestRequest) (*socialv1.SendFriendRequestResponse, error) {
	requesterID, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	targetID, err := parseUUID(req.GetTargetId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "target_id: %v", err)
	}
	f, autoAccepted, err := a.svc.SendFriendRequest(ctx, requesterID, targetID)
	if err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.SendFriendRequestResponse{
		Friendship:   converter.ToFriendshipProto(f),
		AutoAccepted: autoAccepted,
	}, nil
}

func (a *API) AcceptFriendRequest(ctx context.Context, req *socialv1.AcceptFriendRequestRequest) (*socialv1.AcceptFriendRequestResponse, error) {
	callerID, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	fid, err := parseUUID(req.GetFriendshipId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "friendship_id: %v", err)
	}
	f, err := a.svc.AcceptFriendRequest(ctx, callerID, fid)
	if err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.AcceptFriendRequestResponse{Friendship: converter.ToFriendshipProto(f)}, nil
}

func (a *API) RejectFriendRequest(ctx context.Context, req *socialv1.RejectFriendRequestRequest) (*socialv1.RejectFriendRequestResponse, error) {
	callerID, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	fid, err := parseUUID(req.GetFriendshipId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "friendship_id: %v", err)
	}
	if err := a.svc.RejectFriendRequest(ctx, callerID, fid); err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.RejectFriendRequestResponse{}, nil
}

func (a *API) RemoveFriend(ctx context.Context, req *socialv1.RemoveFriendRequest) (*socialv1.RemoveFriendResponse, error) {
	callerID, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	friendID, err := parseUUID(req.GetFriendId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "friend_id: %v", err)
	}
	if err := a.svc.RemoveFriend(ctx, callerID, friendID); err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.RemoveFriendResponse{}, nil
}

func (a *API) ListFriends(ctx context.Context, req *socialv1.ListFriendsRequest) (*socialv1.ListFriendsResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	friends, total, err := a.svc.ListFriends(ctx, uid, int(req.GetLimit()), int(req.GetOffset()))
	if err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.ListFriendsResponse{
		Friends: converter.ToFriendInfosProto(friends),
		Total:   int32(total),
	}, nil
}

func (a *API) ListPendingRequests(ctx context.Context, req *socialv1.ListPendingRequestsRequest) (*socialv1.ListPendingRequestsResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	rows, total, err := a.svc.ListPendingRequests(
		ctx, uid, service.PendingDirection(req.GetDirection()),
		int(req.GetLimit()), int(req.GetOffset()),
	)
	if err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.ListPendingRequestsResponse{
		Requests: converter.ToFriendInfosProto(rows),
		Total:    int32(total),
	}, nil
}

func (a *API) SearchUsersByUsername(ctx context.Context, req *socialv1.SearchUsersByUsernameRequest) (*socialv1.SearchUsersByUsernameResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	rows, err := a.svc.SearchUsersByUsername(ctx, uid, req.GetQuery(), int(req.GetLimit()))
	if err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.SearchUsersByUsernameResponse{
		Users: converter.ToFriendInfosProto(rows),
	}, nil
}

func (a *API) GetFriendsLeaderboard(ctx context.Context, req *socialv1.GetFriendsLeaderboardRequest) (*socialv1.GetFriendsLeaderboardResponse, error) {
	uid, err := parseUUID(req.GetUserId())
	if err != nil {
		return nil, status.Errorf(codes.InvalidArgument, "user_id: %v", err)
	}
	entries, err := a.svc.GetFriendsLeaderboard(ctx, uid, int(req.GetLimit()))
	if err != nil {
		return nil, mapFriendError(err)
	}
	return &socialv1.GetFriendsLeaderboardResponse{
		Entries: converter.ToLeaderboardFriendsProto(entries),
	}, nil
}

// mapFriendError — добавляет к стандартным маппингам обработку ErrFriendshipDisabled.
func mapFriendError(err error) error {
	if errors.Is(err, service.ErrFriendshipDisabled) {
		return status.Error(codes.FailedPrecondition, err.Error())
	}
	return mapError(err)
}
