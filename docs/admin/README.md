# Admin Panel Documentation

Документация административной панели для платформы изучения английского языка.

## Содержание

- [Overview](./overview.md) - Общий обзор админ панели
- [Authentication](./authentication.md) - Аутентификация и авторизация
- [User Management](./user-management.md) - Управление пользователями
- [Course Management](./course-management.md) - Управление курсами
- [Video Management](./video-management.md) - Управление видео
- [API Reference](./api-reference.md) - Справочник API endpoints

## Быстрый старт

1. Войдите в админ панель: `http://your-domain/admin/login`
2. Используйте учетные данные администратора
3. Доступ к функциям управления через боковое меню

## Архитектура

Admin панель построена на микросервисной архитектуре:

- **Gateway** - точка входа, маршрутизация запросов
- **Auth Service** - управление пользователями и ролями
- **User Service** - профили пользователей
- **Course Service** - курсы, модули, уроки, шаги
- **Video Service** - загрузка и хранение видео

## Технологии

- **Backend**: Go, gRPC, PostgreSQL, MinIO
- **Frontend**: Next.js 15, React, TypeScript, Tailwind CSS
- **Infrastructure**: Docker, Task (Taskfile)

## Безопасность

- JWT токены для аутентификации
- Role-based access control (RBAC)
- Middleware защита admin endpoints
- Валидация на уровне Gateway и сервисов
