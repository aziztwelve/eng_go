package cryptobox

import (
	"encoding/base64"
	"encoding/hex"
	"strings"
	"testing"
)

func newTestKey() string {
	// 32 байта 0x42.
	k := make([]byte, 32)
	for i := range k {
		k[i] = 0x42
	}
	return hex.EncodeToString(k)
}

func TestNew_EmptyKey_PassThrough(t *testing.T) {
	b, err := New("")
	if err != nil {
		t.Fatalf("New(\"\"): %v", err)
	}
	if b.Enabled() {
		t.Errorf("expected disabled with empty key")
	}
	out, err := b.Encrypt("hello")
	if err != nil || out != "hello" {
		t.Errorf("pass-through Encrypt failed: out=%q err=%v", out, err)
	}
	out, err = b.Decrypt("hello")
	if err != nil || out != "hello" {
		t.Errorf("pass-through Decrypt failed: out=%q err=%v", out, err)
	}
}

func TestNew_HexKey(t *testing.T) {
	b, err := New(newTestKey())
	if err != nil {
		t.Fatalf("New: %v", err)
	}
	if !b.Enabled() {
		t.Errorf("expected enabled")
	}
}

func TestNew_Base64Key(t *testing.T) {
	raw, _ := hex.DecodeString(newTestKey())
	for _, enc := range []string{
		base64.StdEncoding.EncodeToString(raw),
		base64.RawStdEncoding.EncodeToString(raw),
		base64.URLEncoding.EncodeToString(raw),
	} {
		b, err := New(enc)
		if err != nil {
			t.Errorf("New(%q): %v", enc, err)
			continue
		}
		if !b.Enabled() {
			t.Errorf("expected enabled for %q", enc)
		}
	}
}

func TestNew_InvalidKeyLength(t *testing.T) {
	_, err := New("short")
	if err == nil {
		t.Error("expected error on short key")
	}
}

func TestEncryptDecrypt_RoundTrip(t *testing.T) {
	b, _ := New(newTestKey())
	plain := "Hello, secret world! 🔒 русский тоже."
	ct, err := b.Encrypt(plain)
	if err != nil {
		t.Fatalf("Encrypt: %v", err)
	}
	if !strings.HasPrefix(ct, prefix) {
		t.Errorf("ciphertext missing prefix: %q", ct)
	}
	if strings.Contains(ct, plain) {
		t.Errorf("ciphertext leaks plaintext: %q", ct)
	}
	got, err := b.Decrypt(ct)
	if err != nil {
		t.Fatalf("Decrypt: %v", err)
	}
	if got != plain {
		t.Errorf("round-trip lost data: %q != %q", got, plain)
	}
}

func TestEncrypt_EmptyString(t *testing.T) {
	b, _ := New(newTestKey())
	out, err := b.Encrypt("")
	if err != nil {
		t.Fatalf("Encrypt empty: %v", err)
	}
	if out != "" {
		t.Errorf("empty Encrypt should return empty, got %q", out)
	}
}

func TestEncrypt_DifferentNonceEachTime(t *testing.T) {
	// Detection randomness — два Encrypt одного plain должны давать разные ciphertext.
	b, _ := New(newTestKey())
	a, _ := b.Encrypt("same input")
	c, _ := b.Encrypt("same input")
	if a == c {
		t.Errorf("expected different ciphertexts (nonce randomness), got identical: %q", a)
	}
}

func TestDecrypt_PassThroughForLegacy(t *testing.T) {
	// Legacy plaintext (без prefix) — должен вернуться как есть.
	b, _ := New(newTestKey())
	got, err := b.Decrypt("plain legacy text")
	if err != nil {
		t.Fatalf("Decrypt: %v", err)
	}
	if got != "plain legacy text" {
		t.Errorf("legacy passthrough failed: %q", got)
	}
}

func TestDecrypt_MissingKeyForEncryptedData(t *testing.T) {
	// Ciphertext с prefix, но Box без ключа → ошибка.
	disabled, _ := New("")
	_, err := disabled.Decrypt("enc:v1:abc123")
	if err == nil {
		t.Error("expected error decrypting without key")
	}
}

func TestDecrypt_TamperedCiphertext(t *testing.T) {
	b, _ := New(newTestKey())
	ct, _ := b.Encrypt("important data")
	// Меняем последний символ.
	tampered := ct[:len(ct)-1] + "_"
	if _, err := b.Decrypt(tampered); err == nil {
		t.Error("expected error on tampered ciphertext (GCM auth)")
	}
}

func TestEncrypt_DoubleEncryptIsNoOp(t *testing.T) {
	// Защита от двойного шифрования (если caller случайно encrypted дважды).
	b, _ := New(newTestKey())
	first, _ := b.Encrypt("data")
	second, _ := b.Encrypt(first)
	if first != second {
		t.Errorf("double Encrypt should be no-op: %q != %q", first, second)
	}
}

func TestDecrypt_EmptyString(t *testing.T) {
	b, _ := New(newTestKey())
	got, err := b.Decrypt("")
	if err != nil {
		t.Fatalf("Decrypt empty: %v", err)
	}
	if got != "" {
		t.Errorf("expected empty, got %q", got)
	}
}
