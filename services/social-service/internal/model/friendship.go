// Package model — Phase 4.5: friendships.
//
// Связи между пользователями: pending → accepted / blocked. Хранятся
// нормализованно (`user_id_1 < user_id_2`), поэтому каждая запись
// уникальна per pair вне зависимости от того, кто отправил.
package model

import (
	"errors"
	"strings"
	"time"
)

// FriendshipStatus — состояние связи.
type FriendshipStatus string

const (
	FriendshipPending  FriendshipStatus = "pending"
	FriendshipAccepted FriendshipStatus = "accepted"
	FriendshipBlocked  FriendshipStatus = "blocked"
)

// IsValid — sanity check (для гарантии корректного маппинга proto↔DB).
func (s FriendshipStatus) IsValid() bool {
	switch s {
	case FriendshipPending, FriendshipAccepted, FriendshipBlocked:
		return true
	}
	return false
}

// Friendship — запись из таблицы `friendships`.
type Friendship struct {
	ID          string
	UserID1     string
	UserID2     string
	Status      FriendshipStatus
	RequestedBy string
	CreatedAt   time.Time
	UpdatedAt   time.Time
}

// ErrSelfFriendship — friend-self не разрешён.
var ErrSelfFriendship = errors.New("cannot befriend yourself")

// NormalizePair приводит (a, b) к (lo, hi), где lo < hi (lex order).
// Возвращает (lo, hi, swapped). Это позволяет уникально адресовать пару
// одной записью в БД.
func NormalizePair(a, b string) (string, string, bool) {
	if strings.Compare(a, b) < 0 {
		return a, b, false
	}
	return b, a, true
}

// OtherSide — для данной пары возвращает «второго» юзера.
func (f *Friendship) OtherSide(userID string) string {
	if f.UserID1 == userID {
		return f.UserID2
	}
	return f.UserID1
}

// IsParticipant — true, если userID — один из двух участников.
func (f *Friendship) IsParticipant(userID string) bool {
	return f.UserID1 == userID || f.UserID2 == userID
}
