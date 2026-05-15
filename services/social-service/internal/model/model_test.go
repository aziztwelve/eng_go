package model

import (
	"testing"
	"time"
)

func TestCycleBoundaries_MondayToSunday(t *testing.T) {
	tests := []struct {
		name      string
		now       time.Time
		wantStart time.Time
		wantEnd   time.Time
	}{
		{
			name:      "monday morning",
			now:       time.Date(2026, 5, 11, 10, 30, 0, 0, time.UTC), // понедельник
			wantStart: time.Date(2026, 5, 11, 0, 0, 0, 0, time.UTC),
			wantEnd:   time.Date(2026, 5, 17, 23, 59, 59, 0, time.UTC),
		},
		{
			name:      "wednesday midnight",
			now:       time.Date(2026, 5, 13, 0, 0, 0, 0, time.UTC),
			wantStart: time.Date(2026, 5, 11, 0, 0, 0, 0, time.UTC),
			wantEnd:   time.Date(2026, 5, 17, 23, 59, 59, 0, time.UTC),
		},
		{
			name:      "sunday late evening",
			now:       time.Date(2026, 5, 17, 23, 30, 0, 0, time.UTC),
			wantStart: time.Date(2026, 5, 11, 0, 0, 0, 0, time.UTC),
			wantEnd:   time.Date(2026, 5, 17, 23, 59, 59, 0, time.UTC),
		},
		{
			name:      "monday next week",
			now:       time.Date(2026, 5, 18, 0, 1, 0, 0, time.UTC),
			wantStart: time.Date(2026, 5, 18, 0, 0, 0, 0, time.UTC),
			wantEnd:   time.Date(2026, 5, 24, 23, 59, 59, 0, time.UTC),
		},
	}
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			start, end := CycleBoundaries(tc.now)
			if !start.Equal(tc.wantStart) {
				t.Errorf("start: want %v, got %v", tc.wantStart, start)
			}
			if !end.Equal(tc.wantEnd) {
				t.Errorf("end: want %v, got %v", tc.wantEnd, end)
			}
		})
	}
}

func TestPromotionGems(t *testing.T) {
	tests := []struct{ rank, want int }{
		{1, 50}, {2, 40}, {3, 30}, {4, 25}, {5, 20}, {6, 15}, {7, 10},
		{8, 0}, {0, 0}, {-1, 0}, {30, 0},
	}
	for _, tc := range tests {
		if got := PromotionGems(tc.rank); got != tc.want {
			t.Errorf("rank=%d: want %d, got %d", tc.rank, tc.want, got)
		}
	}
}

func TestCohort_IsFull(t *testing.T) {
	c := &Cohort{MemberCount: 29}
	if c.IsFull() {
		t.Error("29 should not be full")
	}
	c.MemberCount = 30
	if !c.IsFull() {
		t.Error("30 should be full")
	}
	c.MemberCount = 31
	if !c.IsFull() {
		t.Error("31 should be full")
	}
}
