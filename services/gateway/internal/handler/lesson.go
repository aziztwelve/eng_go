package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// LessonHandler — публичные universal-эндпоинты для уроков.
// Phase 0: позволяет читать любой урок (course-bound или standalone) по ID.
type LessonHandler struct {
	courseClient *client.CourseClient
}

func NewLessonHandler(courseClient *client.CourseClient) *LessonHandler {
	return &LessonHandler{courseClient: courseClient}
}

// GetLesson GET /api/v1/lessons/:id
// Возвращает урок + шаги. Для standalone-уроков enrollment не требуется.
func (h *LessonHandler) GetLesson(c *gin.Context) {
	lessonID := c.Param("id")

	resp, err := h.courseClient.GetLesson(withContentLang(c), &coursev1.GetLessonRequest{
		LessonId: lessonID,
	})
	if err != nil {
		writeGRPCError(c, err)
		return
	}

	steps := make([]gin.H, 0, len(resp.Steps))
	for _, s := range resp.Steps {
		steps = append(steps, stepToJSON(s))
	}

	lesson := lessonToJSON(resp.Lesson)
	if lesson != nil {
		lesson["is_standalone"] = resp.Lesson != nil && resp.Lesson.ModuleId == ""
	}

	c.JSON(http.StatusOK, gin.H{
		"lesson": lesson,
		"steps":  steps,
	})
}

func stepToJSON(s *coursev1.Step) gin.H {
	if s == nil {
		return nil
	}
	return gin.H{
		"id":          s.Id,
		"lesson_id":   s.LessonId,
		"type":        s.Type,
		"title":       s.Title,
		"content":     s.Content,
		"order_index": s.OrderIndex,
		"created_at":  s.CreatedAt,
		"updated_at":  s.UpdatedAt,
	}
}
