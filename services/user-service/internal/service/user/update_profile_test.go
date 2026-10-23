package user

import (
	"github.com/elearning/user-service/internal/model"
	"testing"
)

func ptr(v string) *string { return &v }
func TestProfileValidation(t *testing.T) {
	for _, data := range []model.UpdateProfileData{
		{FirstName: ptr(" ")}, {Gender: ptr("invented")}, {DateOfBirth: ptr("2020-02-30")}, {DateOfBirth: ptr("2099-01-01")}, {Timezone: ptr("Mars/Olympus")},
	} {
		if validateProfile(data) == nil {
			t.Fatalf("invalid data accepted: %+v", data)
		}
	}
	for _, data := range []model.UpdateProfileData{
		{FirstName: ptr("Абдулбаки"), LastName: ptr(""), Gender: ptr("male"), DateOfBirth: ptr("2000-02-29"), Timezone: ptr("Asia/Dushanbe")},
		{Gender: ptr(""), DateOfBirth: ptr("")}, {},
	} {
		if err := validateProfile(data); err != nil {
			t.Fatalf("valid partial update rejected: %v", err)
		}
	}
}
