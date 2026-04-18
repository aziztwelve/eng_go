# Эндпоинт GET /api/v1/auth/me

## Описание

Возвращает полную информацию о текущем аутентифицированном пользователе, включая базовые данные из auth-service и профиль из user-service.

## Использование

### Требования
- Пользователь должен быть аутентифицирован
- В заголовке `Authorization` должен быть передан Bearer токен

### Запрос

```http
GET /api/v1/auth/me
Authorization: Bearer <access_token>
```

### Ответ

**Успешный ответ (200 OK):**

```json
{
  "id": "cd82592b-2a38-4530-ae66-a54b81e21e72",
  "email": "newuser@test.com",
  "username": "newuser",
  "role": "student",
  "created_at": "2026-04-15T10:34:50Z",
  "profile": {
    "first_name": "New",
    "last_name": "User",
    "avatar_url": "https://i.pravatar.cc/150?img=99",
    "bio": "Test user for /auth/me endpoint",
    "native_lang": "en",
    "target_lang": "es",
    "date_of_birth": null,
    "timezone": null
  }
}
```

**Если профиль не создан:**

```json
{
  "id": "...",
  "email": "...",
  "username": "...",
  "role": "...",
  "created_at": "...",
  "profile": {}
}
```

**Ошибка аутентификации (401 Unauthorized):**

```json
{
  "error": "Missing authorization header"
}
```

или

```json
{
  "error": "Invalid token"
}
```

## Поля ответа

### Базовые поля (из auth-service)
- `id` (string) - UUID пользователя
- `email` (string) - Email пользователя
- `username` (string) - Имя пользователя
- `role` (string) - Роль: "student", "instructor", "admin"
- `created_at` (string) - Дата создания аккаунта (ISO 8601)

### Поля профиля (из user-service)
- `profile.first_name` (string|null) - Имя
- `profile.last_name` (string|null) - Фамилия
- `profile.avatar_url` (string|null) - URL аватара
- `profile.bio` (string|null) - Биография
- `profile.native_lang` (string|null) - Родной язык
- `profile.target_lang` (string|null) - Изучаемый язык
- `profile.date_of_birth` (string|null) - Дата рождения
- `profile.timezone` (string|null) - Часовой пояс

## Примеры использования

### cURL

```bash
# 1. Получить токен
TOKEN=$(curl -s -X POST "http://localhost:8081/api/v1/auth/login" \
  -H "Content-Type: application/json" \
  -d '{"email": "student1@test.com", "password": "password123"}' \
  | jq -r '.access_token')

# 2. Получить информацию о текущем пользователе
curl -X GET "http://localhost:8081/api/v1/auth/me" \
  -H "Authorization: Bearer $TOKEN"
```

### JavaScript (fetch)

```javascript
const token = localStorage.getItem('access_token');

const response = await fetch('http://localhost:8081/api/v1/auth/me', {
  method: 'GET',
  headers: {
    'Authorization': `Bearer ${token}`
  }
});

const userData = await response.json();
console.log(userData);
```

### Python (requests)

```python
import requests

token = "your_access_token_here"

response = requests.get(
    'http://localhost:8081/api/v1/auth/me',
    headers={'Authorization': f'Bearer {token}'}
)

user_data = response.json()
print(user_data)
```

## Архитектура

Эндпоинт реализован в **Gateway** и агрегирует данные из двух микросервисов:

1. **auth-service** (gRPC `GetUserInfo`) - базовая информация о пользователе
2. **user-service** (gRPC `GetProfile`) - профиль пользователя

```
Client → Gateway → auth-service (GetUserInfo)
              ↓
              → user-service (GetProfile)
              ↓
         Объединение данных
              ↓
         JSON Response
```

## Реализованные компоненты

### 1. Proto файлы
- `shared/proto/auth/v1/auth.proto` - добавлен метод `GetUserInfo`

### 2. Auth Service
- `internal/api/auth/v1/get_user_info.go` - gRPC handler
- `internal/service/auth/get_user.go` - бизнес-логика
- `internal/repository/auth/queries.go` - GetByID (уже был)

### 3. Gateway
- `internal/dto/auth.go` - MeResponse, ProfileData
- `internal/client/auth.go` - GetUserInfo метод
- `internal/handler/auth.go` - GetMe handler
- `internal/app/app.go` - роут GET /auth/me

## Тестирование

Запустите тестовый скрипт:

```bash
./bin/test_auth_me.sh
```

Или используйте готовый curl запрос из примеров выше.

## Возможные улучшения

1. **Кэширование** - добавить Redis для кэширования данных пользователя
2. **Уровень и XP** - добавить данные о прогрессе из course-service
3. **Статистика** - количество пройденных курсов, уроков
4. **Настройки** - добавить пользовательские настройки
5. **Badges/Achievements** - значки и достижения пользователя
