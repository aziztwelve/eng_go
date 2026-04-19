package handler

import (
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

// AdminUserRealHandler обработчик для управления пользователями (real implementation)
type AdminUserRealHandler struct {
	authClient *client.AuthClient
	userClient *client.UserClient
}

// NewAdminUserRealHandler создает новый экземпляр Admin User handler
func NewAdminUserRealHandler(authClient *client.AuthClient, userClient *client.UserClient) *AdminUserRealHandler {
	return &AdminUserRealHandler{
		authClient: authClient,
		userClient: userClient,
	}
}

// ListUsers возвращает список всех пользователей
func (h *AdminUserRealHandler) ListUsers(c *gin.Context) {
	// Получаем список пользователей из auth-service
	authResp, err := h.authClient.ListUsers(c.Request.Context(), &authv1.ListUsersRequest{})
	if err != nil {
		st, _ := status.FromError(err)
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	users := make([]dto.UserResponse, 0, len(authResp.Users))
	for _, authUser := range authResp.Users {
		// Получаем профиль из user-service
		profileResp, err := h.userClient.GetProfile(c.Request.Context(), &userv1.GetProfileRequest{
			UserId: authUser.Id,
		})
		
		fullName := ""
		if err == nil && profileResp.Profile != nil {
			firstName := ""
			lastName := ""
			if profileResp.Profile.FirstName != nil {
				firstName = profileResp.Profile.FirstName.Value
			}
			if profileResp.Profile.LastName != nil {
				lastName = profileResp.Profile.LastName.Value
			}
			if firstName != "" || lastName != "" {
				fullName = firstName + " " + lastName
			}
		}
		
		users = append(users, dto.UserResponse{
			ID:        authUser.Id,
			Email:     authUser.Email,
			FullName:  fullName,
			Role:      authUser.Role,
			CreatedAt: authUser.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		})
	}

	c.JSON(http.StatusOK, gin.H{
		"users": users,
		"total": len(users),
	})
}

// GetUser возвращает информацию о пользователе по ID
func (h *AdminUserRealHandler) GetUser(c *gin.Context) {
	userID := c.Param("id")

	// Получаем данные из auth-service
	authResp, err := h.authClient.GetUserInfo(c.Request.Context(), &authv1.GetUserInfoRequest{
		UserId: userID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "User not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	// Получаем профиль
	profileResp, err := h.userClient.GetProfile(c.Request.Context(), &userv1.GetProfileRequest{
		UserId: userID,
	})
	
	fullName := ""
	if err == nil && profileResp.Profile != nil {
		firstName := ""
		lastName := ""
		if profileResp.Profile.FirstName != nil {
			firstName = profileResp.Profile.FirstName.Value
		}
		if profileResp.Profile.LastName != nil {
			lastName = profileResp.Profile.LastName.Value
		}
		if firstName != "" || lastName != "" {
			fullName = firstName + " " + lastName
		}
	}

	user := dto.UserResponse{
		ID:        authResp.Id,
		Email:     authResp.Email,
		FullName:  fullName,
		Role:      authResp.Role,
		CreatedAt: authResp.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}

	c.JSON(http.StatusOK, user)
}

// UpdateUser обновляет информацию о пользователе
func (h *AdminUserRealHandler) UpdateUser(c *gin.Context) {
	userID := c.Param("id")

	var req dto.UpdateUserRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	// Обновляем роль в auth-service
	authResp, err := h.authClient.UpdateUserRole(c.Request.Context(), &authv1.UpdateUserRoleRequest{
		UserId: userID,
		Role:   req.Role,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "User not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	// Обновляем профиль в user-service
	// Разделяем FullName на FirstName и LastName
	parts := strings.SplitN(req.FullName, " ", 2)
	firstName := ""
	lastName := ""
	if len(parts) > 0 {
		firstName = parts[0]
	}
	if len(parts) > 1 {
		lastName = parts[1]
	}
	
	_, _ = h.userClient.UpdateProfile(c.Request.Context(), &userv1.UpdateProfileRequest{
		UserId:    userID,
		FirstName: &wrapperspb.StringValue{Value: firstName},
		LastName:  &wrapperspb.StringValue{Value: lastName},
	})

	user := dto.UserResponse{
		ID:        authResp.User.Id,
		Email:     authResp.User.Email,
		FullName:  req.FullName,
		Role:      authResp.User.Role,
		CreatedAt: authResp.User.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}

	c.JSON(http.StatusOK, user)
}

// DeleteUser удаляет пользователя
func (h *AdminUserRealHandler) DeleteUser(c *gin.Context) {
	userID := c.Param("id")

	_, err := h.authClient.DeleteUser(c.Request.Context(), &authv1.DeleteUserRequest{
		UserId: userID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "User not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "User deleted successfully",
	})
}
