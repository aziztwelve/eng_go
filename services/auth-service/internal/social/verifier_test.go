package social

import (
	"context"
	"crypto/rand"
	"crypto/rsa"
	"crypto/sha256"
	"encoding/base64"
	"encoding/hex"
	"encoding/json"
	"errors"
	"math/big"
	"net/http"
	"net/http/httptest"
	"testing"
	"time"

	"github.com/golang-jwt/jwt/v5"
)

func TestProviderVerification(t *testing.T) {
	key, err := rsa.GenerateKey(rand.Reader, 2048)
	if err != nil {
		t.Fatal(err)
	}
	var googleToken string
	var exchangeCount int
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.URL.Path == "/token" {
			exchangeCount++
			if r.ParseForm() != nil || r.FormValue("client_id") != "web-client" || r.FormValue("client_secret") != "secret" || r.FormValue("grant_type") != "authorization_code" {
				t.Error("invalid code exchange")
			}
			if r.FormValue("code") != "fresh-code" {
				w.WriteHeader(400)
				return
			}
			json.NewEncoder(w).Encode(map[string]string{"id_token": googleToken})
			return
		}
		json.NewEncoder(w).Encode(map[string]any{"keys": []any{map[string]string{"kty": "RSA", "kid": "test-key", "alg": "RS256", "n": base64.RawURLEncoding.EncodeToString(key.N.Bytes()), "e": base64.RawURLEncoding.EncodeToString(big.NewInt(int64(key.E)).Bytes())}}})
	}))
	defer server.Close()
	v := New(Config{GoogleClientID: "web-client", GoogleSecret: "secret", GoogleParties: []string{"android-client"}, AppleClientIDs: []string{"com.aziztwelve.engmob"}})
	v.googleKeysURL = server.URL + "/keys"
	v.appleKeysURL = server.URL + "/keys"
	v.googleTokenURL = server.URL + "/token"
	nonce := "server-nonce"
	hash := sha256.Sum256([]byte(nonce))
	nonceHash := hex.EncodeToString(hash[:])
	sign := func(claims jwt.MapClaims, alg jwt.SigningMethod, kid string) string {
		token := jwt.NewWithClaims(alg, claims)
		token.Header["kid"] = kid
		var signingKey any = key
		if alg == jwt.SigningMethodHS256 {
			signingKey = []byte("fake")
		}
		raw, err := token.SignedString(signingKey)
		if err != nil {
			t.Fatal(err)
		}
		return raw
	}
	tests := []struct {
		name, provider string
		mutate         func(jwt.MapClaims)
		invalid        bool
	}{
		{"apple first sign-in", "apple", nil, false},
		{"apple returning without email", "apple", func(c jwt.MapClaims) { delete(c, "email"); delete(c, "email_verified") }, false},
		{"wrong application", "apple", func(c jwt.MapClaims) { c["aud"] = "com.aziztwelve.darda" }, true},
		{"wrong nonce", "apple", func(c jwt.MapClaims) { c["nonce"] = "replayed-nonce" }, true},
		{"wrong issuer", "apple", func(c jwt.MapClaims) { c["iss"] = "https://attacker.example" }, true},
		{"expired", "apple", func(c jwt.MapClaims) { c["exp"] = time.Now().Add(-time.Hour).Unix() }, true},
		{"missing expiry", "apple", func(c jwt.MapClaims) { delete(c, "exp") }, true},
		{"future issued", "apple", func(c jwt.MapClaims) { c["iat"] = time.Now().Add(time.Hour).Unix() }, true},
		{"missing subject", "apple", func(c jwt.MapClaims) { delete(c, "sub") }, true},
		{"google valid exchange", "google", nil, false},
		{"google wrong azp", "google", func(c jwt.MapClaims) { c["azp"] = "darda-client" }, true},
		{"google wrong audience", "google", func(c jwt.MapClaims) { c["aud"] = "attacker-web" }, true},
	}
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			claims := jwt.MapClaims{"iss": "https://appleid.apple.com", "aud": "com.aziztwelve.engmob", "sub": "stable-sub", "exp": time.Now().Add(time.Minute).Unix(), "iat": time.Now().Add(-time.Minute).Unix(), "nonce": nonce, "email": "learner@example.com", "email_verified": true, "name": "Learner"}
			if tc.provider == "google" {
				claims["iss"] = "https://accounts.google.com"
				claims["aud"] = "web-client"
				claims["azp"] = "android-client"
			}
			if tc.mutate != nil {
				tc.mutate(claims)
			}
			token := sign(claims, jwt.SigningMethodRS256, "test-key")
			googleToken = token
			got, err := v.Verify(context.Background(), tc.provider, "fresh-code", token, nonceHash)
			if tc.invalid {
				if !errors.Is(err, ErrInvalid) {
					t.Fatalf("wanted rejection, got %+v %v", got, err)
				}
				return
			}
			if err != nil || got.Subject != "stable-sub" {
				t.Fatalf("valid identity rejected: %+v %v", got, err)
			}
			if _, ok := claims["email"]; !ok && got.Email != "" {
				t.Fatal("returning Apple invented an email")
			}
		})
	}
	if exchangeCount < 3 {
		t.Fatal("Google code not exchanged")
	}
	base := jwt.MapClaims{"iss": "https://appleid.apple.com", "aud": "com.aziztwelve.engmob", "sub": "sub", "exp": time.Now().Add(time.Hour).Unix(), "iat": time.Now().Unix(), "nonce": nonce, "email": "unverified@example.com", "email_verified": false}
	token := sign(base, jwt.SigningMethodRS256, "test-key")
	got, err := v.Verify(context.Background(), "apple", "", token, nonceHash)
	if err != nil || got.Email != "" {
		t.Fatalf("unverified email trusted: %+v %v", got, err)
	}
	for name, token := range map[string]string{"wrong algorithm": sign(base, jwt.SigningMethodHS256, "test-key"), "unknown key": sign(base, jwt.SigningMethodRS256, "unknown"), "malformed": "forged-token"} {
		t.Run(name, func(t *testing.T) {
			if _, err := v.Verify(context.Background(), "apple", "", token, nonceHash); !errors.Is(err, ErrInvalid) {
				t.Fatal(err)
			}
		})
	}
	if _, err := v.Verify(context.Background(), "google", "reused-code", "", nonceHash); !errors.Is(err, ErrInvalid) {
		t.Fatal(err)
	}
}
func TestDisabledProviders(t *testing.T) {
	v := New(Config{})
	for _, p := range []string{"apple", "google", "guest_fake"} {
		if v.Enabled(p) {
			t.Fatal(p)
		}
		if _, err := v.Verify(context.Background(), p, "", "", ""); !errors.Is(err, ErrUnavailable) {
			t.Fatal(err)
		}
	}
}
