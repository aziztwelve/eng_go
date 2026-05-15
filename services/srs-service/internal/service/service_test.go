package service

import (
	"encoding/json"
	"testing"
)

func TestHashAnswer_StableForKeyOrder(t *testing.T) {
	a := json.RawMessage(`{"a":1,"b":"hi","c":[3,2,1]}`)
	b := json.RawMessage(`{"c":[3,2,1],"b":"hi","a":1}`)

	ha, err := hashAnswer(a)
	if err != nil {
		t.Fatalf("hash a: %v", err)
	}
	hb, err := hashAnswer(b)
	if err != nil {
		t.Fatalf("hash b: %v", err)
	}
	if ha != hb {
		t.Errorf("ожидается одинаковый hash для разного порядка ключей. ha=%s, hb=%s", ha, hb)
	}
}

func TestHashAnswer_DifferentForDifferentValues(t *testing.T) {
	a := json.RawMessage(`{"answer":"yes"}`)
	b := json.RawMessage(`{"answer":"no"}`)
	ha, _ := hashAnswer(a)
	hb, _ := hashAnswer(b)
	if ha == hb {
		t.Errorf("разные ответы должны давать разные hash")
	}
}

func TestHashAnswer_StableForArrayOrder(t *testing.T) {
	// Массивы остаются упорядоченными (порядок важен — это не set).
	a := json.RawMessage(`[1,2,3]`)
	b := json.RawMessage(`[3,2,1]`)
	ha, _ := hashAnswer(a)
	hb, _ := hashAnswer(b)
	if ha == hb {
		t.Errorf("[1,2,3] и [3,2,1] должны давать разный hash (порядок массива значим)")
	}
}

func TestHashAnswer_NestedObjects(t *testing.T) {
	a := json.RawMessage(`{"outer":{"a":1,"b":2}}`)
	b := json.RawMessage(`{"outer":{"b":2,"a":1}}`)
	ha, _ := hashAnswer(a)
	hb, _ := hashAnswer(b)
	if ha != hb {
		t.Errorf("вложенные объекты с разным порядком ключей должны давать одинаковый hash")
	}
}
