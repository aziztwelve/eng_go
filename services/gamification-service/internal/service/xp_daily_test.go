package service

import (
	"context"
	"github.com/elearning/gamification-service/internal/model"
	"testing"
	"time"
)

func TestDailyXPIncludesAllTransactionsInUserDay(t *testing.T) {
	now := time.Date(2026, 10, 24, 0, 30, 0, 0, time.UTC)
	svc, _, xp, _ := buildServiceWithUser(func() time.Time { return now }, &fakeUserClient{tz: "Asia/Dushanbe"})
	// More than the mobile history page, split across UTC midnight but the same local day.
	for i := 0; i < 55; i++ {
		xp.all = append(xp.all, &model.XPTransaction{UserID: "a", Amount: 2, CreatedAt: time.Date(2026, 10, 23, 21, 0, 0, 0, time.UTC)})
	}
	xp.all = append(xp.all, &model.XPTransaction{UserID: "b", Amount: 999, CreatedAt: now}, &model.XPTransaction{UserID: "a", Amount: 999, CreatedAt: now.AddDate(0, 0, -15)})
	days, tz, err := svc.GetXPDaily(context.Background(), "a", 14)
	if err != nil {
		t.Fatal(err)
	}
	if len(days) != 14 || tz != "Asia/Dushanbe" || days[13].Date != "2026-10-24" || days[13].XP != 110 {
		t.Fatalf("wrong daily result: %s %+v", tz, days)
	}
	if days[12].XP != 0 {
		t.Fatalf("UTC date leaked into previous day: %+v", days[12])
	}
}
