# 03. Публичный каталог курсов (Course Catalog)

## Описание

Публичная витрина курсов для потенциальных студентов. Позволяет просматривать доступные курсы, фильтровать, искать, читать описания и записываться на курсы.

## Цели

- Привлекать новых студентов
- Показывать преимущества курсов
- Упростить поиск нужного курса
- Увеличить конверсию в регистрацию
- SEO-оптимизация для поисковых систем

## Требования

### Функциональные

1. **Каталог курсов**
   - Список всех опубликованных курсов
   - Карточки с превью (обложка, название, описание, цена)
   - Пагинация
   - Сортировка (популярные, новые, по рейтингу)

2. **Фильтры**
   - По категории (Business, IT, Languages, etc.)
   - По уровню (A1-C2)
   - По цене (бесплатные, платные, диапазон)
   - По длительности
   - По языку курса

3. **Поиск**
   - Полнотекстовый поиск по названию и описанию
   - Автодополнение
   - История поиска

4. **Страница курса**
   - Подробное описание
   - Программа курса (модули и уроки)
   - Информация об инструкторе
   - Отзывы студентов
   - Рейтинг
   - Кнопка "Записаться" / "Купить"

5. **Категории**
   - Список категорий
   - Количество курсов в каждой
   - Иконки категорий

6. **Рекомендации**
   - Похожие курсы
   - Популярные курсы
   - Курсы того же инструктора

### Нефункциональные

- Быстрая загрузка каталога (< 1s)
- SEO-friendly URLs (/courses/english-for-beginners)
- Адаптивный дизайн (mobile-first)
- Open Graph для соцсетей

## Архитектура

### База данных

```sql
-- Категории курсов
CREATE TABLE course_categories (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL UNIQUE,
    slug VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    icon VARCHAR(50), -- emoji или icon name
    order_index INT DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Связь курсов и категорий (many-to-many)
CREATE TABLE course_category_relations (
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    category_id UUID NOT NULL REFERENCES course_categories(id) ON DELETE CASCADE,
    PRIMARY KEY (course_id, category_id)
);

-- Добавить поля в таблицу courses
ALTER TABLE courses ADD COLUMN IF NOT EXISTS slug VARCHAR(255) UNIQUE;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS cover_image_url TEXT;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS preview_video_url TEXT;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS price DECIMAL(10,2) DEFAULT 0.00;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS currency VARCHAR(3) DEFAULT 'USD';
ALTER TABLE courses ADD COLUMN IF NOT EXISTS duration_hours INT;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS student_count INT DEFAULT 0;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS rating DECIMAL(3,2) DEFAULT 0.00;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS review_count INT DEFAULT 0;
ALTER TABLE courses ADD COLUMN IF NOT EXISTS language VARCHAR(10) DEFAULT 'en';
ALTER TABLE courses ADD COLUMN IF NOT EXISTS what_you_will_learn TEXT[]; -- массив строк
ALTER TABLE courses ADD COLUMN IF NOT EXISTS requirements TEXT[];
ALTER TABLE courses ADD COLUMN IF NOT EXISTS target_audience TEXT[];

-- Записи на курсы
CREATE TABLE course_enrollments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    enrolled_at TIMESTAMP NOT NULL DEFAULT NOW(),
    expires_at TIMESTAMP, -- для подписок
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(course_id, user_id)
);

-- Индексы
CREATE INDEX idx_courses_slug ON courses(slug);
CREATE INDEX idx_courses_published ON courses(is_published);
CREATE INDEX idx_courses_price ON courses(price);
CREATE INDEX idx_courses_rating ON courses(rating);
CREATE INDEX idx_course_categories_slug ON course_categories(slug);
CREATE INDEX idx_course_enrollments_user ON course_enrollments(user_id);
CREATE INDEX idx_course_enrollments_course ON course_enrollments(course_id);

-- Полнотекстовый поиск
CREATE INDEX idx_courses_search ON courses USING gin(to_tsvector('english', title || ' ' || description));
```

### Сервисы

**Course Service** (расширение существующего)
- Добавить методы для публичного каталога
- Фильтрация и поиск
- Управление категориями
- Записи на курсы

**Catalog Service** (опционально, отдельный read-only сервис)
- Кэширование популярных запросов
- Агрегация данных для каталога
- Быстрый поиск

## План реализации

### Этап 1: База данных (1 день)
1. Создать миграции для категорий
2. Добавить поля в courses
3. Создать seed данные (категории, обложки)
4. Создать индексы для поиска

### Этап 2: Backend - Категории (1 день)
1. CRUD для категорий (admin)
2. Связь курсов с категориями
3. API для получения категорий

### Этап 3: Backend - Каталог (2 дня)
1. Эндпоинт списка курсов с фильтрами
2. Полнотекстовый поиск
3. Эндпоинт страницы курса
4. Эндпоинт записи на курс

### Этап 4: Frontend - Главная страница (2 дня)
1. Hero секция
2. Популярные курсы
3. Категории
4. Поиск

### Этап 5: Frontend - Каталог (3 дня)
1. Страница каталога с фильтрами
2. Карточки курсов
3. Пагинация
4. Сортировка

### Этап 6: Frontend - Страница курса (3 дня)
1. Дизайн страницы
2. Программа курса (аккордеон)
3. Информация об инструкторе
4. Кнопка записи
5. Похожие курсы

### Этап 7: SEO оптимизация (1 день)
1. Meta tags
2. Open Graph
3. Sitemap
4. Robots.txt

### Этап 8: Тестирование (1 день)
1. Unit тесты
2. Integration тесты
3. E2E тесты

**Общая оценка: 14 дней**

## API спецификация

### HTTP API (Gateway)

```
# Публичные эндпоинты (без авторизации)
GET    /api/v1/catalog/courses
GET    /api/v1/catalog/courses/:slug
GET    /api/v1/catalog/categories
GET    /api/v1/catalog/search

# Требуют авторизации
POST   /api/v1/catalog/courses/:courseId/enroll

# Admin
POST   /api/v1/admin/categories
PUT    /api/v1/admin/categories/:id
DELETE /api/v1/admin/categories/:id
POST   /api/v1/admin/courses/:id/categories
```

### Примеры запросов

**Получить каталог курсов**
```bash
GET /api/v1/catalog/courses?page=1&limit=12&category=languages&level=B1&price_min=0&price_max=100&sort=popular

Response:
{
  "courses": [
    {
      "id": "c1",
      "slug": "english-for-beginners",
      "title": "English for Beginners",
      "description": "Learn English from scratch",
      "cover_image_url": "https://...",
      "level": "A1",
      "price": 49.99,
      "currency": "USD",
      "duration_hours": 40,
      "student_count": 1250,
      "rating": 4.8,
      "review_count": 320,
      "instructor": {
        "id": "i1",
        "full_name": "John Doe",
        "avatar_url": "https://..."
      },
      "categories": ["Languages", "English"]
    }
  ],
  "pagination": {
    "total": 45,
    "page": 1,
    "limit": 12,
    "total_pages": 4
  }
}
```

**Получить страницу курса**
```bash
GET /api/v1/catalog/courses/english-for-beginners

Response:
{
  "id": "c1",
  "slug": "english-for-beginners",
  "title": "English for Beginners",
  "description": "Comprehensive English course for absolute beginners...",
  "cover_image_url": "https://...",
  "preview_video_url": "https://...",
  "level": "A1",
  "price": 49.99,
  "currency": "USD",
  "duration_hours": 40,
  "student_count": 1250,
  "rating": 4.8,
  "review_count": 320,
  "language": "en",
  "what_you_will_learn": [
    "Basic grammar and vocabulary",
    "Simple conversations",
    "Reading and writing skills"
  ],
  "requirements": [
    "No prior knowledge required",
    "Computer with internet"
  ],
  "target_audience": [
    "Complete beginners",
    "People who want to learn English"
  ],
  "instructor": {
    "id": "i1",
    "full_name": "John Doe",
    "bio": "Experienced English teacher...",
    "avatar_url": "https://...",
    "course_count": 5,
    "student_count": 5000
  },
  "modules": [
    {
      "id": "m1",
      "title": "Introduction",
      "order_index": 1,
      "lessons": [
        {
          "id": "l1",
          "title": "Welcome",
          "duration_seconds": 300,
          "is_preview": true
        }
      ]
    }
  ],
  "categories": ["Languages", "English"],
  "is_enrolled": false
}
```

**Записаться на курс**
```bash
POST /api/v1/catalog/courses/c1/enroll
Authorization: Bearer <token>

Response:
{
  "enrollment_id": "e1",
  "course_id": "c1",
  "enrolled_at": "2026-04-19T15:00:00Z",
  "expires_at": null
}
```

**Поиск курсов**
```bash
GET /api/v1/catalog/search?q=english&limit=10

Response:
{
  "results": [
    {
      "id": "c1",
      "slug": "english-for-beginners",
      "title": "English for Beginners",
      "description": "Learn English from scratch",
      "cover_image_url": "https://...",
      "price": 49.99,
      "rating": 4.8
    }
  ],
  "total": 15
}
```

## UI/UX

### Главная страница
- **Hero секция**
  - Заголовок: "Learn Anything, Anytime"
  - Поиск курсов
  - CTA кнопка "Browse Courses"
  
- **Популярные курсы**
  - Карусель с топ-10 курсами
  - Карточки с обложкой, названием, рейтингом, ценой

- **Категории**
  - Сетка 3x3 с иконками
  - Название и количество курсов

- **Статистика**
  - Количество студентов
  - Количество курсов
  - Количество инструкторов

### Страница каталога
- **Фильтры (левая колонка)**
  - Категории (чекбоксы)
  - Уровень (чекбоксы)
  - Цена (слайдер)
  - Длительность (слайдер)
  - Язык (dropdown)

- **Список курсов (правая колонка)**
  - Сортировка (dropdown)
  - Сетка карточек 3 колонки
  - Пагинация внизу

- **Карточка курса**
  - Обложка
  - Название
  - Краткое описание (2 строки)
  - Инструктор (аватар + имя)
  - Рейтинг (звезды + количество отзывов)
  - Цена
  - Кнопка "Learn More"

### Страница курса
- **Hero секция**
  - Обложка / превью видео
  - Название
  - Краткое описание
  - Рейтинг
  - Количество студентов
  - Цена
  - Кнопка "Enroll Now"

- **Табы**
  - Overview (что вы изучите, требования, для кого)
  - Curriculum (программа курса)
  - Instructor (информация об инструкторе)
  - Reviews (отзывы студентов)

- **Sidebar**
  - Превью видео
  - Цена
  - Кнопка "Enroll Now"
  - Что включено (40 часов видео, сертификат, etc.)
  - Поделиться (соцсети)

- **Похожие курсы**
  - Карусель внизу страницы

## Тестирование

### Unit тесты
- Фильтрация курсов
- Полнотекстовый поиск
- Генерация slug из названия

### Integration тесты
- Получение каталога с фильтрами
- Поиск курсов
- Запись на курс
- Проверка дубликатов записи

### E2E тесты
1. Пользователь открывает главную
2. Видит популярные курсы
3. Кликает на категорию
4. Применяет фильтры
5. Открывает страницу курса
6. Записывается на курс

## Зависимости

- ✅ Аутентификация (JWT)
- ✅ Курсы (courses, modules, lessons)
- ✅ Пользователи (instructors)
- 🔄 Рейтинги и отзывы (будет в спеке 07)

## Технологии

- **Backend**: Go, PostgreSQL, Full-Text Search
- **Frontend**: React, TypeScript, Next.js (SSR для SEO)
- **Images**: MinIO или CDN
- **Cache**: Redis (для популярных запросов)

## SEO оптимизация

### Meta tags
```html
<title>English for Beginners - Learn English Online | Platform Name</title>
<meta name="description" content="Learn English from scratch with our comprehensive course...">
<meta name="keywords" content="english, learn english, english course, beginners">
```

### Open Graph
```html
<meta property="og:title" content="English for Beginners">
<meta property="og:description" content="Learn English from scratch...">
<meta property="og:image" content="https://.../cover.jpg">
<meta property="og:url" content="https://.../courses/english-for-beginners">
```

### Structured Data (JSON-LD)
```json
{
  "@context": "https://schema.org",
  "@type": "Course",
  "name": "English for Beginners",
  "description": "Learn English from scratch...",
  "provider": {
    "@type": "Organization",
    "name": "Platform Name"
  },
  "offers": {
    "@type": "Offer",
    "price": "49.99",
    "priceCurrency": "USD"
  }
}
```

## Метрики успеха

- Конверсия посетителей в регистрацию (> 5%)
- Конверсия просмотров курса в запись (> 10%)
- Среднее время на странице курса (> 2 мин)
- Bounce rate (< 50%)
- Органический трафик из поиска

## Будущие улучшения

- Wishlist (избранные курсы)
- Сравнение курсов
- Подарочные сертификаты
- Корпоративные пакеты
- Партнерская программа
- Мультиязычность интерфейса
- Персонализированные рекомендации (ML)
