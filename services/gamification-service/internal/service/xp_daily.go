package service

import (
	"context"
	userclient "github.com/elearning/gamification-service/internal/client/user"
	"time"
)

type XPDay struct {
	Date string
	XP   int
}

func (s *Service) GetXPDaily(ctx context.Context, userID string, days int) ([]XPDay, string, error) {
	if days < 1 || days > 90 {
		days = 14
	}
	loc := s.UserLocation(userclient.FreshProfileContext(ctx), userID)
	now := s.now().In(loc)
	today := time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, loc)
	start := today.AddDate(0, 0, -days+1)
	end := today.AddDate(0, 0, 1)
	amounts, err := s.xp.DailyByUser(ctx, userID, start, end, loc.String())
	if err != nil {
		return nil, "", err
	}
	out := make([]XPDay, 0, days)
	for i := 0; i < days; i++ {
		date := start.AddDate(0, 0, i).Format("2006-01-02")
		out = append(out, XPDay{Date: date, XP: amounts[date]})
	}
	return out, loc.String(), nil
}
