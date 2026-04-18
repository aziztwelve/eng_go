# Admin API Documentation

## Overview
Admin API provides endpoints for managing users, courses, and videos. All endpoints require admin authentication.

## Authentication
All admin endpoints require:
- `Authorization: Bearer <token>` header
- User must have `admin` role

## Endpoints

### Admin Info
**GET** `/api/v1/admin/me`

Returns current admin user information.

**Response:**
```json
{
  "id": "uuid",
  "email": "admin@example.com",
  "role": "admin",
  "created_at": "2026-04-18T10:00:00Z"
}
```

---

## User Management

### List Users
**GET** `/api/v1/admin/users`

Returns list of all users.

**Response:**
```json
{
  "users": [
    {
      "id": "uuid",
      "email": "user@example.com",
      "role": "student",
      "created_at": "2026-04-18T10:00:00Z"
    }
  ],
  "total": 10
}
```

### Get User
**GET** `/api/v1/admin/users/:id`

Returns user details by ID.

### Update User
**PUT** `/api/v1/admin/users/:id`

Updates user information.

**Request:**
```json
{
  "email": "newemail@example.com",
  "role": "instructor"
}
```

### Delete User
**DELETE** `/api/v1/admin/users/:id`

Deletes user by ID.

---

## Course Management

### List Courses
**GET** `/api/v1/admin/courses`

Returns list of all courses (including unpublished).

**Query Parameters:**
- `limit` (optional): Number of courses per page (default: 100)
- `offset` (optional): Pagination offset (default: 0)

**Response:**
```json
{
  "courses": [
    {
      "id": "uuid",
      "title": "English A1",
      "description": "Beginner English course",
      "level": "A1",
      "language": "en",
      "status": "published",
      "created_at": "2026-04-18T10:00:00Z",
      "updated_at": "2026-04-18T10:00:00Z"
    }
  ],
  "total": 11
}
```

**Note:** Currently shows only published courses (5 out of 11). Fix pending to show all courses including drafts.

### Get Course
**GET** `/api/v1/admin/courses/:id`

Returns course details with modules, lessons, and steps.

### Create Course
**POST** `/api/v1/admin/courses`

Creates a new course.

**Request:**
```json
{
  "title": "English A1",
  "description": "Beginner English course",
  "level": "A1",
  "language": "en"
}
```

**Levels:** A1, A2, B1, B2, C1, C2 (CEFR standard)

**Response:**
```json
{
  "id": "uuid",
  "title": "English A1",
  "description": "Beginner English course",
  "level": "A1",
  "language": "en",
  "status": "draft",
  "created_at": "2026-04-18T10:00:00Z",
  "updated_at": "2026-04-18T10:00:00Z"
}
```

### Update Course
**PUT** `/api/v1/admin/courses/:id`

Updates course information.

### Delete Course
**DELETE** `/api/v1/admin/courses/:id`

Deletes course by ID.

### Publish Course
**PUT** `/api/v1/admin/courses/:id/publish`

Publishes or unpublishes a course.

**Request:**
```json
{
  "is_published": true
}
```

---

## Video Management

### List Videos
**GET** `/api/v1/admin/videos`

Returns list of all videos.

**Response:**
```json
{
  "videos": [
    {
      "id": "uuid",
      "title": "Lesson 1",
      "duration": 300,
      "size": 10485760,
      "url": "https://minio.example.com/videos/...",
      "created_at": "2026-04-18T10:00:00Z"
    }
  ],
  "total": 5
}
```

### Get Video
**GET** `/api/v1/admin/videos/:id`

Returns video details by ID.

### Upload Video
**POST** `/api/v1/admin/videos/upload`

Uploads a new video file.

**Request:** `multipart/form-data`
- `file`: Video file (required)
- `title`: Video title (required)

**Response:**
```json
{
  "id": "uuid",
  "title": "Lesson 1",
  "duration": 300,
  "size": 10485760,
  "url": "https://minio.example.com/videos/...",
  "created_at": "2026-04-18T10:00:00Z"
}
```

**Implementation:**
- Gateway accepts multipart/form-data
- Streams file to video-service via gRPC (64KB chunks)
- Video-service uploads to MinIO and saves metadata to PostgreSQL

### Update Video
**PUT** `/api/v1/admin/videos/:id`

Updates video metadata.

### Delete Video
**DELETE** `/api/v1/admin/videos/:id`

Deletes video by ID.

### Get Video Usage
**GET** `/api/v1/admin/videos/:id/usage`

Returns list of courses/lessons using this video.

---

## Error Responses

All endpoints return standard error format:

```json
{
  "error": "Error message"
}
```

**Status Codes:**
- `200` - Success
- `400` - Bad Request
- `401` - Unauthorized
- `403` - Forbidden (not admin)
- `404` - Not Found
- `500` - Internal Server Error

---

## Notes

### Course Levels
Use CEFR standard levels:
- **A1** - Beginner
- **A2** - Elementary
- **B1** - Intermediate
- **B2** - Upper Intermediate
- **C1** - Advanced
- **C2** - Proficiency

### Course Status
- **draft** - Not visible to students
- **published** - Visible to students

### Known Issues
- List Courses endpoint currently filters by `is_published = true`, showing only 5 published courses instead of all 11. Fix pending to add `ListAllCourses` method for admin panel.
