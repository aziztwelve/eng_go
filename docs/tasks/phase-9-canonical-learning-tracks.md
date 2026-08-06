# Phase 9: Канонические учебные треки

**Статус:** In progress

## Цель

Сделать JSON-пакеты вида `A1_STUDY_TRACKS_01_10_COMBINED.json` единственным
каноническим форматом учебного контента. Один пакет содержит tracks, каждый
track - уроки, каждый урок - упорядоченные activities.

```text
Package -> Track -> Lesson -> Activity
```

Исходный JSON не должен терять поля при импорте: цели, language systems,
assessment, adaptive learning, analytics, rewards и activity payloads должны
сохраняться в базе либо быть доступны для будущего расширения.

## Первый срез

1. Добавить универсальный `steps.type = activity`.
2. Импортировать package JSON детерминированно: UUIDv5 от package/track/lesson/activity ID.
3. Создать 10 tracks, 100 standalone lessons и 1,000 activity steps из A1 Study package.
4. Сохранять source metadata трека и урока в JSONB, полный activity payload в `steps.content`, добавив `activity_type`.
5. Отображать activity в mobile через общий renderer и завершать её текущим `progress/steps/:id/complete`.
6. Не отправлять `activity` в step-validation-service: в первом срезе это display/complete flow.
7. Преобразовать все activity с существующим эквивалентом в текущие interactive
   step types; `activity` оставить только для AI roleplay и voice mission.

## Контракт activity content

```json
{
  "activity_id": "ACT_01",
  "activity_type": "warm_up",
  "instructions": "...",
  "estimated_seconds": 30,
  "content": {},
  "success_criteria": ["..."],
  "retry_logic": {},
  "ai_config": {}
}
```

Поддерживаемые исходные `activity_type`: `warm_up`, `context_story`,
`vocabulary_input`, `listening`, `repeat_after_me`, `pronunciation_drill`,
`controlled_speaking`, `guided_dialogue`, `ai_roleplay`, `real_world_mission`.

## Последующие срезы

1. Вынести track/lesson metadata из source JSON в явную API-модель.
2. Добавить server-side validation для assessment: `multiple_choice`, `ordering`, `recording`.
3. Подключить `audio_key` к TTS/media и recording к pronunciation scoring.
4. Связать `ai_roleplay` с AI conversation, rubric и completion state.
5. Использовать `completion_rules`, adaptive paths и mastery analytics при назначении и прогрессе трека.

## Критерии готовности первого среза

- Importer генерирует одинаковый SQL при повторном запуске.
- SQL содержит 10 tracks, 100 lessons, 1,000 steps и не теряет activity fields.
- Course migration принимает type `activity`.
- Mobile получает и отображает `activity`, не вызывая step-validation.
- Backend Go build/tests и mobile typecheck/lint проходят.
