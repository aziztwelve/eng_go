package service

import (
	"context"
	"sort"
	"strings"
	"sync"
	"time"

	"github.com/elearning/ai-service/internal/client/user"
	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/providers"
	"github.com/elearning/ai-service/internal/repository"
)

// =====================================================================
// Provider fake
// =====================================================================

type fakeProvider struct {
	chat func([]providers.PromptMessage, providers.ChatOptions) (*providers.ChatResponse, error)
	tts  func(string, providers.TTSOptions) (*providers.TTSResponse, error)
	stt  func([]byte, providers.TranscribeOptions) (*providers.TranscribeResponse, error)
}

func (f *fakeProvider) Name() string { return "fake" }
func (f *fakeProvider) Chat(_ context.Context, msgs []providers.PromptMessage, opts providers.ChatOptions) (*providers.ChatResponse, error) {
	if f.chat != nil {
		return f.chat(msgs, opts)
	}
	return &providers.ChatResponse{Content: `{"reply":"ok","translation":"ok"}`, TokensUsed: 10, CostUSD: 0.0001, Model: opts.Model}, nil
}
func (f *fakeProvider) Transcribe(_ context.Context, audio []byte, opts providers.TranscribeOptions) (*providers.TranscribeResponse, error) {
	if f.stt != nil {
		return f.stt(audio, opts)
	}
	return &providers.TranscribeResponse{Text: "transcribed", Confidence: 0.9, CostUSD: 0.001}, nil
}
func (f *fakeProvider) SynthesizeTTS(_ context.Context, text string, opts providers.TTSOptions) (*providers.TTSResponse, error) {
	if f.tts != nil {
		return f.tts(text, opts)
	}
	return &providers.TTSResponse{AudioURL: "https://test/" + text, DurationMs: 1000, CostUSD: 0.0001}, nil
}

// =====================================================================
// User client fake
// =====================================================================

type fakeUser struct {
	profile *user.Profile
}

func (f *fakeUser) GetProfile(_ context.Context, _ string) (*user.Profile, error) {
	return f.profile, nil
}

// =====================================================================
// Repo fakes
// =====================================================================

type fakeConversationRepo struct {
	mu    sync.Mutex
	items map[string]*model.Conversation
}

func newFakeConvRepo() *fakeConversationRepo {
	return &fakeConversationRepo{items: map[string]*model.Conversation{}}
}

func (f *fakeConversationRepo) Create(_ context.Context, c *model.Conversation) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	if c.ID == "" {
		c.ID = "conv-" + time.Now().Format("150405.000000")
	}
	if c.StartedAt.IsZero() {
		c.StartedAt = time.Now()
	}
	if c.LastMessageAt.IsZero() {
		c.LastMessageAt = c.StartedAt
	}
	f.items[c.ID] = c
	return nil
}
func (f *fakeConversationRepo) GetByID(_ context.Context, id string) (*model.Conversation, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	c, ok := f.items[id]
	if !ok {
		return nil, repository.ErrNotFound
	}
	cp := *c
	return &cp, nil
}
func (f *fakeConversationRepo) ListByUser(_ context.Context, userID string, limit, _ int) ([]*model.Conversation, int64, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	var out []*model.Conversation
	for _, c := range f.items {
		if c.UserID == userID && !c.IsEnded() {
			cp := *c
			out = append(out, &cp)
		}
	}
	sort.Slice(out, func(i, j int) bool { return out[i].StartedAt.After(out[j].StartedAt) })
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, int64(len(out)), nil
}
func (f *fakeConversationRepo) UpdateStats(_ context.Context, id string, addTokens int32, addCost float64, lastAt time.Time) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	c, ok := f.items[id]
	if !ok {
		return repository.ErrNotFound
	}
	c.MessageCount++
	c.TotalTokens += addTokens
	c.CostUSD += addCost
	c.LastMessageAt = lastAt
	return nil
}
func (f *fakeConversationRepo) MarkEnded(_ context.Context, id string) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	c, ok := f.items[id]
	if !ok {
		return repository.ErrNotFound
	}
	if c.EndedAt != nil {
		// Соответствие реальному postgres: WHERE ended_at IS NULL → 0 rows affected.
		return repository.ErrNotFound
	}
	t := time.Now()
	c.EndedAt = &t
	return nil
}

type fakeMessageRepo struct {
	mu    sync.Mutex
	items []*model.Message
}

func newFakeMessageRepo() *fakeMessageRepo { return &fakeMessageRepo{} }

func (f *fakeMessageRepo) Create(_ context.Context, m *model.Message) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	if m.ID == "" {
		m.ID = "msg-" + time.Now().Format("150405.000000000")
	}
	if m.CreatedAt.IsZero() {
		m.CreatedAt = time.Now()
	}
	f.items = append(f.items, m)
	return nil
}
func (f *fakeMessageRepo) GetByID(_ context.Context, id string) (*model.Message, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	for _, m := range f.items {
		if m.ID == id {
			cp := *m
			return &cp, nil
		}
	}
	return nil, repository.ErrNotFound
}

func (f *fakeMessageRepo) ListByConversation(_ context.Context, convID string) ([]*model.Message, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	var out []*model.Message
	for _, m := range f.items {
		if m.ConversationID == convID {
			cp := *m
			out = append(out, &cp)
		}
	}
	sort.Slice(out, func(i, j int) bool { return out[i].CreatedAt.Before(out[j].CreatedAt) })
	return out, nil
}
func (f *fakeMessageRepo) GetLastN(_ context.Context, convID string, n int) ([]*model.Message, error) {
	all, _ := f.ListByConversation(nil, convID)
	if len(all) > n {
		all = all[len(all)-n:]
	}
	return all, nil
}

type fakeExplanationRepo struct {
	mu    sync.Mutex
	items map[string]*model.Explanation // key: stepID + "|" + md5
}

func newFakeExplanationRepo() *fakeExplanationRepo {
	return &fakeExplanationRepo{items: map[string]*model.Explanation{}}
}

func (f *fakeExplanationRepo) Get(_ context.Context, stepID *string, md5 string) (*model.Explanation, error) {
	if stepID == nil {
		return nil, repository.ErrNotFound
	}
	f.mu.Lock()
	defer f.mu.Unlock()
	key := *stepID + "|" + md5
	e, ok := f.items[key]
	if !ok {
		return nil, repository.ErrNotFound
	}
	cp := *e
	return &cp, nil
}
func (f *fakeExplanationRepo) Create(_ context.Context, e *model.Explanation) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	if e.StepID == nil {
		// без step_id не дедуплицируем — записываем в уникальный slot.
		f.items["nostep|"+e.IncorrectAnswerMD5+"|"+e.ID] = e
		return nil
	}
	key := *e.StepID + "|" + e.IncorrectAnswerMD5
	f.items[key] = e
	return nil
}

type fakeWritingRepo struct {
	mu    sync.Mutex
	items []*model.WritingAssessment
}

func newFakeWritingRepo() *fakeWritingRepo { return &fakeWritingRepo{} }

func (f *fakeWritingRepo) Create(_ context.Context, a *model.WritingAssessment) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	if a.ID == "" {
		a.ID = "wa-" + time.Now().Format("150405.000000")
	}
	if a.CreatedAt.IsZero() {
		a.CreatedAt = time.Now()
	}
	f.items = append(f.items, a)
	return nil
}
func (f *fakeWritingRepo) ListByUser(_ context.Context, userID string, limit, _ int) ([]*model.WritingAssessment, int64, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	var out []*model.WritingAssessment
	for _, a := range f.items {
		if a.UserID == userID {
			cp := *a
			out = append(out, &cp)
		}
	}
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, int64(len(out)), nil
}

type fakePronRepo struct {
	mu    sync.Mutex
	items []*model.PronunciationAttempt
}

func newFakePronRepo() *fakePronRepo { return &fakePronRepo{} }

func (f *fakePronRepo) Create(_ context.Context, a *model.PronunciationAttempt) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	if a.ID == "" {
		a.ID = "pa-" + time.Now().Format("150405.000000")
	}
	if a.CreatedAt.IsZero() {
		a.CreatedAt = time.Now()
	}
	f.items = append(f.items, a)
	return nil
}
func (f *fakePronRepo) ListByUser(_ context.Context, userID string, limit, _ int) ([]*model.PronunciationAttempt, int64, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	var out []*model.PronunciationAttempt
	for _, a := range f.items {
		if a.UserID == userID {
			cp := *a
			out = append(out, &cp)
		}
	}
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, int64(len(out)), nil
}

type fakeFeedbackRepo struct {
	mu    sync.Mutex
	items map[string]*model.MessageFeedback // key: userID + "|" + messageID
}

func newFakeFeedbackRepo() *fakeFeedbackRepo {
	return &fakeFeedbackRepo{items: map[string]*model.MessageFeedback{}}
}

func (f *fakeFeedbackRepo) Upsert(_ context.Context, fb *model.MessageFeedback) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	if fb.ID == "" {
		fb.ID = "fb-" + time.Now().Format("150405.000000000")
	}
	now := time.Now()
	if fb.CreatedAt.IsZero() {
		fb.CreatedAt = now
	}
	fb.UpdatedAt = now
	k := fb.UserID + "|" + fb.MessageID
	f.items[k] = fb
	return nil
}

func (f *fakeFeedbackRepo) Get(_ context.Context, userID, messageID string) (*model.MessageFeedback, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	fb, ok := f.items[userID+"|"+messageID]
	if !ok {
		return nil, repository.ErrNotFound
	}
	cp := *fb
	return &cp, nil
}

func (f *fakeFeedbackRepo) Delete(_ context.Context, userID, messageID string) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	delete(f.items, userID+"|"+messageID)
	return nil
}

func (f *fakeFeedbackRepo) ListByMessageIDs(_ context.Context, userID string, messageIDs []string) (map[string]*model.MessageFeedback, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	out := make(map[string]*model.MessageFeedback, len(messageIDs))
	for _, id := range messageIDs {
		if fb, ok := f.items[userID+"|"+id]; ok {
			cp := *fb
			out[id] = &cp
		}
	}
	return out, nil
}

func (f *fakeFeedbackRepo) GetConversationStats(_ context.Context, conversationID string) (*model.FeedbackStats, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	stats := &model.FeedbackStats{ConversationID: conversationID}
	for _, fb := range f.items {
		if fb.ConversationID != conversationID {
			continue
		}
		if fb.Rating == model.RatingThumbsUp {
			stats.Likes++
		} else {
			stats.Dislikes++
		}
	}
	stats.Total = stats.Likes + stats.Dislikes
	return stats, nil
}

// fakeABExposureRepo — in-memory журнал для unit-тестов.
type fakeABExposureRepo struct {
	mu      sync.Mutex
	entries map[string]int // key: userID|experiment|variantID → count
}

func newFakeABExposureRepo() *fakeABExposureRepo {
	return &fakeABExposureRepo{entries: map[string]int{}}
}

func (f *fakeABExposureRepo) LogExposure(_ context.Context, userID, experiment, variantID string) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	key := userID + "|" + experiment + "|" + variantID
	f.entries[key]++
	return nil
}

func (f *fakeABExposureRepo) Count(userID, experiment, variantID string) int {
	f.mu.Lock()
	defer f.mu.Unlock()
	return f.entries[userID+"|"+experiment+"|"+variantID]
}

type fakeQuotaRepo struct {
	mu    sync.Mutex
	items map[string]*model.UsageQuota
}

func newFakeQuotaRepo() *fakeQuotaRepo {
	return &fakeQuotaRepo{items: map[string]*model.UsageQuota{}}
}

func quotaKey(userID string, date time.Time) string {
	return userID + "|" + date.UTC().Format("2006-01-02")
}

func (f *fakeQuotaRepo) Get(_ context.Context, userID string, date time.Time) (*model.UsageQuota, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	k := quotaKey(userID, date)
	q, ok := f.items[k]
	if !ok {
		return &model.UsageQuota{UserID: userID, Date: date.UTC()}, nil
	}
	cp := *q
	return &cp, nil
}
func (f *fakeQuotaRepo) Increment(_ context.Context, userID string, date time.Time, chatDelta int32, voiceDelta float64, writingDelta int32) error {
	f.mu.Lock()
	defer f.mu.Unlock()
	k := quotaKey(userID, date)
	q, ok := f.items[k]
	if !ok {
		q = &model.UsageQuota{UserID: userID, Date: date.UTC()}
		f.items[k] = q
	}
	q.ChatRequests += chatDelta
	q.VoiceMinutes += voiceDelta
	q.WritingChecks += writingDelta
	return nil
}
func (f *fakeQuotaRepo) DeleteOlderThan(_ context.Context, before time.Time) (int64, error) {
	f.mu.Lock()
	defer f.mu.Unlock()
	cut := time.Date(before.UTC().Year(), before.UTC().Month(), before.UTC().Day(), 0, 0, 0, 0, time.UTC)
	var deleted int64
	for k, q := range f.items {
		if q.Date.Before(cut) {
			delete(f.items, k)
			deleted++
		}
	}
	return deleted, nil
}

// =====================================================================
// Test harness
// =====================================================================

type testHarness struct {
	svc         *Service
	convs       *fakeConversationRepo
	msgs        *fakeMessageRepo
	expls       *fakeExplanationRepo
	writing     *fakeWritingRepo
	pron        *fakePronRepo
	quota       *fakeQuotaRepo
	feedback    *fakeFeedbackRepo
	abExposures *fakeABExposureRepo
	provider    *fakeProvider
}

func newHarness() *testHarness {
	convs := newFakeConvRepo()
	msgs := newFakeMessageRepo()
	expls := newFakeExplanationRepo()
	writing := newFakeWritingRepo()
	pron := newFakePronRepo()
	quota := newFakeQuotaRepo()
	feedback := newFakeFeedbackRepo()
	abExposures := newFakeABExposureRepo()
	prov := &fakeProvider{}
	svc := New(Config{
		DefaultModelChat:         "test-chat",
		DefaultModelHeavy:        "test-heavy",
		FreeChatLimit:            3,
		FreeVoiceMinutesLimit:    1,
		FreeWritingLimit:         2,
		PremiumChatLimit:         -1,
		PremiumVoiceMinutesLimit: 60,
		PremiumWritingLimit:      -1,
	}, Deps{
		Provider:      prov,
		User:          &fakeUser{profile: &user.Profile{TargetLanguage: "es", NativeLanguage: "ru", UserLevel: "B1"}},
		ABExposures:   abExposures,
		Conversations: convs,
		Messages:      msgs,
		Explanations:  expls,
		Writing:       writing,
		Pronunciation: pron,
		Quotas:        quota,
		Feedback:      feedback,
	})
	return &testHarness{
		svc:         svc,
		convs:       convs,
		msgs:        msgs,
		expls:       expls,
		writing:     writing,
		pron:        pron,
		quota:       quota,
		feedback:    feedback,
		abExposures: abExposures,
		provider:    prov,
	}
}

// hasSubstr — helper для assert.
func hasSubstr(s, sub string) bool { return strings.Contains(s, sub) }
