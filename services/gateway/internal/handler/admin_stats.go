package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
)

// AdminStatsHandler обработчик для статистики админ панели
type AdminStatsHandler struct {
	authClient   *client.AuthClient
	courseClient *client.CourseClient
	videoClient  client.VideoClient
}

// NewAdminStatsHandler создает новый экземпляр Admin Stats handler
func NewAdminStatsHandler(
	authClient *client.AuthClient,
	courseClient *client.CourseClient,
	videoClient client.VideoClient,
) *AdminStatsHandler {
	return &AdminStatsHandler{
		authClient:   authClient,
		courseClient: courseClient,
		videoClient:  videoClient,
	}
}

// GetStats возвращает статистику для dashboard
func (h *AdminStatsHandler) GetStats(c *gin.Context) {
	// Get users count
	usersResp, err := h.authClient.ListUsers(c.Request.Context(), &authv1.ListUsersRequest{})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Failed to get users count",
		})
		return
	}

	// Get courses count
	coursesResp, err := h.courseClient.ListCourses(c.Request.Context(), &coursev1.ListCoursesRequest{
		IncludeUnpublished: true,
	})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Failed to get courses count",
		})
		return
	}

	// Get videos count
	videosResp, err := h.videoClient.ListVideos(c.Request.Context(), &videov1.ListVideosRequest{})
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Failed to get videos count",
		})
		return
	}

	// Count published courses
	publishedCount := 0
	for _, course := range coursesResp.Courses {
		if course.IsPublished {
			publishedCount++
		}
	}

	c.JSON(http.StatusOK, gin.H{
		"total_users":       len(usersResp.Users),
		"total_courses":     len(coursesResp.Courses),
		"published_courses": publishedCount,
		"draft_courses":     len(coursesResp.Courses) - publishedCount,
		"total_videos":      len(videosResp.Videos),
	})
}
