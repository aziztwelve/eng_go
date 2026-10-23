package app

import (
	"context"
	"io"
	"net"
	"net/http"
	"testing"
	"time"
)

func TestHTTPCancellationDrainsAndReleasesPort(t *testing.T) {
	listener, err := net.Listen("tcp", "127.0.0.1:0")
	if err != nil {
		t.Fatal(err)
	}
	addr := listener.Addr().String()
	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	entered := make(chan struct{})
	release := make(chan struct{})
	done := make(chan error, 1)
	go func() {
		done <- serveHTTP(ctx, listener, http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) { close(entered); <-release; w.Write([]byte("saved")) }))
	}()
	response := make(chan error, 1)
	go func() {
		res, err := http.Get("http://" + addr)
		if err == nil {
			_, err = io.ReadAll(res.Body)
			res.Body.Close()
		}
		response <- err
	}()
	select {
	case <-entered:
	case <-time.After(time.Second):
		t.Fatal("request did not start")
	}
	cancel()
	select {
	case err := <-done:
		t.Fatalf("server exited before draining: %v", err)
	default:
	}
	close(release)
	select {
	case err := <-done:
		if err != nil {
			t.Fatal(err)
		}
	case <-time.After(2 * time.Second):
		t.Fatal("shutdown hung")
	}
	if err := <-response; err != nil {
		t.Fatal(err)
	}
	replacement, err := net.Listen("tcp", addr)
	if err != nil {
		t.Fatalf("port still occupied: %v", err)
	}
	replacement.Close()
}
