package user

import (
	"context"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"google.golang.org/grpc"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"testing"
)

type profileStub struct {
	userv1.UserServiceClient
	tz string
}

func (s *profileStub) GetProfile(context.Context, *userv1.GetProfileRequest, ...grpc.CallOption) (*userv1.GetProfileResponse, error) {
	return &userv1.GetProfileResponse{Profile: &userv1.Profile{Timezone: wrapperspb.String(s.tz)}}, nil
}
func TestFreshReadUsesEditedTimezoneImmediately(t *testing.T) {
	remote := &profileStub{tz: "UTC"}
	client := &grpcClient{client: remote, cache: map[string]profileSnapshot{}}
	if tz, _ := client.Timezone(context.Background(), "a"); tz != "UTC" {
		t.Fatal(tz)
	}
	remote.tz = "Asia/Dushanbe"
	if tz, _ := client.Timezone(FreshProfileContext(context.Background()), "a"); tz != "Asia/Dushanbe" {
		t.Fatal("edited time zone hidden by cache", tz)
	}
	if tz, _ := client.Timezone(context.Background(), "a"); tz != "Asia/Dushanbe" {
		t.Fatal("fresh read did not update shared snapshot", tz)
	}
}
