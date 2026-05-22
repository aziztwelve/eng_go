package abtest

import (
	"encoding/json"
	"fmt"
	"math"
	"strings"
	"testing"
)

func TestNewRegistry_Validation(t *testing.T) {
	cases := []struct {
		name   string
		exps   []Experiment
		errSub string
	}{
		{
			name: "empty experiment name",
			exps: []Experiment{
				{Name: "", Variants: []Variant{{ID: "a", Weight: 1}, {ID: "b", Weight: 1}}},
			},
			errSub: "name is empty",
		},
		{
			name: "duplicate experiment name",
			exps: []Experiment{
				{Name: "x", Variants: []Variant{{ID: "a", Weight: 1}, {ID: "b", Weight: 1}}},
				{Name: "x", Variants: []Variant{{ID: "c", Weight: 1}, {ID: "d", Weight: 1}}},
			},
			errSub: "duplicate experiment",
		},
		{
			name: "single variant",
			exps: []Experiment{
				{Name: "x", Variants: []Variant{{ID: "only", Weight: 1}}},
			},
			errSub: "≥ 2 variants",
		},
		{
			name: "zero total weight",
			exps: []Experiment{
				{Name: "x", Variants: []Variant{{ID: "a", Weight: 0}, {ID: "b", Weight: 0}}},
			},
			errSub: "total weight",
		},
		{
			name: "duplicate variant id",
			exps: []Experiment{
				{Name: "x", Variants: []Variant{{ID: "a", Weight: 1}, {ID: "a", Weight: 1}}},
			},
			errSub: "duplicate variant",
		},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			_, err := NewRegistry(tc.exps)
			if err == nil || !strings.Contains(err.Error(), tc.errSub) {
				t.Errorf("expected error containing %q, got %v", tc.errSub, err)
			}
		})
	}
}

func TestPick_Deterministic(t *testing.T) {
	r, err := NewRegistry([]Experiment{
		{Name: "exp", Variants: []Variant{
			{ID: "control", Weight: 50},
			{ID: "variant_a", Weight: 50},
		}},
	})
	if err != nil {
		t.Fatalf("registry: %v", err)
	}
	for _, uid := range []string{"u1", "u2", "u3", "user-12345"} {
		v1, ok1 := r.Pick("exp", uid)
		v2, ok2 := r.Pick("exp", uid)
		if !ok1 || !ok2 {
			t.Fatalf("expected ok for known experiment")
		}
		if v1.ID != v2.ID {
			t.Errorf("non-deterministic for user %q: %q vs %q", uid, v1.ID, v2.ID)
		}
	}
}

func TestPick_Distribution(t *testing.T) {
	// 50/50 split — ожидаем ~50% попаданий в каждый variant на 5000 юзеров.
	r, _ := NewRegistry([]Experiment{
		{Name: "exp", Variants: []Variant{
			{ID: "control", Weight: 50},
			{ID: "variant", Weight: 50},
		}},
	})
	counts := map[string]int{}
	const N = 5000
	for i := 0; i < N; i++ {
		v, _ := r.Pick("exp", fmt.Sprintf("user-%d", i))
		counts[v.ID]++
	}
	control := counts["control"]
	deviation := math.Abs(float64(control)/float64(N) - 0.5)
	if deviation > 0.03 {
		t.Errorf("50/50 split out of tolerance: control=%d/%d (deviation=%.3f)", control, N, deviation)
	}
}

func TestPick_WeightedDistribution(t *testing.T) {
	// 80/20 split.
	r, _ := NewRegistry([]Experiment{
		{Name: "exp", Variants: []Variant{
			{ID: "majority", Weight: 80},
			{ID: "minority", Weight: 20},
		}},
	})
	counts := map[string]int{}
	const N = 5000
	for i := 0; i < N; i++ {
		v, _ := r.Pick("exp", fmt.Sprintf("u-%d", i))
		counts[v.ID]++
	}
	majority := float64(counts["majority"]) / float64(N)
	if math.Abs(majority-0.8) > 0.03 {
		t.Errorf("80/20 out of tolerance: majority=%.3f", majority)
	}
}

func TestPick_UnknownExperiment(t *testing.T) {
	r := EmptyRegistry()
	if _, ok := r.Pick("anything", "u1"); ok {
		t.Errorf("expected ok=false for unknown experiment")
	}
}

func TestPick_ExperimentIndependence(t *testing.T) {
	// Назначения разных экспериментов должны быть независимы (не
	// коррелировать). Проверяем что для одного юзера два эксперимента
	// дают разные распределения, не идентичные.
	r, _ := NewRegistry([]Experiment{
		{Name: "exp_a", Variants: []Variant{{ID: "a1", Weight: 1}, {ID: "a2", Weight: 1}}},
		{Name: "exp_b", Variants: []Variant{{ID: "b1", Weight: 1}, {ID: "b2", Weight: 1}}},
	})
	correlations := 0
	for i := 0; i < 1000; i++ {
		uid := fmt.Sprintf("u-%d", i)
		va, _ := r.Pick("exp_a", uid)
		vb, _ := r.Pick("exp_b", uid)
		// Если variant_index одинаковый (a1+b1 или a2+b2) — корреляция.
		if (va.ID == "a1" && vb.ID == "b1") || (va.ID == "a2" && vb.ID == "b2") {
			correlations++
		}
	}
	// Для независимых экспериментов корреляция должна быть ~50%.
	rate := float64(correlations) / 1000.0
	if math.Abs(rate-0.5) > 0.06 {
		t.Errorf("experiments not independent: correlation=%.3f", rate)
	}
}

func TestParseRegistry_RoundTrip(t *testing.T) {
	exps := []Experiment{
		{Name: "chat_model", Variants: []Variant{
			{ID: "control", Weight: 70, Params: map[string]string{"model": "gpt-4o-mini"}},
			{ID: "premium", Weight: 30, Params: map[string]string{"model": "gpt-4o"}},
		}},
	}
	jb, _ := json.Marshal(exps)
	r, err := ParseRegistry(string(jb))
	if err != nil {
		t.Fatalf("parse: %v", err)
	}
	v, ok := r.Pick("chat_model", "u1")
	if !ok || (v.StringParam("model", "") != "gpt-4o-mini" && v.StringParam("model", "") != "gpt-4o") {
		t.Errorf("variant params lost: %+v", v)
	}
}

func TestParseRegistry_Empty(t *testing.T) {
	r, err := ParseRegistry("")
	if err != nil || r == nil {
		t.Errorf("empty config should produce empty registry, got err=%v r=%v", err, r)
	}
	if len(r.Names()) != 0 {
		t.Errorf("expected 0 experiments, got %v", r.Names())
	}
}

func TestVariantStringParam_Defaults(t *testing.T) {
	var v *Variant
	if got := v.StringParam("k", "fallback"); got != "fallback" {
		t.Errorf("nil receiver should return default, got %q", got)
	}
	v2 := &Variant{Params: nil}
	if got := v2.StringParam("k", "fb"); got != "fb" {
		t.Errorf("nil params should return default, got %q", got)
	}
	v3 := &Variant{Params: map[string]string{"k": ""}}
	if got := v3.StringParam("k", "fb"); got != "fb" {
		t.Errorf("empty value should return default, got %q", got)
	}
	v4 := &Variant{Params: map[string]string{"k": "real"}}
	if got := v4.StringParam("k", "fb"); got != "real" {
		t.Errorf("expected real value, got %q", got)
	}
}
