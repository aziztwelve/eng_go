// Package cryptobox — AES-256-GCM encryption-at-rest для чувствительных
// текстовых полей в ai-service (Phase 5.X).
//
// Дизайн:
//   - Один master key (32 bytes), грузится из env `AI_ENCRYPTION_KEY`
//     (hex или base64). Если key не задан — Box работает в pass-through
//     режиме: Encrypt/Decrypt возвращают plaintext as-is. Это позволяет
//     включать encryption на проде без полной миграции старых строк.
//   - Формат шифротекста: "enc:v1:<base64-url(nonce || ciphertext)>".
//     Префикс позволяет Decrypt отличать encrypted от plain (backward
//     compatibility со старыми записями).
//   - Nonce — 12 случайных байт на каждый Encrypt (GCM standard).
//   - Не используется AAD: значения короткие, привязка к row-context
//     добавила бы сложность migrations при rotation key.
//
// Использование:
//   box, err := cryptobox.New(cfg.EncryptionKey)
//   ciphertext, err := box.Encrypt(plain)
//   plain, err := box.Decrypt(ciphertext) // безопасен с не-зашифрованным input
package cryptobox

import (
	"crypto/aes"
	"crypto/cipher"
	"crypto/rand"
	"encoding/base64"
	"encoding/hex"
	"errors"
	"fmt"
	"io"
	"strings"
)

// Префикс зашифрованного значения. Меняется при rotation key.
const prefix = "enc:v1:"

// ErrInvalidKey — key не 32 байта.
var ErrInvalidKey = errors.New("cryptobox: key must be 32 bytes (AES-256)")

// Box — encryption helper. Безопасен для concurrent use (cipher.AEAD
// в crypto/cipher thread-safe).
type Box struct {
	aead cipher.AEAD
}

// New — конструктор.
//
// keyMaterial может быть:
//   - "" → Box работает в pass-through режиме (Encrypt/Decrypt = identity).
//     Удобно для dev и постепенного rollout'а.
//   - hex 64 chars → 32 байта.
//   - base64 (std или url, with/without padding) → 32 байта.
//
// Любой другой формат / длина → ErrInvalidKey.
func New(keyMaterial string) (*Box, error) {
	keyMaterial = strings.TrimSpace(keyMaterial)
	if keyMaterial == "" {
		return &Box{aead: nil}, nil
	}
	key, err := decodeKey(keyMaterial)
	if err != nil {
		return nil, err
	}
	if len(key) != 32 {
		return nil, ErrInvalidKey
	}
	block, err := aes.NewCipher(key)
	if err != nil {
		return nil, fmt.Errorf("cryptobox: aes.NewCipher: %w", err)
	}
	aead, err := cipher.NewGCM(block)
	if err != nil {
		return nil, fmt.Errorf("cryptobox: NewGCM: %w", err)
	}
	return &Box{aead: aead}, nil
}

// Enabled — true если key реально загружен (Encrypt действительно шифрует).
func (b *Box) Enabled() bool { return b != nil && b.aead != nil }

// Encrypt — возвращает "enc:v1:<base64>". Если Box disabled или plain
// пустой — возвращает plain без изменений.
func (b *Box) Encrypt(plain string) (string, error) {
	if b == nil || b.aead == nil || plain == "" {
		return plain, nil
	}
	if strings.HasPrefix(plain, prefix) {
		// Already encrypted (защита от двойного wrap'а).
		return plain, nil
	}
	nonce := make([]byte, b.aead.NonceSize())
	if _, err := io.ReadFull(rand.Reader, nonce); err != nil {
		return "", fmt.Errorf("cryptobox: nonce: %w", err)
	}
	ct := b.aead.Seal(nil, nonce, []byte(plain), nil)
	out := make([]byte, 0, len(nonce)+len(ct))
	out = append(out, nonce...)
	out = append(out, ct...)
	return prefix + base64.RawURLEncoding.EncodeToString(out), nil
}

// Decrypt — обратная операция.
//
// Backward-compatible: если строка не имеет prefix — возвращается
// as-is. Это нужно чтобы старые plaintext-записи продолжали читаться.
//
// Если Box disabled, но строка зашифрована — возвращает ошибку (key был
// потерян, читать нельзя).
func (b *Box) Decrypt(value string) (string, error) {
	if value == "" || !strings.HasPrefix(value, prefix) {
		return value, nil
	}
	if b == nil || b.aead == nil {
		return "", errors.New("cryptobox: encrypted data, but no key configured")
	}
	raw, err := base64.RawURLEncoding.DecodeString(strings.TrimPrefix(value, prefix))
	if err != nil {
		return "", fmt.Errorf("cryptobox: base64: %w", err)
	}
	ns := b.aead.NonceSize()
	if len(raw) < ns {
		return "", errors.New("cryptobox: ciphertext too short")
	}
	nonce, ct := raw[:ns], raw[ns:]
	plain, err := b.aead.Open(nil, nonce, ct, nil)
	if err != nil {
		return "", fmt.Errorf("cryptobox: open: %w", err)
	}
	return string(plain), nil
}

// MustDecrypt — panic-on-error для cases где fail = data corruption.
// Используется только в test fixtures.
func (b *Box) MustDecrypt(value string) string {
	out, err := b.Decrypt(value)
	if err != nil {
		panic(err)
	}
	return out
}

// decodeKey — пробует hex, потом base64.
func decodeKey(s string) ([]byte, error) {
	if k, err := hex.DecodeString(s); err == nil && len(k) == 32 {
		return k, nil
	}
	for _, dec := range []func(string) ([]byte, error){
		base64.StdEncoding.DecodeString,
		base64.RawStdEncoding.DecodeString,
		base64.URLEncoding.DecodeString,
		base64.RawURLEncoding.DecodeString,
	} {
		if k, err := dec(s); err == nil && len(k) == 32 {
			return k, nil
		}
	}
	return nil, ErrInvalidKey
}
