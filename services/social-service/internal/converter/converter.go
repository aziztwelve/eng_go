// Package converter — proto ↔ model маппинги.
package converter

import (
	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"

	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"
	"github.com/elearning/social-service/internal/model"
)

func ToLeagueProto(l *model.League) *socialv1.League {
	if l == nil {
		return nil
	}
	return &socialv1.League{
		Id:      int32(l.ID),
		Code:    l.Code,
		Name:    l.Name,
		IconUrl: l.IconURL,
		Color:   l.Color,
		Tier:    int32(l.Tier),
	}
}

func ToLeaguesProto(ls []*model.League) []*socialv1.League {
	out := make([]*socialv1.League, 0, len(ls))
	for _, l := range ls {
		out = append(out, ToLeagueProto(l))
	}
	return out
}

func ToUserLeagueProto(ul *model.UserLeague, l *model.League) *socialv1.UserLeague {
	if ul == nil {
		return nil
	}
	rank := int32(0)
	if ul.RankInCohort != nil {
		rank = int32(*ul.RankInCohort)
	}
	return &socialv1.UserLeague{
		UserId:        ul.UserID.String(),
		League:        ToLeagueProto(l),
		CohortId:      ul.CohortID.String(),
		WeeklyXp:      int32(ul.WeeklyXP),
		RankInCohort:  rank,
		JoinedAt:      timestamppb.New(ul.JoinedAt),
		LastUpdatedAt: timestamppb.New(ul.LastUpdatedAt),
	}
}

func ToLeaderboardEntryProto(e *model.LeaderboardEntry, meID uuid.UUID) *socialv1.LeaderboardEntry {
	if e == nil {
		return nil
	}
	return &socialv1.LeaderboardEntry{
		Rank:      int32(e.Rank),
		UserId:    e.UserID.String(),
		WeeklyXp:  int32(e.WeeklyXP),
		FullName:  e.FullName,
		AvatarUrl: e.AvatarURL,
		IsMe:      e.UserID == meID,
	}
}

func ToHistoryProto(h *model.LeagueHistoryEntry) *socialv1.LeagueHistoryEntry {
	if h == nil {
		return nil
	}
	return &socialv1.LeagueHistoryEntry{
		Id:            h.ID.String(),
		UserId:        h.UserID.String(),
		LeagueId:      int32(h.LeagueID),
		CohortId:      h.CohortID.String(),
		CycleStartAt:  timestamppb.New(h.CycleStartAt),
		CycleEndAt:    timestamppb.New(h.CycleEndAt),
		FinalXp:       int32(h.FinalXP),
		FinalRank:     int32(h.FinalRank),
		Promoted:      h.Promoted,
		Demoted:       h.Demoted,
		GemsEarned:    int32(h.GemsEarned),
		CreatedAt:     timestamppb.New(h.CreatedAt),
	}
}
