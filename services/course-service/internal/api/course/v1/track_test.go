package v1

import "testing"

func TestProficiencyLevelToTrackLevel(t *testing.T) {
	cases := []struct {
		in   string
		want string
	}{
		{"beginner", "A1"},
		{"just_for_fun", "A1"},
		{"a1", "A1"},
		{"a2", "A2"},
		{"b1", "B1"},
		{"b2", "B2"},
		{"A1", "A1"},
		{"B2", "B2"},
		{" Beginner ", "A1"},
		{"c1", "c1"}, // неизвестное значение возвращается как есть
		{"", ""},
	}

	for _, tc := range cases {
		got := proficiencyLevelToTrackLevel(tc.in)
		if got != tc.want {
			t.Errorf("proficiencyLevelToTrackLevel(%q) = %q, want %q", tc.in, got, tc.want)
		}
	}
}
