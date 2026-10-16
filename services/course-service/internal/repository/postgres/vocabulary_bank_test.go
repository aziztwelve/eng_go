package postgres

import "testing"

func TestVocabularyBankStepTransitions(t *testing.T) {
	for _, tc := range []struct {
		name                       string
		current, submitted         int
		correct, strict, completed bool
		want                       int
		invalid                    bool
	}{
		{"first error stays", 1, 1, false, true, false, 1, false},
		{"correct advances", 1, 1, true, true, false, 2, false},
		{"cannot skip", 1, 15, true, true, false, 1, true},
		{"earlier retry cannot regress", 8, 2, true, true, false, 8, false},
		{"last step stays bounded", 15, 15, true, true, false, 15, false},
		{"completed review does not reset", 15, 1, true, true, true, 15, false},
		{"legacy compatible", 1, 15, true, false, false, 15, false},
	} {
		t.Run(tc.name, func(t *testing.T) {
			got, err := vocabularyBankNextStep(tc.current, tc.submitted, tc.correct, tc.strict, tc.completed)
			if (err != nil) != tc.invalid || got != tc.want {
				t.Fatalf("got %d, err %v", got, err)
			}
		})
	}
}
