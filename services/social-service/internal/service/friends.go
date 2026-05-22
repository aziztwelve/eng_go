// Friends (Phase 4.5) — бизнес-логика дружб.
//
// Все методы предполагают что Service.friends != nil (см. WithFriendship).
// Если репозиторий не подключён — возвращают ErrFriendshipDisabled.
package service

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"sort"
	"strings"

	"github.com/google/uuid"
	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
	"github.com/elearning/social-service/internal/client/notifications"
	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

// ErrFriendshipDisabled — friendships repo не подключён.
var ErrFriendshipDisabled = errors.New("social: friendships disabled")

// FriendInfo — обогащённое представление одного «другоподобного» юзера
// (друг / pending / search-result).
type FriendInfo struct {
	UserID           uuid.UUID
	Username         string
	FullName         string
	AvatarURL        string
	WeeklyXP         int
	FriendshipStatus model.FriendshipStatus // "" = нет связи
	IsIncoming       bool                    // если pending: caller — получатель
	FriendshipID     string                  // "" если связи нет
}

// LeaderboardFriendEntry — один пункт friends-leaderboard'a.
type LeaderboardFriendEntry struct {
	Rank      int
	UserID    uuid.UUID
	Username  string
	FullName  string
	AvatarURL string
	WeeklyXP  int
	IsMe      bool
}

// PendingDirection — фильтр для ListPendingRequests.
type PendingDirection int

const (
	PendingAll      PendingDirection = 0
	PendingIncoming PendingDirection = 1
	PendingOutgoing PendingDirection = 2
)

// ----------------------------------------------------------------------------
// Mutations
// ----------------------------------------------------------------------------

// SendFriendRequest отправляет запрос дружбы caller → target.
//
// Идемпотентность:
//   - Если запись уже accepted — возвращаем её, autoAccepted=false.
//   - Если pending от caller — то же.
//   - Если pending от target (mutual) — переводим в accepted (autoAccepted=true).
//   - Если blocked — InvalidArgument.
//   - Если нет — Create(pending) + push.
func (s *Service) SendFriendRequest(ctx context.Context, requesterID, targetID uuid.UUID) (*model.Friendship, bool, error) {
	if s.friends == nil {
		return nil, false, ErrFriendshipDisabled
	}
	if requesterID == uuid.Nil || targetID == uuid.Nil {
		return nil, false, fmt.Errorf("%w: empty user id", ErrInvalidArgument)
	}
	if requesterID == targetID {
		return nil, false, fmt.Errorf("%w: %s", ErrInvalidArgument, model.ErrSelfFriendship)
	}

	existing, err := s.friends.Get(ctx, requesterID, targetID)
	if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, false, err
	}

	if existing != nil {
		switch existing.Status {
		case model.FriendshipAccepted:
			return existing, false, nil
		case model.FriendshipBlocked:
			return nil, false, fmt.Errorf("%w: blocked", ErrInvalidArgument)
		case model.FriendshipPending:
			if existing.RequestedBy == requesterID.String() {
				// Уже отправлен — idempotent.
				return existing, false, nil
			}
			// Mutual — auto-accept.
			if err := s.friends.UpdateStatus(ctx, mustParseUUID(existing.ID), model.FriendshipAccepted); err != nil {
				return nil, false, fmt.Errorf("auto-accept: %w", err)
			}
			existing.Status = model.FriendshipAccepted
			s.sendFriendAcceptedPush(ctx, mustParseUUID(existing.RequestedBy), requesterID, existing.ID)
			return existing, true, nil
		}
	}

	lo, hi, _ := model.NormalizePair(requesterID.String(), targetID.String())
	f := &model.Friendship{
		UserID1:     lo,
		UserID2:     hi,
		Status:      model.FriendshipPending,
		RequestedBy: requesterID.String(),
	}
	if err := s.friends.Create(ctx, f); err != nil {
		// На race-condition (другая сторона создала ровно сейчас) — re-read.
		if errors.Is(err, repository.ErrAlreadyExists) {
			again, gerr := s.friends.Get(ctx, requesterID, targetID)
			if gerr != nil {
				return nil, false, gerr
			}
			return again, false, nil
		}
		return nil, false, fmt.Errorf("create friendship: %w", err)
	}

	s.sendFriendRequestPush(ctx, requesterID, targetID, f.ID)
	return f, false, nil
}

// AcceptFriendRequest — caller (target запроса) принимает pending.
func (s *Service) AcceptFriendRequest(ctx context.Context, callerID, friendshipID uuid.UUID) (*model.Friendship, error) {
	if s.friends == nil {
		return nil, ErrFriendshipDisabled
	}
	if callerID == uuid.Nil || friendshipID == uuid.Nil {
		return nil, fmt.Errorf("%w: empty id", ErrInvalidArgument)
	}

	f, err := s.friends.GetByID(ctx, friendshipID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, ErrNotFound
		}
		return nil, err
	}
	if !f.IsParticipant(callerID.String()) {
		return nil, fmt.Errorf("%w: not a participant", ErrInvalidArgument)
	}
	if f.RequestedBy == callerID.String() {
		return nil, fmt.Errorf("%w: requester cannot accept own request", ErrInvalidArgument)
	}
	if f.Status != model.FriendshipPending {
		return nil, fmt.Errorf("%w: not pending", ErrInvalidArgument)
	}

	if err := s.friends.UpdateStatus(ctx, friendshipID, model.FriendshipAccepted); err != nil {
		return nil, fmt.Errorf("accept friendship: %w", err)
	}
	f.Status = model.FriendshipAccepted

	// Push исходному отправителю.
	s.sendFriendAcceptedPush(ctx, mustParseUUID(f.RequestedBy), callerID, f.ID)
	return f, nil
}

// RejectFriendRequest — caller (target) отклоняет pending. Запись удаляется.
func (s *Service) RejectFriendRequest(ctx context.Context, callerID, friendshipID uuid.UUID) error {
	if s.friends == nil {
		return ErrFriendshipDisabled
	}
	if callerID == uuid.Nil || friendshipID == uuid.Nil {
		return fmt.Errorf("%w: empty id", ErrInvalidArgument)
	}

	f, err := s.friends.GetByID(ctx, friendshipID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return ErrNotFound
		}
		return err
	}
	if !f.IsParticipant(callerID.String()) {
		return fmt.Errorf("%w: not a participant", ErrInvalidArgument)
	}
	if f.RequestedBy == callerID.String() {
		return fmt.Errorf("%w: requester cannot reject own request", ErrInvalidArgument)
	}
	if f.Status != model.FriendshipPending {
		return fmt.Errorf("%w: not pending", ErrInvalidArgument)
	}
	return s.friends.Delete(ctx, friendshipID)
}

// RemoveFriend — расторгнуть accepted-связь между caller и friendID.
// Любая сторона может удалить.
func (s *Service) RemoveFriend(ctx context.Context, callerID, friendID uuid.UUID) error {
	if s.friends == nil {
		return ErrFriendshipDisabled
	}
	if callerID == uuid.Nil || friendID == uuid.Nil {
		return fmt.Errorf("%w: empty id", ErrInvalidArgument)
	}
	if callerID == friendID {
		return fmt.Errorf("%w: cannot remove self", ErrInvalidArgument)
	}

	f, err := s.friends.Get(ctx, callerID, friendID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return ErrNotFound
		}
		return err
	}
	return s.friends.Delete(ctx, mustParseUUID(f.ID))
}

// ----------------------------------------------------------------------------
// Queries
// ----------------------------------------------------------------------------

// ListFriends — accepted-друзья + enrichment (username, profile, weekly_xp).
func (s *Service) ListFriends(ctx context.Context, userID uuid.UUID, limit, offset int) ([]*FriendInfo, int, error) {
	if s.friends == nil {
		return nil, 0, ErrFriendshipDisabled
	}
	if userID == uuid.Nil {
		return nil, 0, fmt.Errorf("%w: empty user_id", ErrInvalidArgument)
	}

	rows, total, err := s.friends.ListByUser(ctx, userID, model.FriendshipAccepted, limit, offset)
	if err != nil {
		return nil, 0, err
	}

	otherIDs := make([]uuid.UUID, 0, len(rows))
	for _, r := range rows {
		other := r.OtherSide(userID.String())
		oid, perr := uuid.Parse(other)
		if perr != nil {
			continue
		}
		otherIDs = append(otherIDs, oid)
	}

	info := s.buildFriendInfos(ctx, otherIDs, rows, userID)
	return info, total, nil
}

// ListPendingRequests — pending-входящие/исходящие.
func (s *Service) ListPendingRequests(ctx context.Context, userID uuid.UUID, dir PendingDirection, limit, offset int) ([]*FriendInfo, int, error) {
	if s.friends == nil {
		return nil, 0, ErrFriendshipDisabled
	}
	if userID == uuid.Nil {
		return nil, 0, fmt.Errorf("%w: empty user_id", ErrInvalidArgument)
	}

	rows, _, err := s.friends.ListByUser(ctx, userID, model.FriendshipPending, 0, 0)
	if err != nil {
		return nil, 0, err
	}

	// Фильтр по направлению.
	filtered := make([]*model.Friendship, 0, len(rows))
	for _, r := range rows {
		isIncoming := r.RequestedBy != userID.String()
		switch dir {
		case PendingIncoming:
			if !isIncoming {
				continue
			}
		case PendingOutgoing:
			if isIncoming {
				continue
			}
		}
		filtered = append(filtered, r)
	}

	total := len(filtered)
	// Pagination на отфильтрованных.
	if limit <= 0 {
		limit = 50
	}
	if offset < 0 {
		offset = 0
	}
	if offset >= len(filtered) {
		return []*FriendInfo{}, total, nil
	}
	end := offset + limit
	if end > len(filtered) {
		end = len(filtered)
	}
	page := filtered[offset:end]

	otherIDs := make([]uuid.UUID, 0, len(page))
	for _, r := range page {
		other := r.OtherSide(userID.String())
		oid, perr := uuid.Parse(other)
		if perr != nil {
			continue
		}
		otherIDs = append(otherIDs, oid)
	}

	info := s.buildFriendInfos(ctx, otherIDs, page, userID)
	return info, total, nil
}

// SearchUsersByUsername — auth.SearchByUsername + enrichment + friendship status.
func (s *Service) SearchUsersByUsername(ctx context.Context, callerID uuid.UUID, query string, limit int) ([]*FriendInfo, error) {
	if s.friends == nil {
		return nil, ErrFriendshipDisabled
	}
	if callerID == uuid.Nil {
		return nil, fmt.Errorf("%w: empty user_id", ErrInvalidArgument)
	}
	q := strings.TrimSpace(query)
	if len(q) < 2 {
		return []*FriendInfo{}, nil
	}
	if limit <= 0 {
		limit = 20
	}
	if limit > 50 {
		limit = 50
	}

	users, err := s.auth.SearchByUsername(ctx, q, int32(limit), callerID)
	if err != nil {
		return nil, fmt.Errorf("auth search: %w", err)
	}
	if len(users) == 0 {
		return []*FriendInfo{}, nil
	}

	ids := make([]uuid.UUID, 0, len(users))
	usernames := make(map[uuid.UUID]string, len(users))
	for _, u := range users {
		ids = append(ids, u.UserID)
		usernames[u.UserID] = u.Username
	}

	profiles, _ := s.users.BatchGetProfiles(ctx, ids)
	leagues, _ := s.userLg.BatchGetByUserIDs(ctx, ids)
	leagueByID := make(map[uuid.UUID]*model.UserLeague, len(leagues))
	for _, ul := range leagues {
		leagueByID[ul.UserID] = ul
	}

	out := make([]*FriendInfo, 0, len(ids))
	for _, id := range ids {
		fi := &FriendInfo{
			UserID:   id,
			Username: usernames[id],
		}
		if p, ok := profiles[id]; ok && p != nil {
			fi.FullName = p.FullName
			fi.AvatarURL = p.AvatarURL
		}
		if ul, ok := leagueByID[id]; ok {
			fi.WeeklyXP = ul.WeeklyXP
		}
		// Статус дружбы с caller'ом.
		if f, ferr := s.friends.Get(ctx, callerID, id); ferr == nil && f != nil {
			fi.FriendshipStatus = f.Status
			fi.FriendshipID = f.ID
			fi.IsIncoming = f.Status == model.FriendshipPending && f.RequestedBy != callerID.String()
		}
		out = append(out, fi)
	}
	return out, nil
}

// GetFriendsLeaderboard — друзья + self, sort DESC by weekly_xp.
func (s *Service) GetFriendsLeaderboard(ctx context.Context, userID uuid.UUID, limit int) ([]*LeaderboardFriendEntry, error) {
	if s.friends == nil {
		return nil, ErrFriendshipDisabled
	}
	if userID == uuid.Nil {
		return nil, fmt.Errorf("%w: empty user_id", ErrInvalidArgument)
	}
	if limit <= 0 {
		limit = 50
	}

	friendIDs, err := s.friends.ListAcceptedFriendIDs(ctx, userID)
	if err != nil {
		return nil, fmt.Errorf("list friend ids: %w", err)
	}

	// + self.
	allIDs := make([]uuid.UUID, 0, len(friendIDs)+1)
	allIDs = append(allIDs, userID)
	allIDs = append(allIDs, friendIDs...)

	leagues, err := s.userLg.BatchGetByUserIDs(ctx, allIDs)
	if err != nil {
		return nil, fmt.Errorf("batch user leagues: %w", err)
	}
	xpByUser := make(map[uuid.UUID]int, len(leagues))
	for _, ul := range leagues {
		xpByUser[ul.UserID] = ul.WeeklyXP
	}

	profiles, _ := s.users.BatchGetProfiles(ctx, allIDs)
	usernames, _ := s.auth.BatchGetUsernames(ctx, allIDs)

	entries := make([]*LeaderboardFriendEntry, 0, len(allIDs))
	for _, id := range allIDs {
		e := &LeaderboardFriendEntry{
			UserID:   id,
			Username: usernames[id],
			WeeklyXP: xpByUser[id],
			IsMe:     id == userID,
		}
		if p, ok := profiles[id]; ok && p != nil {
			e.FullName = p.FullName
			e.AvatarURL = p.AvatarURL
		}
		entries = append(entries, e)
	}

	sort.SliceStable(entries, func(i, j int) bool {
		if entries[i].WeeklyXP != entries[j].WeeklyXP {
			return entries[i].WeeklyXP > entries[j].WeeklyXP
		}
		return entries[i].UserID.String() < entries[j].UserID.String()
	})

	if len(entries) > limit {
		entries = entries[:limit]
	}
	for i, e := range entries {
		e.Rank = i + 1
	}
	return entries, nil
}

// ----------------------------------------------------------------------------
// Helpers
// ----------------------------------------------------------------------------

// buildFriendInfos — для каждого other_id в rows строит FriendInfo.
// Источник статуса — соответствующая запись из rows (не лишний Get).
func (s *Service) buildFriendInfos(
	ctx context.Context,
	otherIDs []uuid.UUID,
	rows []*model.Friendship,
	callerID uuid.UUID,
) []*FriendInfo {
	rowByOther := make(map[string]*model.Friendship, len(rows))
	for _, r := range rows {
		rowByOther[r.OtherSide(callerID.String())] = r
	}

	profiles, _ := s.users.BatchGetProfiles(ctx, otherIDs)
	usernames, _ := s.auth.BatchGetUsernames(ctx, otherIDs)
	leagues, _ := s.userLg.BatchGetByUserIDs(ctx, otherIDs)
	leagueByID := make(map[uuid.UUID]*model.UserLeague, len(leagues))
	for _, ul := range leagues {
		leagueByID[ul.UserID] = ul
	}

	out := make([]*FriendInfo, 0, len(otherIDs))
	for _, id := range otherIDs {
		fi := &FriendInfo{
			UserID:   id,
			Username: usernames[id],
		}
		if p, ok := profiles[id]; ok && p != nil {
			fi.FullName = p.FullName
			fi.AvatarURL = p.AvatarURL
		}
		if ul, ok := leagueByID[id]; ok {
			fi.WeeklyXP = ul.WeeklyXP
		}
		if r, ok := rowByOther[id.String()]; ok {
			fi.FriendshipStatus = r.Status
			fi.FriendshipID = r.ID
			fi.IsIncoming = r.Status == model.FriendshipPending && r.RequestedBy != callerID.String()
		}
		out = append(out, fi)
	}
	return out
}

func mustParseUUID(s string) uuid.UUID {
	u, _ := uuid.Parse(s)
	return u
}

// ----------------------------------------------------------------------------
// Push notifications
// ----------------------------------------------------------------------------

// sendFriendRequestPush — push target'у при новом запросе. Канал — "friend_request"
// (новый — добавлен в notifications-service preferences).
func (s *Service) sendFriendRequestPush(ctx context.Context, requesterID, targetID uuid.UUID, friendshipID string) {
	payload := map[string]any{
		"kind":          "friend_request",
		"event":         "friend_request",
		"friendship_id": friendshipID,
		"requester_id":  requesterID.String(),
		"deep_link":     "/friends/pending",
	}
	data, _ := json.Marshal(payload)

	err := s.notif.Send(ctx, notifications.SendInput{
		UserID:   targetID.String(),
		Channel:  "friend_request",
		Title:    "👋 New friend request",
		Body:     "Someone wants to be your friend",
		Data:     data,
		DedupKey: fmt.Sprintf("friend_request:%s", friendshipID),
	})
	if err != nil {
		logger.Warn(ctx, "friend request push failed",
			zap.String("requester", requesterID.String()),
			zap.String("target", targetID.String()),
			zap.Error(err))
	}
}

// sendFriendAcceptedPush — push исходному отправителю при accept.
func (s *Service) sendFriendAcceptedPush(ctx context.Context, requesterID, accepterID uuid.UUID, friendshipID string) {
	payload := map[string]any{
		"kind":          "friend_request",
		"event":         "friend_accepted",
		"friendship_id": friendshipID,
		"accepter_id":   accepterID.String(),
		"deep_link":     "/friends",
	}
	data, _ := json.Marshal(payload)

	err := s.notif.Send(ctx, notifications.SendInput{
		UserID:   requesterID.String(),
		Channel:  "friend_request",
		Title:    "🎉 Friend request accepted",
		Body:     "You have a new friend",
		Data:     data,
		DedupKey: fmt.Sprintf("friend_accepted:%s", friendshipID),
	})
	if err != nil {
		logger.Warn(ctx, "friend accepted push failed",
			zap.String("requester", requesterID.String()),
			zap.String("accepter", accepterID.String()),
			zap.Error(err))
	}
}
