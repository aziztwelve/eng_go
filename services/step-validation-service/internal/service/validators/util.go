package validators

import (
	"strings"
	"unicode"

	"golang.org/x/text/runes"
	"golang.org/x/text/transform"
	"golang.org/x/text/unicode/norm"
)

// normalize — приводит строку для сравнения: trim, lower, удалить
// диакритику, схлопнуть пробелы, убрать финальную пунктуацию.
//
// Используется translate / listening / fill_blank.
func normalize(s string) string {
	s = strings.TrimSpace(s)
	if s == "" {
		return ""
	}

	// Убираем диакритику: NFD → strip non-spacing marks → NFC.
	t := transform.Chain(norm.NFD, runes.Remove(runes.In(unicode.Mn)), norm.NFC)
	if r, _, err := transform.String(t, s); err == nil {
		s = r
	}

	s = strings.ToLower(s)

	// Финальная пунктуация. Срезаем .,!?;: с конца.
	s = strings.TrimRightFunc(s, func(r rune) bool {
		switch r {
		case '.', ',', '!', '?', ';', ':':
			return true
		}
		return false
	})

	// Схлопываем все whitespace в один пробел.
	var b strings.Builder
	prevSpace := false
	for _, r := range s {
		if unicode.IsSpace(r) {
			if !prevSpace {
				b.WriteRune(' ')
				prevSpace = true
			}
			continue
		}
		b.WriteRune(r)
		prevSpace = false
	}
	return strings.TrimSpace(b.String())
}

// levenshtein — классический distance в терминах рун. Без оптимизаций
// (нам важно правильно работать с UTF-8 для listening, < 100 символов).
func levenshtein(a, b string) int {
	ar := []rune(a)
	br := []rune(b)
	n, m := len(ar), len(br)
	if n == 0 {
		return m
	}
	if m == 0 {
		return n
	}
	prev := make([]int, m+1)
	curr := make([]int, m+1)
	for j := 0; j <= m; j++ {
		prev[j] = j
	}
	for i := 1; i <= n; i++ {
		curr[0] = i
		for j := 1; j <= m; j++ {
			cost := 1
			if ar[i-1] == br[j-1] {
				cost = 0
			}
			curr[j] = min3(curr[j-1]+1, prev[j]+1, prev[j-1]+cost)
		}
		prev, curr = curr, prev
	}
	return prev[m]
}

func min3(a, b, c int) int {
	if a < b {
		if a < c {
			return a
		}
		return c
	}
	if b < c {
		return b
	}
	return c
}
