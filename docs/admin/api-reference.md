# API Reference - Admin Endpoints

Все admin endpoints требуют аутентификации и роли `admin` или `instructor`.

## Base URL
```
http://your-domain/api/v1/admin
```

## Authentication

Все запросы должны включать JWT токен в заголовке:
```
Authorization: Bearer <access_token>
```

---

## User Management

### List Users
```http
GET /users
```

**Response:**
```json
{
  "users": [
    {
      "id": "uuid",
      "email": "user@example.com",
      "full_name": "John Doe",
      "role": "student",
      "created_at": "2026-04-18T10:46:13Z"
    }
  ],
  "total": 9
}
```

### Get User
```http
GET /users/:id
```

**Response:**
```json
{
  "id": "uuid",
  "email": "user@example.com",
  "full_name": "John Doe",
  "role": "student",
  "created_at": "2026-04-18T10:46:13Z"
}
```

### Update User
```http
PUT /users/:id
```

**Request Body:**
```json
{
  "full_name": "John Doe Updated",
  "role": "instructor"
}
```

**Response:**
```json
{
  "id": "uuid",
  "email": "user@example.com",
  "full_name": "John Doe Updated",
  "role": "instructor",
  "created_at": "2026-04-18T10:46:13Z"
}
```

### Delete User
```http
DELETE /users/:id
```

**Response:**
```json
{
  "message": "User deleted successfully"
}
```

---

## Course Management

### List Courses
```http
GET /courses
```

**Response:**
```json
{
  "courses": [
    {
      "id": "uuid",
      "title": "English for Beginners",
      "description": "Learn basic English",
      "level": "A1",
      "status": "published",
      "instructor_id": "uuid",
      "created_at": "2026-04-18T10:46:13Z"
    }
  ],
  "total": 13
}
```

### Get Course
```http
GET /courses/:id
```

**Response:**
```json
{
  "id": "uuid",
  "title": "English for Beginners",
  "description": "Learn basic English",
  "level": "A1",
  "status": "published",
  "instructor_id": "uuid",
  "modules": [
    {
      "id": "uuid",
      "title": "Module 1",
      "description": "Introduction",
      "order_index": 1,
      "lessons": [
        {
          "id": "uuid",
          "title": "Lesson 1",
          "description": "First lesson",
          "order_index": 1,
          "steps": [
            {
              "id": "uuid",
              "title": "Step 1",
              "type": "text",
              "content": "Welcome!",
              "order_index": 1
            }
          ]
        }
      ]
    }
  ],
  "created_at": "2026-04-18T10:46:13Z"
}
```

### Create Course
```http
POST /courses
```

**Request Body:**
```json
{
  "title": "New Course",
  "description": "Course description",
  "level": "A1",
  "status": "draft"
}
```

**Response:**
```json
{
  "id": "uuid",
  "title": "New Course",
  "description": "Course description",
  "level": "A1",
  "status": "draft",
  "instructor_id": "uuid",
  "created_at": "2026-04-19T05:48:00Z"
}
```

### Update Course
```http
PUT /courses/:id
```

**Request Body:**
```json
{
  "title": "Updated Course",
  "description": "Updated description",
  "level": "A2",
  "status": "published"
}
```

### Delete Course
```http
DELETE /courses/:id
```

**Response:**
```json
{
  "message": "Course deleted successfully"
}
```

### Publish Course
```http
PUT /courses/:id/publish
```

**Request Body:**
```json
{
  "is_published": true
}
```

---

## Module Management

### Create Module
```http
POST /courses/:courseId/modules
```

**Request Body:**
```json
{
  "title": "Module Title",
  "description": "Module description",
  "order_index": 1
}
```

### Update Module
```http
PUT /courses/modules/:moduleId
```

**Request Body:**
```json
{
  "title": "Updated Module",
  "description": "Updated description",
  "order_index": 2
}
```

### Delete Module
```http
DELETE /courses/modules/:moduleId
```

---

## Lesson Management

### Create Lesson
```http
POST /courses/modules/:moduleId/lessons
```

**Request Body:**
```json
{
  "title": "Lesson Title",
  "description": "Lesson description",
  "order_index": 1
}
```

### Update Lesson
```http
PUT /courses/lessons/:lessonId
```

**Request Body:**
```json
{
  "title": "Updated Lesson",
  "description": "Updated description",
  "order_index": 2
}
```

### Delete Lesson
```http
DELETE /courses/lessons/:lessonId
```

---

## Step Management

### Create Step
```http
POST /courses/lessons/:lessonId/steps
```

**Request Body (Text Step):**
```json
{
  "title": "Introduction",
  "type": "text",
  "content": "# Welcome\n\nThis is markdown content",
  "order_index": 1
}
```

**Request Body (Video Step):**
```json
{
  "title": "Watch Video",
  "type": "video",
  "content": "{\"video_id\":\"uuid\"}",
  "order_index": 2
}
```

**Request Body (Quiz Step):**
```json
{
  "title": "Quiz",
  "type": "quiz",
  "content": "{\"questions\":[{\"question\":\"What is 2+2?\",\"options\":[\"3\",\"4\",\"5\"],\"correct\":1}]}",
  "order_index": 3
}
```

### Update Step
```http
PUT /courses/steps/:stepId
```

### Delete Step
```http
DELETE /courses/steps/:stepId
```

---

## Video Management

### List Videos
```http
GET /videos
```

**Response:**
```json
{
  "videos": [
    {
      "id": "uuid",
      "title": "Video Title",
      "description": "Video description",
      "storage_key": "videos/file.mp4",
      "bucket_name": "videos",
      "content_type": "video/mp4",
      "size_bytes": 15728640,
      "duration_seconds": 180,
      "status": "active",
      "created_at": "2026-04-18T11:37:17Z"
    }
  ],
  "total": 8
}
```

### Get Video
```http
GET /videos/:id
```

### Upload Video
```http
POST /videos/upload
```

**Request:** multipart/form-data
- `file`: video file (max 100MB)
- `title`: video title
- `description`: video description

**Response:**
```json
{
  "id": "uuid",
  "title": "Uploaded Video",
  "description": "Description",
  "storage_key": "videos/uuid.mp4",
  "bucket_name": "videos",
  "content_type": "video/mp4",
  "size_bytes": 5242880,
  "duration_seconds": 0,
  "status": "active",
  "created_at": "2026-04-19T05:48:00Z"
}
```

### Delete Video
```http
DELETE /videos/:id
```

**Response:**
```json
{
  "message": "Video deleted successfully"
}
```

### Get Video Usage
```http
GET /videos/:id/usage
```

**Response:**
```json
{
  "video_id": "uuid",
  "courses": [],
  "lessons": []
}
```

---

## Error Responses

### 400 Bad Request
```json
{
  "error": "Invalid request body"
}
```

### 401 Unauthorized
```json
{
  "error": "Invalid authorization header format"
}
```

### 403 Forbidden
```json
{
  "error": "Admin access required"
}
```

### 404 Not Found
```json
{
  "error": "Resource not found"
}
```

### 500 Internal Server Error
```json
{
  "error": "Internal server error message"
}
```

---

## Rate Limiting

Currently no rate limiting implemented. Consider adding in production.

## CORS

CORS configured to allow requests from frontend domain.
