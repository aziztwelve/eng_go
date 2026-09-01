package handler

import (
	"context"
	"net/http"
	"strconv"
	"strings"
	"sync"

	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

// TrackHandler — обработчик REST endpoints для learning tracks.
type TrackHandler struct {
	courseClient *client.CourseClient
	userClient   *client.UserClient
}

// NewTrackHandler создаёт обработчик.
func NewTrackHandler(courseClient *client.CourseClient, userClient *client.UserClient) *TrackHandler {
	return &TrackHandler{courseClient: courseClient, userClient: userClient}
}

// --- Public endpoints ---

// ListTracks GET /api/v1/tracks
//
// Язык, уровень, тип и цель можно передать query-параметрами (language, level,
// track_type, motivation). Язык и уровень по умолчанию берём из профиля.
// Цель намеренно не подставляется: каталог показывает все цели для уровня
// пользователя, а не только выбранную на onboarding.
func (h *TrackHandler) ListTracks(c *gin.Context) {
	req := &coursev1.ListTracksRequest{
		Search:             c.Query("search"),
		IncludeUnpublished: false,
		Limit:              parseIntQuery(c, "limit", 20),
		Offset:             parseIntQuery(c, "offset", 0),
	}

	langQ := c.Query("language")
	levelQ := c.Query("level")
	if langQ != "" {
		req.Language = wrapperspb.String(langQ)
	}
	if levelQ != "" {
		req.Level = wrapperspb.String(levelQ)
	}
	if v := c.Query("track_type"); v != "" {
		req.TrackType = wrapperspb.String(v)
	}

	if v := c.QueryArray("motivation"); len(v) > 0 {
		req.Motivation = v
	} else if v := c.Query("motivation"); v != "" {
		req.Motivation = []string{v}
	}

	// Подставляем из профиля только язык и уровень. Motivation — явный фильтр
	// для сценариев, где клиент действительно хочет одну цель.
	needLang := langQ == ""
	needLevel := levelQ == ""
	if (needLang || needLevel) && h.userClient != nil {
		if userID := getUserIDFromCtx(c); userID != "" {
			if ob, err := h.userClient.GetOnboardingState(c.Request.Context(), &userv1.GetOnboardingStateRequest{UserId: userID}); err == nil && ob.GetState() != nil {
				st := ob.GetState()
				if needLang {
					if tl := st.GetTargetLanguage(); tl != nil && tl.GetValue() != "" {
						req.Language = wrapperspb.String(tl.GetValue())
					}
				}
				if needLevel {
					if pl := st.GetProficiencyLevel(); pl != nil && pl.GetValue() != "" {
						req.Level = wrapperspb.String(pl.GetValue())
					}
				}
			}
		}
	}

	resp, err := h.courseClient.ListTracks(withContentLang(c), req)
	if err != nil {
		writeGRPCError(c, err)
		return
	}

	tracks := make([]gin.H, 0, len(resp.Tracks))
	for _, t := range resp.Tracks {
		tracks = append(tracks, trackToJSON(t))
	}
	c.JSON(http.StatusOK, gin.H{"tracks": tracks, "total": resp.Total})
}

// GetTrack GET /api/v1/tracks/:id?include_lessons=true
// :id может быть UUID или code (определяется по наличию дефисов).
func (h *TrackHandler) GetTrack(c *gin.Context) {
	idOrCode := c.Param("id")
	includeLessons := c.Query("include_lessons") == "true"
	ctx := withContentLang(c)

	var (
		resp *coursev1.GetTrackResponse
		err  error
	)
	if isLikelyUUID(idOrCode) {
		resp, err = h.courseClient.GetTrack(ctx, &coursev1.GetTrackRequest{
			TrackId:        idOrCode,
			IncludeLessons: includeLessons,
		})
	} else {
		resp, err = h.courseClient.GetTrackByCode(ctx, &coursev1.GetTrackByCodeRequest{
			Code:           idOrCode,
			IncludeLessons: includeLessons,
		})
	}
	if err != nil {
		writeGRPCError(c, err)
		return
	}

	out := trackToJSON(resp.Track)
	if includeLessons {
		lessons := make([]gin.H, 0, len(resp.Lessons))
		for _, l := range resp.Lessons {
			lessons = append(lessons, lessonToJSON(l))
		}
		out["lessons"] = lessons
	}
	c.JSON(http.StatusOK, out)
}

func (h *TrackHandler) GetTrackDictionary(c *gin.Context) {
	userID := getUserIDFromCtx(c)
	if c.Query("include_added") == "false" {
		userID = ""
	}
	resp, err := h.courseClient.ListTrackVocabulary(c.Request.Context(), &coursev1.ListTrackVocabularyRequest{
		TrackId: c.Param("id"), UserId: userID, Search: c.Query("search"),
		Limit: int32(parseIntQuery(c, "limit", 50)), Offset: int32(parseIntQuery(c, "offset", 0)),
	})
	if err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

func (h *TrackHandler) AddTrackDictionary(c *gin.Context) {
	userID := getUserIDFromCtx(c)
	var body struct {
		VocabularyIDs []string `json:"vocabulary_ids"`
	}
	if err := c.ShouldBindJSON(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	if len(body.VocabularyIDs) < 1 || len(body.VocabularyIDs) > 100 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "vocabulary_ids must contain 1..100 items"})
		return
	}
	resp, err := h.courseClient.AddTrackVocabularyAsFlashcards(c.Request.Context(), &coursev1.AddTrackVocabularyAsFlashcardsRequest{TrackId: c.Param("id"), UserId: userID, VocabularyIds: body.VocabularyIDs})
	if err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetTrackProgress GET /api/v1/progress/tracks/:trackId
//
// Возвращает прогресс прохождения уроков трека для текущего юзера — единым
// ответом, чтобы клиент мог рисовать замки (последовательная разблокировка)
// без N запросов. Внутри агрегирует существующие gRPC-методы
// (GetTrack + GetLessonProgress по каждому уроку, параллельно).
func (h *TrackHandler) GetTrackProgress(c *gin.Context) {
	idOrCode := c.Param("trackId")
	userID := getUserIDFromCtx(c)
	if userID == "" {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "unauthorized"})
		return
	}
	ctx := c.Request.Context()

	// 1. Трек с уроками (по UUID или code).
	var (
		tr  *coursev1.GetTrackResponse
		err error
	)
	if isLikelyUUID(idOrCode) {
		tr, err = h.courseClient.GetTrack(ctx, &coursev1.GetTrackRequest{TrackId: idOrCode, IncludeLessons: true})
	} else {
		tr, err = h.courseClient.GetTrackByCode(ctx, &coursev1.GetTrackByCodeRequest{Code: idOrCode, IncludeLessons: true})
	}
	if err != nil {
		writeGRPCError(c, err)
		return
	}

	lessons := tr.GetLessons()
	type lessonProg struct {
		lessonID   string
		completed  bool
		percentage float64
	}
	results := make([]lessonProg, len(lessons))

	// 2. Прогресс по каждому уроку — параллельно.
	var wg sync.WaitGroup
	for i, l := range lessons {
		wg.Add(1)
		go func(i int, lessonID string) {
			defer wg.Done()
			res := lessonProg{lessonID: lessonID}
			pr, e := h.courseClient.GetLessonProgress(ctx, &coursev1.GetLessonProgressRequest{
				UserId:   userID,
				LessonId: lessonID,
			})
			if e == nil && pr.GetProgress() != nil {
				p := pr.GetProgress()
				res.percentage = p.GetProgressPercentage()
				res.completed = p.GetProgressPercentage() >= 100 || p.GetCompletedAt() != nil
			}
			results[i] = res
		}(i, l.GetId())
	}
	wg.Wait()

	// 3. Сборка ответа.
	out := make([]gin.H, 0, len(results))
	completedCount := 0
	for _, r := range results {
		if r.completed {
			completedCount++
		}
		out = append(out, gin.H{
			"lesson_id":           r.lessonID,
			"completed":           r.completed,
			"progress_percentage": r.percentage,
		})
	}
	c.JSON(http.StatusOK, gin.H{
		"track_id":        tr.GetTrack().GetId(),
		"lessons":         out,
		"completed_count": completedCount,
		"total":           len(results),
	})
}

// --- Admin endpoints ---

// CreateTrack POST /api/v1/admin/tracks
func (h *TrackHandler) CreateTrack(c *gin.Context) {
	var req struct {
		Code        string `json:"code" binding:"required"`
		Title       string `json:"title" binding:"required"`
		Description string `json:"description"`
		IconURL     string `json:"icon_url"`
		Language    string `json:"language"`
		Level       string `json:"level"`
		TrackType   string `json:"track_type"`
		SortOrder   int32  `json:"sort_order"`
	}
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.courseClient.CreateTrack(c.Request.Context(), &coursev1.CreateTrackRequest{
		Code:        req.Code,
		Title:       req.Title,
		Description: req.Description,
		IconUrl:     req.IconURL,
		Language:    req.Language,
		Level:       req.Level,
		TrackType:   req.TrackType,
		SortOrder:   req.SortOrder,
		CreatedBy:   getUserIDFromCtx(c),
	})
	if err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, trackToJSON(resp.Track))
}

// UpdateTrack PUT /api/v1/admin/tracks/:id
func (h *TrackHandler) UpdateTrack(c *gin.Context) {
	id := c.Param("id")
	var req struct {
		Title       *string `json:"title"`
		Description *string `json:"description"`
		IconURL     *string `json:"icon_url"`
		Language    *string `json:"language"`
		Level       *string `json:"level"`
		TrackType   *string `json:"track_type"`
		SortOrder   *int32  `json:"sort_order"`
	}
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	upd := &coursev1.UpdateTrackRequest{TrackId: id}
	if req.Title != nil {
		upd.Title = wrapperspb.String(*req.Title)
	}
	if req.Description != nil {
		upd.Description = wrapperspb.String(*req.Description)
	}
	if req.IconURL != nil {
		upd.IconUrl = wrapperspb.String(*req.IconURL)
	}
	if req.Language != nil {
		upd.Language = wrapperspb.String(*req.Language)
	}
	if req.Level != nil {
		upd.Level = wrapperspb.String(*req.Level)
	}
	if req.TrackType != nil {
		upd.TrackType = wrapperspb.String(*req.TrackType)
	}
	if req.SortOrder != nil {
		upd.SortOrder = wrapperspb.Int32(*req.SortOrder)
	}

	resp, err := h.courseClient.UpdateTrack(c.Request.Context(), upd)
	if err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, trackToJSON(resp.Track))
}

// DeleteTrack DELETE /api/v1/admin/tracks/:id
func (h *TrackHandler) DeleteTrack(c *gin.Context) {
	id := c.Param("id")
	if _, err := h.courseClient.DeleteTrack(c.Request.Context(), &coursev1.DeleteTrackRequest{TrackId: id}); err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "Track deleted"})
}

// PublishTrack PUT /api/v1/admin/tracks/:id/publish
func (h *TrackHandler) PublishTrack(c *gin.Context) {
	id := c.Param("id")
	var req struct {
		IsPublished bool `json:"is_published"`
	}
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.courseClient.PublishTrack(c.Request.Context(), &coursev1.PublishTrackRequest{
		TrackId:     id,
		IsPublished: req.IsPublished,
	})
	if err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, trackToJSON(resp.Track))
}

// AdminListTracks GET /api/v1/admin/tracks — включает unpublished
func (h *TrackHandler) AdminListTracks(c *gin.Context) {
	req := &coursev1.ListTracksRequest{
		Search:             c.Query("search"),
		IncludeUnpublished: true,
		Limit:              parseIntQuery(c, "limit", 50),
		Offset:             parseIntQuery(c, "offset", 0),
	}
	if v := c.Query("language"); v != "" {
		req.Language = wrapperspb.String(v)
	}
	if v := c.Query("track_type"); v != "" {
		req.TrackType = wrapperspb.String(v)
	}
	resp, err := h.courseClient.ListTracks(withContentLang(c), req)
	if err != nil {
		writeGRPCError(c, err)
		return
	}
	tracks := make([]gin.H, 0, len(resp.Tracks))
	for _, t := range resp.Tracks {
		tracks = append(tracks, trackToJSON(t))
	}
	c.JSON(http.StatusOK, gin.H{"tracks": tracks, "total": resp.Total})
}

// AddLessonToTrack POST /api/v1/admin/tracks/:id/lessons
func (h *TrackHandler) AddLessonToTrack(c *gin.Context) {
	trackID := c.Param("id")
	var req struct {
		LessonID   string `json:"lesson_id" binding:"required"`
		OrderIndex int32  `json:"order_index"`
	}
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	if _, err := h.courseClient.AddLessonToTrack(c.Request.Context(), &coursev1.AddLessonToTrackRequest{
		TrackId:    trackID,
		LessonId:   req.LessonID,
		OrderIndex: req.OrderIndex,
	}); err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "Lesson added to track"})
}

// RemoveLessonFromTrack DELETE /api/v1/admin/tracks/:id/lessons/:lessonId
func (h *TrackHandler) RemoveLessonFromTrack(c *gin.Context) {
	trackID := c.Param("id")
	lessonID := c.Param("lessonId")
	if _, err := h.courseClient.RemoveLessonFromTrack(c.Request.Context(), &coursev1.RemoveLessonFromTrackRequest{
		TrackId:  trackID,
		LessonId: lessonID,
	}); err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "Lesson removed"})
}

// ReorderTrackLessons PUT /api/v1/admin/tracks/:id/lessons/reorder
func (h *TrackHandler) ReorderTrackLessons(c *gin.Context) {
	trackID := c.Param("id")
	var req struct {
		LessonIDs []string `json:"lesson_ids" binding:"required"`
	}
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	if _, err := h.courseClient.ReorderTrackLessons(c.Request.Context(), &coursev1.ReorderTrackLessonsRequest{
		TrackId:   trackID,
		LessonIds: req.LessonIDs,
	}); err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"message": "Lessons reordered"})
}

// --- helpers ---

// --- Персональный план (Phase 8): /api/v1/me/tracks ---

// GetMyTracks GET /api/v1/me/tracks — персональный план треков юзера.
// Если план пуст — лениво генерирует его по профилю (level + language + goal).
func (h *TrackHandler) GetMyTracks(c *gin.Context) {
	userID := getUserIDFromCtx(c)
	if userID == "" {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "unauthorized"})
		return
	}
	ctx := withContentLang(c)

	resp, err := h.courseClient.GetUserTracks(ctx, &coursev1.GetUserTracksRequest{UserId: userID})
	if err != nil {
		writeGRPCError(c, err)
		return
	}

	// Ленивая генерация: если плана ещё нет — создаём по профилю.
	if len(resp.GetTracks()) == 0 {
		lang, level, goal := h.profileForPlan(ctx, userID)
		if _, gerr := h.courseClient.GenerateUserPlan(ctx, &coursev1.GenerateUserPlanRequest{
			UserId: userID, Language: lang, Level: level, Goal: goal,
		}); gerr == nil {
			if resp, err = h.courseClient.GetUserTracks(ctx, &coursev1.GetUserTracksRequest{UserId: userID}); err != nil {
				writeGRPCError(c, err)
				return
			}
		}
	}

	out := make([]gin.H, 0, len(resp.GetTracks()))
	for _, ut := range resp.GetTracks() {
		j := trackToJSON(ut.GetTrack())
		j["order_index"] = ut.GetOrderIndex()
		j["status"] = ut.GetStatus()
		j["source"] = ut.GetSource()
		out = append(out, j)
	}
	c.JSON(http.StatusOK, gin.H{"tracks": out})
}

// profileForPlan достаёт language/level/goal из онбординга юзера (best-effort).
func (h *TrackHandler) profileForPlan(ctx context.Context, userID string) (lang, level, goal string) {
	if h.userClient == nil {
		return
	}
	ob, err := h.userClient.GetOnboardingState(ctx, &userv1.GetOnboardingStateRequest{UserId: userID})
	if err != nil || ob.GetState() == nil {
		return
	}
	st := ob.GetState()
	if tl := st.GetTargetLanguage(); tl != nil {
		lang = tl.GetValue()
	}
	if pl := st.GetProficiencyLevel(); pl != nil {
		level = pl.GetValue()
	}
	if m := st.GetMotivation(); len(m) > 0 {
		goal = m[0] // одна главная цель
	}
	return
}

// AddMyTrack POST /api/v1/me/tracks/:id — добавить трек в план вручную.
func (h *TrackHandler) AddMyTrack(c *gin.Context) {
	userID := getUserIDFromCtx(c)
	if userID == "" {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "unauthorized"})
		return
	}
	if _, err := h.courseClient.AddUserTrack(c.Request.Context(), &coursev1.AddUserTrackRequest{
		UserId: userID, TrackId: c.Param("id"),
	}); err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"success": true})
}

// RemoveMyTrack DELETE /api/v1/me/tracks/:id — убрать трек из плана.
func (h *TrackHandler) RemoveMyTrack(c *gin.Context) {
	userID := getUserIDFromCtx(c)
	if userID == "" {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "unauthorized"})
		return
	}
	if _, err := h.courseClient.RemoveUserTrack(c.Request.Context(), &coursev1.RemoveUserTrackRequest{
		UserId: userID, TrackId: c.Param("id"),
	}); err != nil {
		writeGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"success": true})
}

func trackToJSON(t *coursev1.Track) gin.H {
	if t == nil {
		return nil
	}
	return gin.H{
		"id":           t.Id,
		"code":         t.Code,
		"title":        t.Title,
		"description":  t.Description,
		"icon_url":     t.IconUrl,
		"language":     t.Language,
		"level":        t.Level,
		"track_type":   t.TrackType,
		"is_published": t.IsPublished,
		"sort_order":   t.SortOrder,
		"motivation":   t.Motivation,
		"created_by":   t.CreatedBy,
		"created_at":   t.CreatedAt,
		"updated_at":   t.UpdatedAt,
	}
}

func lessonToJSON(l *coursev1.Lesson) gin.H {
	if l == nil {
		return nil
	}
	return gin.H{
		"id":          l.Id,
		"module_id":   l.ModuleId, // "" => standalone
		"title":       l.Title,
		"description": l.Description,
		"order_index": l.OrderIndex,
		"created_at":  l.CreatedAt,
		"updated_at":  l.UpdatedAt,
	}
}

func parseIntQuery(c *gin.Context, key string, defaultVal int32) int32 {
	v := c.Query(key)
	if v == "" {
		return defaultVal
	}
	n, err := strconv.Atoi(v)
	if err != nil {
		return defaultVal
	}
	return int32(n)
}

// isLikelyUUID — простая эвристика: UUID имеет 4 дефиса, code — обычно kebab-case без 4 дефисов.
func isLikelyUUID(s string) bool {
	if len(s) != 36 {
		return false
	}
	dashes := 0
	for _, r := range s {
		if r == '-' {
			dashes++
		}
	}
	return dashes == 4
}

func writeGRPCError(c *gin.Context, err error) {
	st, _ := status.FromError(err)
	httpCode := http.StatusInternalServerError
	switch st.Code() {
	case codes.NotFound:
		httpCode = http.StatusNotFound
	case codes.InvalidArgument:
		httpCode = http.StatusBadRequest
	case codes.AlreadyExists:
		httpCode = http.StatusConflict
	case codes.PermissionDenied:
		httpCode = http.StatusForbidden
	}
	c.JSON(httpCode, gin.H{"error": st.Message()})
}

// getUserIDFromCtx — получает user_id из контекста (auth middleware кладёт его).
// Возвращает "", если не найдено.
func getUserIDFromCtx(c *gin.Context) string {
	if v, ok := c.Get("user_id"); ok {
		if s, ok := v.(string); ok {
			return s
		}
	}
	return ""
}

// withContentLang прокидывает язык контента в course-service через gRPC
// metadata (x-content-lang). Приоритет: ?lang= → Accept-Language → "".
// course-service резолвит локаль с фолбэками (lang → ru → en → base).
func withContentLang(c *gin.Context) context.Context {
	lang := c.Query("lang")
	if lang == "" {
		lang = c.GetHeader("Accept-Language")
	}
	if lang != "" {
		// "en-US,en;q=0.9" → первый тег → "en"
		if i := strings.IndexAny(lang, ",;"); i > 0 {
			lang = lang[:i]
		}
		lang = strings.TrimSpace(strings.ToLower(strings.SplitN(lang, "-", 2)[0]))
	}
	if lang == "" {
		return c.Request.Context()
	}
	return metadata.AppendToOutgoingContext(c.Request.Context(), "x-content-lang", lang)
}
