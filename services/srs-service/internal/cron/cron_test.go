package cron

import (
	"testing"
	"time"
)

func TestNextDailyAt(t *testing.T) {
	t.Parallel()
	cases := []struct {
		name string
		now  time.Time
		hhmm string
		want time.Time
	}{
		{
			name: "before target same day",
			now:  time.Date(2025, 1, 10, 0, 30, 0, 0, time.UTC),
			hhmm: "01:00",
			want: time.Date(2025, 1, 10, 1, 0, 0, 0, time.UTC),
		},
		{
			name: "after target rolls over",
			now:  time.Date(2025, 1, 10, 2, 0, 0, 0, time.UTC),
			hhmm: "01:00",
			want: time.Date(2025, 1, 11, 1, 0, 0, 0, time.UTC),
		},
		{
			name: "exact target rolls over",
			now:  time.Date(2025, 1, 10, 1, 0, 0, 0, time.UTC),
			hhmm: "01:00",
			want: time.Date(2025, 1, 11, 1, 0, 0, 0, time.UTC),
		},
	}
	for _, tc := range cases {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			got, err := nextDailyAt(tc.now, tc.hhmm)
			if err != nil {
				t.Fatalf("unexpected error: %v", err)
			}
			if !got.Equal(tc.want) {
				t.Fatalf("got %s, want %s", got, tc.want)
			}
		})
	}
}

func TestNextDailyAt_Invalid(t *testing.T) {
	t.Parallel()
	cases := []string{"", "01", "ab:cd", "1:00:00"}
	for _, hhmm := range cases {
		if _, err := nextDailyAt(time.Now().UTC(), hhmm); err == nil {
			t.Fatalf("expected error for %q", hhmm)
		}
	}
}
