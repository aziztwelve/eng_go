package sender

import (
	"compress/gzip"
	"context"
	"github.com/elearning/notifications-service/internal/model"
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestExpoCompressedResponse(t *testing.T) {
	server := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Encoding", "gzip")
		w.Header().Set("Content-Type", "application/json")
		gz := gzip.NewWriter(w)
		defer gz.Close()
		_, _ = gz.Write([]byte(`{"data":[{"status":"ok","id":"ticket"}]}`))
	}))
	defer server.Close()
	result := NewExpoPushSender(server.URL).Send(context.Background(), &model.DeviceToken{ID: "device", Token: "ExponentPushToken[test]"}, Message{Title: "Test"})
	if !result.OK {
		t.Fatalf("compressed Expo response rejected: %s", result.Error)
	}
}
