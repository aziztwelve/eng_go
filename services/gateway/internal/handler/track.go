package handler

import (
	"net/http"
	"strconv"
	"sync"

	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
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
// Язык, уровень и мотивацию можно передать query-параметрами (language, level,
// track_type, motivation). Если они не заданы — подставляются из профиля
// авторизованного пользователя (target_language, proficiency_level, motivation),
// чтобы фронтенд мог звать просто GET /api/v1/tracks без параметров.
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

	motivationSet := false
	if v := c.QueryArray("motivation"); len(v) > 0 {
		req.Motivation = v
		motivationSet = true
	} else if v := c.Query("motivation"); v != "" {
		req.Motivation = []string{v}
		motivationSet = true
	}

	// Подставляем недостающие фильтры из профиля авторизованного юзера.
	needLang := langQ == ""
	needLevel := levelQ == ""
	needMotivation := !motivationSet
	if (needLang || needLevel || needMotivation) && h.userClient != nil {
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
				if needMotivation {
					req.Motivation = st.GetMotivation()
				}
			}
		}
	}

	resp, err := h.courseClient.ListTracks(c.Request.Context(), req)
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

	var (
		resp *coursev1.GetTrackResponse
		err  error
	)
	if isLikelyUUID(idOrCode) {
		resp, err = h.courseClient.GetTrack(c.Request.Context(), &coursev1.GetTrackRequest{
			TrackId:        idOrCode,
			IncludeLessons: includeLessons,
		})
	} else {
		resp, err = h.courseClient.GetTrackByCode(c.Request.Context(), &coursev1.GetTrackByCodeRequest{
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
	resp, err := h.courseClient.ListTracks(c.Request.Context(), req)
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
