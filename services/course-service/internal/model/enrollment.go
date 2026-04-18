package model

import "time"

// EnrollmentStatus представляет статус записи на курс
type EnrollmentStatus string

const (
	EnrollmentStatusActive    EnrollmentStatus = "active"
	EnrollmentStatusExpired   EnrollmentStatus = "expired"
	EnrollmentStatusCancelled EnrollmentStatus = "cancelled"
)

// Enrollment представляет запись пользователя на курс
type Enrollment struct {
	ID          string
	UserID      string
	CourseID    string
	Status      EnrollmentStatus
	EnrolledAt  time.Time
	AccessUntil *time.Time // NULL = lifetime access
}
