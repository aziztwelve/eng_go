package service

import (
	"context"
	"errors"
	"testing"
	"time"

	"github.com/google/uuid"

	authcl "github.com/elearning/social-service/internal/client/auth"
	"github.com/elearning/social-service/internal/client/users"
	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

// ---------------------------------------------------------------------------
// Friendship repo mock
// ---------------------------------------------------------------------------

type friendshipRepoMem struct {
	items map[uuid.UUID]*model.Friendship
}

func newFriendshipRepoMem() *friendshipRepoMem {
	return &friendshipRepoMem{items: make(map[uuid.UUID]*model.Friendship)}
}

func (r *friendshipRepoMem) Get(_ context.Context, a, b uuid.UUID) (*model.Friendship, error) {
	lo, hi, _ := model.NormalizePair(a.String(), b.String())
	for _, f := range r.items {
		if f.UserID1 == lo && f.UserID2 == hi {
			cp := *f
			return &cp, nil
		}
	}
	return nil, repository.ErrNotFound
}

func (r *friendshipRepoMem) GetByID(_ context.Context, id uuid.UUID) (*model.Friendship, error) {
	if f, ok := r.items[id]; ok {
		cp := *f
		return &cp, nil
	}
	return nil, repository.ErrNotFound
}

func (r *friendshipRepoMem) Create(_ context.Context, f *model.Friendship) error {
	lo, hi, _ := model.NormalizePair(f.UserID1, f.UserID2)
	for _, ex := range r.items {
		if ex.UserID1 == lo && ex.UserID2 == hi {
			return repository.ErrAlreadyExists
		}
	}
	id := uuid.New()
	f.ID = id.String()
	f.UserID1 = lo
	f.UserID2 = hi
	now := time.Now().UTC()
	f.CreatedAt = now
	f.UpdatedAt = now
	cp := *f
	r.items[id] = &cp
	return nil
}

func (r *friendshipRepoMem) UpdateStatus(_ context.Context, id uuid.UUID, status model.FriendshipStatus) error {
	f, ok := r.items[id]
	if !ok {
		return repository.ErrNotFound
	}
	f.Status = status
	f.UpdatedAt = time.Now().UTC()
	return nil
}

func (r *friendshipRepoMem) Delete(_ context.Context, id uuid.UUID) error {
	if _, ok := r.items[id]; !ok {
		return repository.ErrNotFound
	}
	delete(r.items, id)
	return nil
}

func (r *friendshipRepoMem) ListByUser(
	_ context.Context, userID uuid.UUID, status model.FriendshipStatus, limit, offset int,
) ([]*model.Friendship, int, error) {
	out := make([]*model.Friendship, 0)
	for _, f := range r.items {
		if !f.IsParticipant(userID.String()) {
			continue
		}
		if status != "" && f.Status != status {
			continue
		}
		cp := *f
		out = append(out, &cp)
	}
	total := len(out)
	if limit <= 0 {
		limit = 50
	}
	if offset < 0 {
		offset = 0
	}
	if offset >= len(out) {
		return []*model.Friendship{}, total, nil
	}
	end := offset + limit
	if end > len(out) {
		end = len(out)
	}
	return out[offset:end], total, nil
}

func (r *friendshipRepoMem) ListAcceptedFriendIDs(_ context.Context, userID uuid.UUID) ([]uuid.UUID, error) {
	out := make([]uuid.UUID, 0)
	for _, f := range r.items {
		if f.Status != model.FriendshipAccepted {
			continue
		}
		other := f.OtherSide(userID.String())
		if other == userID.String() {
			continue // не участвует
		}
		oid, err := uuid.Parse(other)
		if err == nil {
			out = append(out, oid)
		}
	}
	return out, nil
}

// ---------------------------------------------------------------------------
// Auth client mock
// ---------------------------------------------------------------------------

type authClientMem struct {
	users     map[uuid.UUID]string // user_id → username
	searchErr error
}

func newAuthClientMem() *authClientMem {
	return &authClientMem{users: make(map[uuid.UUID]string)}
}

func (c *authClientMem) put(uid uuid.UUID, username string) {
	c.users[uid] = username
}

func (c *authClientMem) SearchByUsername(_ context.Context, query string, limit int32, exclude uuid.UUID) ([]*authcl.User, error) {
	if c.searchErr != nil {
		return nil, c.searchErr
	}
	out := make([]*authcl.User, 0)
	for uid, name := range c.users {
		if uid == exclude {
			continue
		}
		if len(name) >= len(query) && name[:len(query)] == query {
			out = append(out, &authcl.User{UserID: uid, Username: name})
		}
		if int32(len(out)) >= limit {
			break
		}
	}
	return out, nil
}

func (c *authClientMem) BatchGetUsernames(_ context.Context, ids []uuid.UUID) (map[uuid.UUID]string, error) {
	out := make(map[uuid.UUID]string, len(ids))
	for _, id := range ids {
		if name, ok := c.users[id]; ok {
			out[id] = name
		}
	}
	return out, nil
}

func (c *authClientMem) Close() error { return nil }

// ---------------------------------------------------------------------------
// Setup
// ---------------------------------------------------------------------------

type friendsFixture struct {
	*fixture
	friends *friendshipRepoMem
	auth    *authClientMem
}

func newFriendsFixture() *friendsFixture {
	f := newFixture()
	friends := newFriendshipRepoMem()
	auth := newAuthClientMem()
	f.svc.WithFriendship(friends, auth)
	return &friendsFixture{fixture: f, friends: friends, auth: auth}
}

// ---------------------------------------------------------------------------
// SendFriendRequest
// ---------------------------------------------------------------------------

func TestSendFriendRequest_Self_Rejected(t *testing.T) {
	f := newFriendsFixture()
	uid := uuid.New()
	_, _, err := f.svc.SendFriendRequest(context.Background(), uid, uid)
	if !errors.Is(err, ErrInvalidArgument) {
		t.Fatalf("expected ErrInvalidArgument, got %v", err)
	}
}

func TestSendFriendRequest_NewPair_CreatesPending(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	got, autoAccepted, err := f.svc.SendFriendRequest(context.Background(), a, b)
	if err != nil {
		t.Fatalf("unexpected: %v", err)
	}
	if autoAccepted {
		t.Fatal("expected autoAccepted=false for fresh pair")
	}
	if got.Status != model.FriendshipPending {
		t.Fatalf("expected pending, got %s", got.Status)
	}
	if got.RequestedBy != a.String() {
		t.Fatalf("expected requested_by=%s, got %s", a, got.RequestedBy)
	}
	if len(f.notif.sent) != 1 {
		t.Fatalf("expected 1 push (friend_request), got %d", len(f.notif.sent))
	}
	if f.notif.sent[0].Channel != "friend_request" {
		t.Fatalf("expected channel friend_request, got %s", f.notif.sent[0].Channel)
	}
	if f.notif.sent[0].UserID != b.String() {
		t.Fatalf("push должен идти target'у %s, got %s", b, f.notif.sent[0].UserID)
	}
}

func TestSendFriendRequest_Mutual_AutoAccept(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	// a → b
	if _, _, err := f.svc.SendFriendRequest(context.Background(), a, b); err != nil {
		t.Fatalf("first request: %v", err)
	}
	f.notif.sent = nil // reset
	// b → a (mutual)
	got, autoAccepted, err := f.svc.SendFriendRequest(context.Background(), b, a)
	if err != nil {
		t.Fatalf("mutual: %v", err)
	}
	if !autoAccepted {
		t.Fatal("expected autoAccepted=true")
	}
	if got.Status != model.FriendshipAccepted {
		t.Fatalf("expected accepted, got %s", got.Status)
	}
	// Push идёт изначальному отправителю (a) — friend_accepted.
	if len(f.notif.sent) != 1 {
		t.Fatalf("expected 1 friend_accepted push, got %d", len(f.notif.sent))
	}
	if f.notif.sent[0].UserID != a.String() {
		t.Fatalf("push должен идти изначальному отправителю %s, got %s", a, f.notif.sent[0].UserID)
	}
}

func TestSendFriendRequest_Idempotent(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	first, _, err := f.svc.SendFriendRequest(context.Background(), a, b)
	if err != nil {
		t.Fatal(err)
	}
	second, _, err := f.svc.SendFriendRequest(context.Background(), a, b)
	if err != nil {
		t.Fatal(err)
	}
	if first.ID != second.ID {
		t.Fatalf("idempotent: expected same friendship, got %s vs %s", first.ID, second.ID)
	}
}

// ---------------------------------------------------------------------------
// AcceptFriendRequest
// ---------------------------------------------------------------------------

func TestAcceptFriendRequest_TargetCanAccept(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	req, _, _ := f.svc.SendFriendRequest(context.Background(), a, b)
	f.notif.sent = nil
	got, err := f.svc.AcceptFriendRequest(context.Background(), b, mustParseUUID(req.ID))
	if err != nil {
		t.Fatal(err)
	}
	if got.Status != model.FriendshipAccepted {
		t.Fatalf("expected accepted, got %s", got.Status)
	}
	// Push идёт исходному отправителю (a).
	if len(f.notif.sent) != 1 || f.notif.sent[0].UserID != a.String() {
		t.Fatalf("expected 1 push to %s, got %#v", a, f.notif.sent)
	}
}

func TestAcceptFriendRequest_RequesterCannotAccept(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	req, _, _ := f.svc.SendFriendRequest(context.Background(), a, b)
	_, err := f.svc.AcceptFriendRequest(context.Background(), a, mustParseUUID(req.ID))
	if !errors.Is(err, ErrInvalidArgument) {
		t.Fatalf("expected ErrInvalidArgument, got %v", err)
	}
}

func TestAcceptFriendRequest_NotPending(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	req, _, _ := f.svc.SendFriendRequest(context.Background(), a, b)
	_, _ = f.svc.AcceptFriendRequest(context.Background(), b, mustParseUUID(req.ID))
	// Повторный accept на already-accepted.
	_, err := f.svc.AcceptFriendRequest(context.Background(), b, mustParseUUID(req.ID))
	if !errors.Is(err, ErrInvalidArgument) {
		t.Fatalf("expected ErrInvalidArgument, got %v", err)
	}
}

// ---------------------------------------------------------------------------
// RejectFriendRequest
// ---------------------------------------------------------------------------

func TestRejectFriendRequest_TargetDeletes(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	req, _, _ := f.svc.SendFriendRequest(context.Background(), a, b)
	if err := f.svc.RejectFriendRequest(context.Background(), b, mustParseUUID(req.ID)); err != nil {
		t.Fatal(err)
	}
	if _, err := f.friends.GetByID(context.Background(), mustParseUUID(req.ID)); !errors.Is(err, repository.ErrNotFound) {
		t.Fatalf("expected friendship deleted, got %v", err)
	}
}

func TestRejectFriendRequest_RequesterCannotReject(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	req, _, _ := f.svc.SendFriendRequest(context.Background(), a, b)
	if err := f.svc.RejectFriendRequest(context.Background(), a, mustParseUUID(req.ID)); !errors.Is(err, ErrInvalidArgument) {
		t.Fatalf("expected ErrInvalidArgument, got %v", err)
	}
}

// ---------------------------------------------------------------------------
// RemoveFriend
// ---------------------------------------------------------------------------

func TestRemoveFriend_DeletesAccepted(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	req, _, _ := f.svc.SendFriendRequest(context.Background(), a, b)
	_, _ = f.svc.AcceptFriendRequest(context.Background(), b, mustParseUUID(req.ID))

	if err := f.svc.RemoveFriend(context.Background(), a, b); err != nil {
		t.Fatal(err)
	}
	if _, err := f.friends.Get(context.Background(), a, b); !errors.Is(err, repository.ErrNotFound) {
		t.Fatalf("expected deleted, got %v", err)
	}
}

func TestRemoveFriend_NotFound(t *testing.T) {
	f := newFriendsFixture()
	a, b := uuid.New(), uuid.New()
	if err := f.svc.RemoveFriend(context.Background(), a, b); !errors.Is(err, ErrNotFound) {
		t.Fatalf("expected ErrNotFound, got %v", err)
	}
}

// ---------------------------------------------------------------------------
// ListFriends / ListPendingRequests
// ---------------------------------------------------------------------------

func TestListFriends_ReturnsAccepted(t *testing.T) {
	f := newFriendsFixture()
	a, b, c := uuid.New(), uuid.New(), uuid.New()

	r1, _, _ := f.svc.SendFriendRequest(context.Background(), a, b)
	_, _ = f.svc.AcceptFriendRequest(context.Background(), b, mustParseUUID(r1.ID))
	// Pending не должен попадать в friends.
	_, _, _ = f.svc.SendFriendRequest(context.Background(), a, c)

	// Профили
	f.users.profiles[b] = &users.Profile{UserID: b, FullName: "Bob"}
	f.auth.put(b, "bobby")

	friends, total, err := f.svc.ListFriends(context.Background(), a, 0, 0)
	if err != nil {
		t.Fatal(err)
	}
	if total != 1 {
		t.Fatalf("expected 1 friend, got %d", total)
	}
	if friends[0].UserID != b {
		t.Fatalf("expected %s, got %s", b, friends[0].UserID)
	}
	if friends[0].Username != "bobby" {
		t.Fatalf("expected username bobby, got %s", friends[0].Username)
	}
	if friends[0].FriendshipStatus != model.FriendshipAccepted {
		t.Fatalf("expected accepted, got %s", friends[0].FriendshipStatus)
	}
}

func TestListPendingRequests_DirectionFiltering(t *testing.T) {
	f := newFriendsFixture()
	a, b, c := uuid.New(), uuid.New(), uuid.New()

	// a → b (outgoing для a, incoming для b)
	_, _, _ = f.svc.SendFriendRequest(context.Background(), a, b)
	// c → a (incoming для a, outgoing для c)
	_, _, _ = f.svc.SendFriendRequest(context.Background(), c, a)

	all, total, err := f.svc.ListPendingRequests(context.Background(), a, PendingAll, 0, 0)
	if err != nil {
		t.Fatal(err)
	}
	if total != 2 || len(all) != 2 {
		t.Fatalf("expected 2 pending all, got %d", total)
	}

	incoming, _, _ := f.svc.ListPendingRequests(context.Background(), a, PendingIncoming, 0, 0)
	if len(incoming) != 1 || incoming[0].UserID != c {
		t.Fatalf("expected 1 incoming from %s, got %#v", c, incoming)
	}
	if !incoming[0].IsIncoming {
		t.Fatal("expected IsIncoming=true")
	}

	outgoing, _, _ := f.svc.ListPendingRequests(context.Background(), a, PendingOutgoing, 0, 0)
	if len(outgoing) != 1 || outgoing[0].UserID != b {
		t.Fatalf("expected 1 outgoing to %s, got %#v", b, outgoing)
	}
	if outgoing[0].IsIncoming {
		t.Fatal("expected IsIncoming=false for outgoing")
	}
}

// ---------------------------------------------------------------------------
// SearchUsersByUsername
// ---------------------------------------------------------------------------

func TestSearchUsersByUsername_Enriched(t *testing.T) {
	f := newFriendsFixture()
	caller := uuid.New()
	bob := uuid.New()
	carol := uuid.New()

	f.auth.put(bob, "bobby")
	f.auth.put(carol, "carol")
	f.users.profiles[bob] = &users.Profile{UserID: bob, FullName: "Bob B", AvatarURL: "https://avatar/bob"}

	// Подружим caller↔carol (accepted).
	r, _, _ := f.svc.SendFriendRequest(context.Background(), caller, carol)
	_, _ = f.svc.AcceptFriendRequest(context.Background(), carol, mustParseUUID(r.ID))

	results, err := f.svc.SearchUsersByUsername(context.Background(), caller, "bob", 10)
	if err != nil {
		t.Fatal(err)
	}
	if len(results) != 1 {
		t.Fatalf("expected 1 result, got %d", len(results))
	}
	if results[0].UserID != bob {
		t.Fatalf("expected %s, got %s", bob, results[0].UserID)
	}
	if results[0].FullName != "Bob B" {
		t.Fatalf("expected enriched profile, got %#v", results[0])
	}

	// Поиск carol — должен вернуть accepted-статус.
	carolRes, err := f.svc.SearchUsersByUsername(context.Background(), caller, "carol", 10)
	if err != nil {
		t.Fatal(err)
	}
	if len(carolRes) != 1 || carolRes[0].FriendshipStatus != model.FriendshipAccepted {
		t.Fatalf("expected accepted status with carol, got %#v", carolRes)
	}
}

func TestSearchUsersByUsername_TooShort(t *testing.T) {
	f := newFriendsFixture()
	caller := uuid.New()
	results, err := f.svc.SearchUsersByUsername(context.Background(), caller, "a", 10)
	if err != nil {
		t.Fatal(err)
	}
	if len(results) != 0 {
		t.Fatalf("expected empty result for short query, got %d", len(results))
	}
}

// ---------------------------------------------------------------------------
// GetFriendsLeaderboard
// ---------------------------------------------------------------------------

func TestGetFriendsLeaderboard_SortsByWeeklyXP(t *testing.T) {
	f := newFriendsFixture()
	me := uuid.New()
	bob := uuid.New()
	carol := uuid.New()

	// Принудительно вставим записи user_leagues — Ensure пройдёт через
	// assignToCohort, но проще вручную, т.к. mocks не делают cohort full check.
	f.userLg.items[me] = &model.UserLeague{UserID: me, WeeklyXP: 50}
	f.userLg.items[bob] = &model.UserLeague{UserID: bob, WeeklyXP: 200}
	f.userLg.items[carol] = &model.UserLeague{UserID: carol, WeeklyXP: 100}

	// me — друзья с bob и carol.
	r1, _, _ := f.svc.SendFriendRequest(context.Background(), me, bob)
	_, _ = f.svc.AcceptFriendRequest(context.Background(), bob, mustParseUUID(r1.ID))
	r2, _, _ := f.svc.SendFriendRequest(context.Background(), me, carol)
	_, _ = f.svc.AcceptFriendRequest(context.Background(), carol, mustParseUUID(r2.ID))

	f.auth.put(bob, "bobby")
	f.auth.put(carol, "carol")

	entries, err := f.svc.GetFriendsLeaderboard(context.Background(), me, 10)
	if err != nil {
		t.Fatal(err)
	}
	if len(entries) != 3 {
		t.Fatalf("expected 3 entries (2 friends + self), got %d", len(entries))
	}
	if entries[0].UserID != bob {
		t.Fatalf("expected bob top (200 XP), got %s", entries[0].UserID)
	}
	if entries[0].Rank != 1 {
		t.Fatalf("expected rank 1 for top, got %d", entries[0].Rank)
	}
	// me на 3-м месте (50 XP).
	var meEntry *LeaderboardFriendEntry
	for _, e := range entries {
		if e.UserID == me {
			meEntry = e
		}
	}
	if meEntry == nil || !meEntry.IsMe {
		t.Fatalf("expected self entry with IsMe=true, got %#v", meEntry)
	}
	if meEntry.Rank != 3 {
		t.Fatalf("expected me rank 3, got %d", meEntry.Rank)
	}
}

// ---------------------------------------------------------------------------
// FriendshipDisabled (без WithFriendship)
// ---------------------------------------------------------------------------

func TestFriendship_DisabledIfNoRepo(t *testing.T) {
	f := newFixture() // без WithFriendship
	uid := uuid.New()
	_, _, err := f.svc.SendFriendRequest(context.Background(), uid, uuid.New())
	if !errors.Is(err, ErrFriendshipDisabled) {
		t.Fatalf("expected ErrFriendshipDisabled, got %v", err)
	}
}

// ---------------------------------------------------------------------------
// Compile-time assertions для интерфейсов моков (sanity)
// ---------------------------------------------------------------------------

var _ repository.FriendshipRepo = (*friendshipRepoMem)(nil)
var _ authcl.Client = (*authClientMem)(nil)
var _ users.Client = (*usersClientMem)(nil)
