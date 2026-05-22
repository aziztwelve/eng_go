package postgres

import (
	"context"
	"errors"
	"sort"
	"testing"

	"github.com/google/uuid"

	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

// helper: создать pending-связь.
func mkFriendship(t *testing.T, requester, target uuid.UUID, status model.FriendshipStatus) *model.Friendship {
	t.Helper()
	r := NewFriendshipRepository(sharedPool)
	f := &model.Friendship{
		UserID1:     requester.String(),
		UserID2:     target.String(),
		Status:      status,
		RequestedBy: requester.String(),
	}
	if err := r.Create(context.Background(), f); err != nil {
		t.Fatalf("create friendship: %v", err)
	}
	return f
}

func TestFriendshipRepo_CreateAndGet(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewFriendshipRepository(sharedPool)
	ctx := context.Background()

	a, b := uuid.New(), uuid.New()
	f := mkFriendship(t, a, b, model.FriendshipPending)

	// Get(a, b) и Get(b, a) — должны вернуть ту же запись.
	got1, err := r.Get(ctx, a, b)
	if err != nil {
		t.Fatal(err)
	}
	got2, err := r.Get(ctx, b, a)
	if err != nil {
		t.Fatal(err)
	}
	if got1.ID != got2.ID || got1.ID != f.ID {
		t.Fatalf("normalization broken: a/b → %s, b/a → %s, expected %s", got1.ID, got2.ID, f.ID)
	}
	// user_id_1 < user_id_2.
	if got1.UserID1 >= got1.UserID2 {
		t.Errorf("expected user_id_1 < user_id_2, got %s vs %s", got1.UserID1, got1.UserID2)
	}
	if got1.RequestedBy != a.String() {
		t.Errorf("requested_by = %s, expected %s", got1.RequestedBy, a)
	}
}

func TestFriendshipRepo_Create_Duplicate(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewFriendshipRepository(sharedPool)
	ctx := context.Background()

	a, b := uuid.New(), uuid.New()
	mkFriendship(t, a, b, model.FriendshipPending)

	// Create той же пары (даже в обратном порядке) → ErrAlreadyExists.
	again := &model.Friendship{
		UserID1: b.String(), UserID2: a.String(),
		Status: model.FriendshipPending, RequestedBy: b.String(),
	}
	if err := r.Create(ctx, again); !errors.Is(err, repository.ErrAlreadyExists) {
		t.Fatalf("expected ErrAlreadyExists, got %v", err)
	}
}

func TestFriendshipRepo_GetByID_NotFound(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	r := NewFriendshipRepository(sharedPool)
	if _, err := r.GetByID(context.Background(), uuid.New()); !errors.Is(err, repository.ErrNotFound) {
		t.Fatalf("expected ErrNotFound, got %v", err)
	}
	if _, err := r.Get(context.Background(), uuid.New(), uuid.New()); !errors.Is(err, repository.ErrNotFound) {
		t.Fatalf("expected ErrNotFound from Get, got %v", err)
	}
}

func TestFriendshipRepo_UpdateStatus(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewFriendshipRepository(sharedPool)
	ctx := context.Background()

	a, b := uuid.New(), uuid.New()
	f := mkFriendship(t, a, b, model.FriendshipPending)

	if err := r.UpdateStatus(ctx, mustParseUUID(t, f.ID), model.FriendshipAccepted); err != nil {
		t.Fatal(err)
	}
	got, err := r.GetByID(ctx, mustParseUUID(t, f.ID))
	if err != nil {
		t.Fatal(err)
	}
	if got.Status != model.FriendshipAccepted {
		t.Errorf("expected accepted, got %s", got.Status)
	}
	if !got.UpdatedAt.After(f.UpdatedAt) && !got.UpdatedAt.Equal(f.UpdatedAt) {
		t.Errorf("updated_at must change: was %s now %s", f.UpdatedAt, got.UpdatedAt)
	}
}

func TestFriendshipRepo_Delete(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewFriendshipRepository(sharedPool)
	ctx := context.Background()

	a, b := uuid.New(), uuid.New()
	f := mkFriendship(t, a, b, model.FriendshipPending)

	if err := r.Delete(ctx, mustParseUUID(t, f.ID)); err != nil {
		t.Fatal(err)
	}
	if err := r.Delete(ctx, mustParseUUID(t, f.ID)); !errors.Is(err, repository.ErrNotFound) {
		t.Fatalf("expected ErrNotFound on second delete, got %v", err)
	}
}

func TestFriendshipRepo_ListByUser(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewFriendshipRepository(sharedPool)
	ctx := context.Background()

	me := uuid.New()
	bob, carol, dave := uuid.New(), uuid.New(), uuid.New()

	// 2 accepted (bob, carol), 1 pending (dave).
	a1 := mkFriendship(t, me, bob, model.FriendshipPending)
	if err := r.UpdateStatus(ctx, mustParseUUID(t, a1.ID), model.FriendshipAccepted); err != nil {
		t.Fatal(err)
	}
	a2 := mkFriendship(t, me, carol, model.FriendshipPending)
	if err := r.UpdateStatus(ctx, mustParseUUID(t, a2.ID), model.FriendshipAccepted); err != nil {
		t.Fatal(err)
	}
	mkFriendship(t, dave, me, model.FriendshipPending) // dave → me

	// Accepted only.
	rows, total, err := r.ListByUser(ctx, me, model.FriendshipAccepted, 0, 0)
	if err != nil {
		t.Fatal(err)
	}
	if total != 2 || len(rows) != 2 {
		t.Errorf("expected 2 accepted, got total=%d len=%d", total, len(rows))
	}

	// Pending only.
	pending, totalPending, err := r.ListByUser(ctx, me, model.FriendshipPending, 0, 0)
	if err != nil {
		t.Fatal(err)
	}
	if totalPending != 1 || len(pending) != 1 {
		t.Errorf("expected 1 pending, got total=%d len=%d", totalPending, len(pending))
	}

	// All (status=""). Должны вернуться все 3.
	all, totalAll, err := r.ListByUser(ctx, me, "", 0, 0)
	if err != nil {
		t.Fatal(err)
	}
	if totalAll != 3 || len(all) != 3 {
		t.Errorf("expected 3 total, got total=%d len=%d", totalAll, len(all))
	}
}

func TestFriendshipRepo_ListAcceptedFriendIDs(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewFriendshipRepository(sharedPool)
	ctx := context.Background()

	me := uuid.New()
	bob, carol, dave := uuid.New(), uuid.New(), uuid.New()

	for _, friend := range []uuid.UUID{bob, carol} {
		f := mkFriendship(t, me, friend, model.FriendshipPending)
		if err := r.UpdateStatus(ctx, mustParseUUID(t, f.ID), model.FriendshipAccepted); err != nil {
			t.Fatal(err)
		}
	}
	// pending — не должен попасть в accepted IDs.
	mkFriendship(t, me, dave, model.FriendshipPending)

	ids, err := r.ListAcceptedFriendIDs(ctx, me)
	if err != nil {
		t.Fatal(err)
	}
	if len(ids) != 2 {
		t.Errorf("expected 2 accepted IDs, got %d", len(ids))
	}

	// Сортируем для детерминированной проверки.
	expected := []uuid.UUID{bob, carol}
	sort.Slice(expected, func(i, j int) bool { return expected[i].String() < expected[j].String() })
	sort.Slice(ids, func(i, j int) bool { return ids[i].String() < ids[j].String() })
	for i := range expected {
		if ids[i] != expected[i] {
			t.Errorf("got %s, expected %s at idx %d", ids[i], expected[i], i)
		}
	}
}

func mustParseUUID(t *testing.T, s string) uuid.UUID {
	t.Helper()
	u, err := uuid.Parse(s)
	if err != nil {
		t.Fatalf("parse uuid %s: %v", s, err)
	}
	return u
}
