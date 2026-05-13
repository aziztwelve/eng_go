package model

import "time"

// StreakDay — запись о состоянии streak'а на конкретную дату.
type StreakDay struct {
	UserID     string
	Date       time.Time
	Completed  bool
	UsedFreeze bool
	CreatedAt  time.Time
}
