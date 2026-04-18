# Admin API Documentation

Admin панель для управления платформой E-Learning.

## Аутентификация

Admin endpoints требуют:
1. Валидный JWT токен в заголовке `Authorization: Bearer <token>`
2. Роль `admin` в токене

### Получить admin токен

```bash
POST /api/v1/auth/login
Content-Type: application/json

{
  "email": "admin@test.com",
  "password": "password123"
}
```

**Response:**
```json
{
  "access_token": "eyJhbGc...",
  "refresh_token": "eyJhbGc...",
  "expires_at": "2026-04-18T16:00:00Z"
}
```

Токен содержит `role: "admin"` в payload.

## Endpoints

### Admin Info

#### GET /api/v1/admin/me

Получить информацию о текущем admin пользователе.

**Headers:**
```
Authorization: Bearer <admin_token>
```

**Response:**
```json
{
  "user_id": "11111111-1111-1111-1111-111111111111",
  "role": "admin"
}
```

---

## User Management

### List Users

#### GET /api/v1/admin/users

Получить список всех пользователей платформы.

**Headers:**
```
Authorization: Bearer <admin_token>
```

**Response:**
```json
{
  "users": [
    {
      "id": "11111111-1111-1111-1111-111111111111",
      "email": "admin@test.com",
      "full_name": "Admin User",
      "role": "admin",
      "created_at": "2026-01-15T00:00:00Z",
      "updated_at": "2026-01-15T00:00:00Z"
    },
    {
      "id": "22222222-2222-2222-2222-222222222222",
      "email": "instructor1@test.com",
      "full_name": "John Instructor",
      "role": "instructor",
      "created_at": "2026-02-20T00:00:00Z",
      "updated_at": "2026-02-20T00:00:00Z"
    }
  ],
  "total": 2
}
```

**Example:**
```bash
curl -H "Authorization: Bearer $ADMIN_TOKEN" \
  http://localhost:8080/api/v1/admin/users
```

---

### Get User

#### GET /api/v1/admin/users/:id

Получить информацию о конкретном пользователе.

**Headers:**
```
Authorization: Bearer <admin_token>
```

**Path Parameters:**
- `id` (string, required) - User ID

**Response:**
```json
{
  "id": "33333333-3333-3333-3333-333333333333",
  "email": "student1@test.com",
  "full_name": "Alice Student",
  "role": "student",
  "created_at": "2026-03-10T00:00:00Z",
  "updated_at": "2026-03-10T00:00:00Z"
}
```

**Example:**
```bash
curl -H "Authorization: Bearer $ADMIN_TOKEN" \
  http://localhost:8080/api/v1/admin/users/33333333-3333-3333-3333-333333333333
```

---

### Update User

#### PUT /api/v1/admin/users/:id

Обновить информацию о пользователе.

**Headers:**
```
Authorization: Bearer <admin_token>
Content-Type: application/json
```

**Path Parameters:**
- `id` (string, required) - User ID

**Request Body:**
```json
{
  "full_name": "Updated Name",
  "role": "instructor"
}
```

**Fields:**
- `full_name` (string, required) - Полное имя пользователя
- `role` (string, required) - Роль: `student`, `instructor`, или `admin`

**Response:**
```json
{
  "id": "33333333-3333-3333-3333-333333333333",
  "email": "student1@test.com",
  "full_name": "Updated Name",
  "role": "instructor",
  "created_at": "2026-03-10T00:00:00Z",
  "updated_at": "2026-04-18T15:30:00Z"
}
```

**Example:**
```bash
curl -X PUT \
  -H "Authorization: Bearer $ADMIN_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"full_name":"New Name","role":"instructor"}' \
  http://localhost:8080/api/v1/admin/users/33333333-3333-3333-3333-333333333333
```

---

### Delete User

#### DELETE /api/v1/admin/users/:id

Удалить пользователя из системы.

**Headers:**
```
Authorization: Bearer <admin_token>
```

**Path Parameters:**
- `id` (string, required) - User ID

**Response:**
```json
{
  "message": "User deleted successfully"
}
```

**Example:**
```bash
curl -X DELETE \
  -H "Authorization: Bearer $ADMIN_TOKEN" \
  http://localhost:8080/api/v1/admin/users/33333333-3333-3333-3333-333333333333
```

---

## Error Responses

### 401 Unauthorized

Отсутствует или невалидный токен.

```json
{
  "error": "Missing authorization header"
}
```

```json
{
  "error": "Invalid token"
}
```

### 403 Forbidden

Пользователь не имеет роли admin.

```json
{
  "error": "Access denied. Admin role required"
}
```

### 404 Not Found

Пользователь не найден.

```json
{
  "error": "User not found"
}
```

### 400 Bad Request

Невалидные данные в запросе.

```json
{
  "error": "Invalid request body"
}
```

---

## Middleware Chain

Admin endpoints защищены двумя middleware:

1. **AuthMiddleware** - проверяет JWT токен
2. **AdminOnlyMiddleware** - проверяет роль `admin`

```
Request → AuthMiddleware → AdminOnlyMiddleware → Handler
```

---

## Security

### Role-Based Access Control (RBAC)

Система использует три роли:
- `student` - обычный пользователь
- `instructor` - преподаватель
- `admin` - администратор

Только пользователи с ролью `admin` могут получить доступ к `/api/v1/admin/*` endpoints.

### Token Validation

JWT токен проверяется через Auth Service:
1. Gateway извлекает токен из заголовка
2. Отправляет запрос в Auth Service для валидации
3. Auth Service проверяет подпись и срок действия
4. Возвращает `user_id` и `role`
5. Gateway добавляет их в контекст запроса

### Audit Logging

Все admin действия логируются в Gateway:
```
INFO: HTTP request | method: PUT | path: /api/v1/admin/users/123 | status: 200
```

---

## Testing

### Get Admin Token

```bash
# Login as admin
ADMIN_TOKEN=$(curl -s -X POST http://localhost:8080/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"admin@test.com","password":"password123"}' \
  | grep -o '"access_token":"[^"]*"' | cut -d'"' -f4)

echo $ADMIN_TOKEN
```

### Test Admin Access

```bash
# Get admin info
curl -H "Authorization: Bearer $ADMIN_TOKEN" \
  http://localhost:8080/api/v1/admin/me

# List users
curl -H "Authorization: Bearer $ADMIN_TOKEN" \
  http://localhost:8080/api/v1/admin/users
```

### Test Non-Admin Access

```bash
# Login as student
STUDENT_TOKEN=$(curl -s -X POST http://localhost:8080/api/v1/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"student1@test.com","password":"password123"}' \
  | grep -o '"access_token":"[^"]*"' | cut -d'"' -f4)

# Try to access admin endpoint (should fail with 403)
curl -H "Authorization: Bearer $STUDENT_TOKEN" \
  http://localhost:8080/api/v1/admin/users
```

Expected response:
```json
{
  "error": "Access denied. Admin role required"
}
```

---

## Implementation Status

### ✅ Implemented

- [x] Admin authentication (role-based)
- [x] Admin middleware (AuthMiddleware + AdminOnlyMiddleware)
- [x] GET /admin/me
- [x] GET /admin/users (list)
- [x] GET /admin/users/:id (get)
- [x] PUT /admin/users/:id (update)
- [x] DELETE /admin/users/:id (delete)

### 🚧 Coming Soon

- [ ] POST /admin/users (create user)
- [ ] GET /admin/courses (course management)
- [ ] GET /admin/videos (video management)
- [ ] GET /admin/analytics (analytics dashboard)
- [ ] Pagination for list endpoints
- [ ] Filtering and search
- [ ] Bulk operations

---

## Frontend Integration

Admin панель доступна по адресу: `http://localhost:3000/admin`

### Login Flow

1. User navigates to `/admin`
2. Middleware redirects to `/admin/login`
3. User enters admin credentials
4. Frontend validates token has `role: "admin"`
5. Token stored in cookies
6. Redirect to `/admin` dashboard

### API Client Example

```typescript
// lib/admin-api.ts
const API_BASE_URL = 'http://localhost:8080/api/v1';

async function listUsers() {
  const token = getCookie('auth_token');
  
  const response = await fetch(`${API_BASE_URL}/admin/users`, {
    headers: {
      'Authorization': `Bearer ${token}`,
    },
  });
  
  return response.json();
}
```

---

## Related Documentation

- [Gateway Service](./services/gateway.md)
- [Auth Service](./services/auth-service.md)
- [User Service](./services/user-service.md)
- [Main README](./README.md)
