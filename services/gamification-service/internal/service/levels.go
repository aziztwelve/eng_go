package service

// Формула из docs/tasks/phase-1-gamification.md:
//   Level n → n+1: n * 100 XP
//   Cumulative XP at start of level L (где L>=1) = 100 * (L-1)*L/2
//
// Получив total_xp, восстанавливаем уровень и сколько XP осталось до следующего.

// LevelInfo агрегирует положение пользователя на лестнице уровней.
type LevelInfo struct {
	Level         int
	XPIntoLevel   int // сколько XP заработано внутри текущего уровня
	XPToNext      int // сколько еще XP до следующего уровня
	NextLevelTotal int // суммарный total_xp на старте следующего уровня
}

// xpThreshold — total_xp в самом начале уровня L (т.е. чтобы быть на L нужно >= threshold(L)).
func xpThreshold(level int) int {
	if level <= 1 {
		return 0
	}
	return 100 * (level - 1) * level / 2
}

// CalcLevel возвращает максимальный уровень такой, что xpThreshold(level) <= totalXP.
func CalcLevel(totalXP int) int {
	if totalXP <= 0 {
		return 1
	}
	// Bounded loop — даже для 1M XP это ~141 итерация.
	level := 1
	for xpThreshold(level+1) <= totalXP {
		level++
	}
	return level
}

// CalcLevelInfo восстанавливает все производные значения по total_xp.
func CalcLevelInfo(totalXP int) LevelInfo {
	level := CalcLevel(totalXP)
	curStart := xpThreshold(level)
	nextStart := xpThreshold(level + 1)
	return LevelInfo{
		Level:          level,
		XPIntoLevel:    totalXP - curStart,
		XPToNext:       nextStart - totalXP,
		NextLevelTotal: nextStart,
	}
}
