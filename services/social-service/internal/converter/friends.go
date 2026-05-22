package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"
	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/service"
)

// ToFriendshipStatusProto переводит модельный статус в proto enum.
func ToFriendshipStatusProto(s model.FriendshipStatus) socialv1.FriendshipStatus {
	switch s {
	case model.FriendshipPending:
		return socialv1.FriendshipStatus_FRIENDSHIP_STATUS_PENDING
	case model.FriendshipAccepted:
		return socialv1.FriendshipStatus_FRIENDSHIP_STATUS_ACCEPTED
	case model.FriendshipBlocked:
		return socialv1.FriendshipStatus_FRIENDSHIP_STATUS_BLOCKED
	default:
		return socialv1.FriendshipStatus_FRIENDSHIP_STATUS_UNSPECIFIED
	}
}

// ToFriendshipProto — model.Friendship → proto.
func ToFriendshipProto(f *model.Friendship) *socialv1.Friendship {
	if f == nil {
		return nil
	}
	return &socialv1.Friendship{
		Id:          f.ID,
		UserId_1:    f.UserID1,
		UserId_2:    f.UserID2,
		Status:      ToFriendshipStatusProto(f.Status),
		RequestedBy: f.RequestedBy,
		CreatedAt:   timestamppb.New(f.CreatedAt),
		UpdatedAt:   timestamppb.New(f.UpdatedAt),
	}
}

// ToFriendInfoProto — service.FriendInfo → proto.
func ToFriendInfoProto(fi *service.FriendInfo) *socialv1.FriendInfo {
	if fi == nil {
		return nil
	}
	return &socialv1.FriendInfo{
		UserId:           fi.UserID.String(),
		Username:         fi.Username,
		FullName:         fi.FullName,
		AvatarUrl:        fi.AvatarURL,
		WeeklyXp:         int32(fi.WeeklyXP),
		FriendshipStatus: ToFriendshipStatusProto(fi.FriendshipStatus),
		IsIncoming:       fi.IsIncoming,
		FriendshipId:     fi.FriendshipID,
	}
}

// ToFriendInfosProto — bulk.
func ToFriendInfosProto(items []*service.FriendInfo) []*socialv1.FriendInfo {
	out := make([]*socialv1.FriendInfo, 0, len(items))
	for _, fi := range items {
		out = append(out, ToFriendInfoProto(fi))
	}
	return out
}

// ToLeaderboardFriendProto — service.LeaderboardFriendEntry → proto.
func ToLeaderboardFriendProto(e *service.LeaderboardFriendEntry) *socialv1.LeaderboardFriendEntry {
	if e == nil {
		return nil
	}
	return &socialv1.LeaderboardFriendEntry{
		Rank:      int32(e.Rank),
		UserId:    e.UserID.String(),
		Username:  e.Username,
		FullName:  e.FullName,
		AvatarUrl: e.AvatarURL,
		WeeklyXp:  int32(e.WeeklyXP),
		IsMe:      e.IsMe,
	}
}

// ToLeaderboardFriendsProto — bulk.
func ToLeaderboardFriendsProto(items []*service.LeaderboardFriendEntry) []*socialv1.LeaderboardFriendEntry {
	out := make([]*socialv1.LeaderboardFriendEntry, 0, len(items))
	for _, e := range items {
		out = append(out, ToLeaderboardFriendProto(e))
	}
	return out
}
