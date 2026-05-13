package service

import "testing"

func TestCalcLevel(t *testing.T) {
	// Thresholds: L=1→0, L=2→100, L=3→300, L=4→600, L=5→1000, L=6→1500.
	cases := []struct {
		xp    int
		level int
	}{
		{0, 1},
		{99, 1},
		{100, 2},
		{299, 2},
		{300, 3},
		{599, 3},
		{600, 4},
		{999, 4},
		{1000, 5},
		{1499, 5},
		{1500, 6},
	}
	for _, c := range cases {
		got := CalcLevel(c.xp)
		if got != c.level {
			t.Errorf("CalcLevel(%d) = %d, want %d", c.xp, got, c.level)
		}
	}
}

func TestCalcLevelInfo_Boundaries(t *testing.T) {
	info := CalcLevelInfo(0)
	if info.Level != 1 || info.XPIntoLevel != 0 || info.XPToNext != 100 {
		t.Errorf("at 0xp: %+v", info)
	}
	info = CalcLevelInfo(150)
	if info.Level != 2 || info.XPIntoLevel != 50 || info.XPToNext != 150 {
		t.Errorf("at 150xp: %+v", info)
	}
	info = CalcLevelInfo(600)
	// Level 4 starts at 600.
	if info.Level != 4 || info.XPIntoLevel != 0 || info.XPToNext != 400 {
		t.Errorf("at 600xp: %+v", info)
	}
}

func TestXPThresholdMonotonic(t *testing.T) {
	prev := -1
	for l := 1; l <= 20; l++ {
		th := xpThreshold(l)
		if th <= prev && l > 1 {
			t.Fatalf("non-monotonic at level %d: %d after %d", l, th, prev)
		}
		prev = th
	}
}
