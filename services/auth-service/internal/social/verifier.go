// Package social verifies native provider credentials. Tokens and secrets must
// never be logged. Provider identity is the signed subject, never request email.
package social

import (
	"context"
	"crypto/rsa"
	"crypto/sha256"
	"crypto/subtle"
	"encoding/base64"
	"encoding/hex"
	"encoding/json"
	"errors"
	"io"
	"math/big"
	"net/http"
	"net/url"
	"os"
	"strings"
	"sync"
	"time"

	"github.com/golang-jwt/jwt/v5"
)

var ErrInvalid = errors.New("invalid provider credentials")
var ErrUnavailable = errors.New("provider unavailable")

type Config struct {
	GoogleClientID, GoogleSecret  string
	GoogleParties, AppleClientIDs []string
}
type Identity struct{ Subject, Email, Name string }
type keyCache struct {
	keys  map[string]*rsa.PublicKey
	until time.Time
}
type Verifier struct {
	config                                      Config
	client                                      *http.Client
	googleTokenURL, googleKeysURL, appleKeysURL string
	mu                                          sync.Mutex
	cache                                       map[string]keyCache
}

func New(config Config) *Verifier {
	return &Verifier{config: config, client: &http.Client{Timeout: 12 * time.Second},
		googleTokenURL: "https://oauth2.googleapis.com/token", googleKeysURL: "https://www.googleapis.com/oauth2/v3/certs", appleKeysURL: "https://appleid.apple.com/auth/keys", cache: map[string]keyCache{}}
}
func split(value string) []string {
	var result []string
	for _, s := range strings.Split(value, ",") {
		if s = strings.TrimSpace(s); s != "" {
			result = append(result, s)
		}
	}
	return result
}
func NewFromEnv() *Verifier {
	return New(Config{GoogleClientID: os.Getenv("GOOGLE_SIGN_IN_WEB_CLIENT_ID"), GoogleSecret: os.Getenv("GOOGLE_SIGN_IN_CLIENT_SECRET"), GoogleParties: split(os.Getenv("GOOGLE_SIGN_IN_AUTHORIZED_PARTY_IDS")), AppleClientIDs: split(os.Getenv("APPLE_SIGN_IN_CLIENT_IDS"))})
}
func (v *Verifier) Enabled(provider string) bool {
	switch provider {
	case "google":
		return v.config.GoogleClientID != "" && v.config.GoogleSecret != "" && len(v.config.GoogleParties) > 0
	case "apple":
		return len(v.config.AppleClientIDs) > 0
	default:
		return false
	}
}
func (v *Verifier) exchangeGoogle(ctx context.Context, code string) (string, error) {
	if code == "" || len(code) > 8192 {
		return "", ErrInvalid
	}
	form := url.Values{"client_id": {v.config.GoogleClientID}, "client_secret": {v.config.GoogleSecret}, "code": {code}, "grant_type": {"authorization_code"}, "redirect_uri": {""}}
	req, err := http.NewRequestWithContext(ctx, http.MethodPost, v.googleTokenURL, strings.NewReader(form.Encode()))
	if err != nil {
		return "", ErrUnavailable
	}
	req.Header.Set("Content-Type", "application/x-www-form-urlencoded")
	res, err := v.client.Do(req)
	if err != nil {
		return "", ErrUnavailable
	}
	defer res.Body.Close()
	if res.StatusCode == 400 || res.StatusCode == 401 {
		return "", ErrInvalid
	}
	if res.StatusCode != 200 {
		return "", ErrUnavailable
	}
	var data struct {
		IDToken string `json:"id_token"`
	}
	if json.NewDecoder(io.LimitReader(res.Body, 1<<20)).Decode(&data) != nil || data.IDToken == "" {
		return "", ErrInvalid
	}
	return data.IDToken, nil
}
func (v *Verifier) keys(ctx context.Context, provider, kid string) (*rsa.PublicKey, error) {
	v.mu.Lock()
	defer v.mu.Unlock()
	cached := v.cache[provider]
	if time.Now().Before(cached.until) {
		if key := cached.keys[kid]; key != nil {
			return key, nil
		}
		// Do not refetch repeatedly for attacker-controlled unknown key IDs. Provider
		// rotations become visible within five minutes; native login can be retried.
		return nil, ErrInvalid
	}
	endpoint := v.googleKeysURL
	if provider == "apple" {
		endpoint = v.appleKeysURL
	}
	req, err := http.NewRequestWithContext(ctx, http.MethodGet, endpoint, nil)
	if err != nil {
		return nil, ErrUnavailable
	}
	res, err := v.client.Do(req)
	if err != nil {
		return nil, ErrUnavailable
	}
	defer res.Body.Close()
	if res.StatusCode != 200 {
		return nil, ErrUnavailable
	}
	var data struct {
		Keys []struct{ Kty, Kid, N, E, Alg, Use string }
	}
	if json.NewDecoder(io.LimitReader(res.Body, 1<<20)).Decode(&data) != nil {
		return nil, ErrUnavailable
	}
	keys := map[string]*rsa.PublicKey{}
	for _, j := range data.Keys {
		if j.Kty != "RSA" || (j.Alg != "" && j.Alg != "RS256") || (j.Use != "" && j.Use != "sig") {
			continue
		}
		n, e1 := base64.RawURLEncoding.DecodeString(j.N)
		e, e2 := base64.RawURLEncoding.DecodeString(j.E)
		if e1 != nil || e2 != nil || len(n) < 256 || len(e) > 4 {
			continue
		}
		exponent := int(new(big.Int).SetBytes(e).Int64())
		if exponent < 3 || exponent%2 == 0 {
			continue
		}
		keys[j.Kid] = &rsa.PublicKey{N: new(big.Int).SetBytes(n), E: exponent}
	}
	if len(keys) == 0 {
		return nil, ErrUnavailable
	}
	v.cache[provider] = keyCache{keys, time.Now().Add(5 * time.Minute)}
	key := keys[kid]
	if key == nil {
		return nil, ErrInvalid
	}
	return key, nil
}
func contains(values []string, value string) bool {
	for _, s := range values {
		if s == value {
			return true
		}
	}
	return false
}
func verified(value any) bool { return value == true || value == "true" }
func (v *Verifier) Verify(ctx context.Context, provider, code, token, nonceHash string) (Identity, error) {
	if !v.Enabled(provider) {
		return Identity{}, ErrUnavailable
	}
	if provider == "google" {
		var err error
		token, err = v.exchangeGoogle(ctx, code)
		if err != nil {
			return Identity{}, err
		}
	}
	if len(token) == 0 || len(token) > 16384 {
		return Identity{}, ErrInvalid
	}
	claims := jwt.MapClaims{}
	var keyError error
	parsed, err := jwt.ParseWithClaims(token, claims, func(t *jwt.Token) (any, error) {
		kid, ok := t.Header["kid"].(string)
		if !ok || len(kid) > 256 {
			return nil, ErrInvalid
		}
		key, e := v.keys(ctx, provider, kid)
		keyError = e
		return key, e
	}, jwt.WithValidMethods([]string{"RS256"}), jwt.WithExpirationRequired(), jwt.WithIssuedAt(), jwt.WithLeeway(30*time.Second))
	if errors.Is(keyError, ErrUnavailable) {
		return Identity{}, ErrUnavailable
	}
	if err != nil || !parsed.Valid {
		return Identity{}, ErrInvalid
	}
	issuer, _ := claims.GetIssuer()
	aud, _ := claims.GetAudience()
	sub, _ := claims.GetSubject()
	issued, _ := claims.GetIssuedAt()
	if sub == "" || len(sub) > 255 || issued == nil {
		return Identity{}, ErrInvalid
	}
	allowed := v.config.AppleClientIDs
	if provider == "google" {
		if issuer != "https://accounts.google.com" && issuer != "accounts.google.com" {
			return Identity{}, ErrInvalid
		}
		allowed = []string{v.config.GoogleClientID}
		if azp, exists := claims["azp"]; exists {
			s, ok := azp.(string)
			if !ok || !contains(v.config.GoogleParties, s) {
				return Identity{}, ErrInvalid
			}
		}
	} else {
		if issuer != "https://appleid.apple.com" {
			return Identity{}, ErrInvalid
		}
		nonce, ok := claims["nonce"].(string)
		if !ok || nonce == "" {
			return Identity{}, ErrInvalid
		}
		hash := sha256.Sum256([]byte(nonce))
		actual := hex.EncodeToString(hash[:])
		if subtle.ConstantTimeCompare([]byte(actual), []byte(nonceHash)) != 1 {
			return Identity{}, ErrInvalid
		}
	}
	accepted := false
	for _, a := range aud {
		if contains(allowed, a) {
			accepted = true
		}
	}
	if !accepted {
		return Identity{}, ErrInvalid
	}
	email, _ := claims["email"].(string)
	name, _ := claims["name"].(string)
	if !verified(claims["email_verified"]) {
		email = ""
	}
	return Identity{Subject: sub, Email: email, Name: name}, nil
}
