package providers

import (
	"sort"
	"strings"
	"testing"
)

func TestRedactPII_Disabled(t *testing.T) {
	out, found := RedactPII("call me at john@example.com", PIIRedactOpts{Enabled: false})
	if out != "call me at john@example.com" {
		t.Errorf("disabled should not change text, got %q", out)
	}
	if len(found) != 0 {
		t.Errorf("disabled should report no findings, got %v", found)
	}
}

func TestRedactPII_Email(t *testing.T) {
	in := "send invoice to John.Doe+tag@example.com please"
	out, found := RedactPII(in, DefaultPIIRedactOpts())
	if !strings.Contains(out, "[email]") {
		t.Errorf("expected [email] placeholder, got %q", out)
	}
	if strings.Contains(out, "John.Doe") {
		t.Errorf("email leaked: %q", out)
	}
	if len(found) != 1 || found[0] != PIITypeEmail {
		t.Errorf("expected only email, got %v", found)
	}
}

func TestRedactPII_Phones(t *testing.T) {
	cases := []string{
		"Call +7 705 555 12 34 today",
		"Phone 555-123-4567",
		"or (555) 123-4567",
	}
	for _, c := range cases {
		out, found := RedactPII(c, DefaultPIIRedactOpts())
		if !containsPII(found, PIITypePhone) {
			t.Errorf("phone not detected in %q (got %v, out %q)", c, found, out)
		}
	}
}

func TestRedactPII_CreditCard(t *testing.T) {
	out, found := RedactPII("card 4242 4242 4242 4242 expires soon", DefaultPIIRedactOpts())
	if !strings.Contains(out, "[credit_card]") {
		t.Errorf("expected [credit_card], got %q", out)
	}
	if !containsPII(found, PIITypeCreditCard) {
		t.Errorf("expected credit_card type, got %v", found)
	}
}

func TestRedactPII_SSN(t *testing.T) {
	out, _ := RedactPII("SSN 123-45-6789 here", DefaultPIIRedactOpts())
	if strings.Contains(out, "123-45-6789") {
		t.Errorf("SSN leaked: %q", out)
	}
}

func TestRedactPII_IIN(t *testing.T) {
	out, found := RedactPII("моё ИИН 920101300123 для контракта", DefaultPIIRedactOpts())
	if !containsPII(found, PIITypeIIN) {
		t.Errorf("IIN not detected, got %v", found)
	}
	if strings.Contains(out, "920101300123") {
		t.Errorf("IIN leaked: %q", out)
	}
}

func TestRedactPII_IPv4(t *testing.T) {
	out, found := RedactPII("server is 192.168.1.100 in test", DefaultPIIRedactOpts())
	if !containsPII(found, PIITypeIPv4) {
		t.Errorf("IPv4 not detected, got %v", found)
	}
	if strings.Contains(out, "192.168.1.100") {
		t.Errorf("IPv4 leaked: %q", out)
	}
}

func TestRedactPII_IBAN(t *testing.T) {
	out, found := RedactPII("transfer to KZ75319D000000000123456789 by Friday", DefaultPIIRedactOpts())
	if !containsPII(found, PIITypeIBAN) {
		t.Errorf("IBAN not detected, got %v", found)
	}
	if strings.Contains(out, "KZ75319D") {
		t.Errorf("IBAN leaked: %q", out)
	}
}

func TestRedactPII_MultipleTypes(t *testing.T) {
	in := "Hi, my email is a@b.io and phone +7 705 555 12 34"
	out, found := RedactPII(in, DefaultPIIRedactOpts())
	if !containsPII(found, PIITypeEmail) || !containsPII(found, PIITypePhone) {
		t.Errorf("expected email + phone, got %v", found)
	}
	if strings.Contains(out, "a@b.io") || strings.Contains(out, "705") {
		t.Errorf("PII leaked: %q", out)
	}
}

func TestRedactPII_Idempotent(t *testing.T) {
	in := "Email me at user@host.io"
	once, _ := RedactPII(in, DefaultPIIRedactOpts())
	twice, found := RedactPII(once, DefaultPIIRedactOpts())
	if once != twice {
		t.Errorf("not idempotent: %q vs %q", once, twice)
	}
	if len(found) != 0 {
		t.Errorf("second pass should find nothing, got %v", found)
	}
}

func TestRedactPII_NoFalsePositives(t *testing.T) {
	in := "I am learning English. The verb 'go' is irregular."
	out, found := RedactPII(in, DefaultPIIRedactOpts())
	if out != in {
		t.Errorf("modified plain text: %q → %q", in, out)
	}
	if len(found) != 0 {
		t.Errorf("expected no PII, got %v", found)
	}
}

func TestHasPII(t *testing.T) {
	if !HasPII("contact me at user@host.io") {
		t.Error("expected HasPII true on email")
	}
	if HasPII("just plain text without secrets") {
		t.Error("expected HasPII false on plain text")
	}
}

// helpers

func containsPII(slice []PIIType, target PIIType) bool {
	sort.Slice(slice, func(i, j int) bool { return string(slice[i]) < string(slice[j]) })
	for _, t := range slice {
		if t == target {
			return true
		}
	}
	return false
}
