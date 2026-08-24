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

## Продуктовый контракт урока

Каждый A1-урок длится **12 минут (720 секунд)**. Английскими остаются только
слова, фразы и реплики, которые ученик изучает. Весь UI, инструкции,
объяснения, подсказки и feedback - на русском.

| # | Этап | Бюджет | Действие ученика | Успех и поддержка |
|---|---|---:|---|---|
| 1 | Warm-up | 20 с | Выбирает знакомое слово по теме | Любой тематический ответ; без heart, после ошибки подсветить слово |
| 2 | Context story | 35 с | Слушает/читает сцену и выбирает цель | Верно выбрана mission; при ошибке показать mission и replay |
| 3 | Vocabulary | 70 с | Слушает 5 слов, видит перевод, соединяет пары | 4/5 пар; неверные пары остаются до исправления |
| 4 | Listening | 60 с | Слушает скрытый transcript, отвечает на 2 вопроса | Replay 0.75x после ошибки, затем transcript |
| 5 | Repeat after me | 70 с | Слушает и записывает 2-3 фразы | Intelligibility по каждой фразе; slow model на повторе |
| 6 | Pronunciation drill | 65 с | Записывает фразу с одним фонетическим фокусом | Word-level feedback и один конкретный hint |
| 7 | Controlled speaking | 80 с | Собирает frame и произносит 2-3 фразы | Корректная структура + понятная запись |
| 8 | Guided dialogue | 85 с | Проходит learner-role реплики с подсказкой, затем без текста | Все обязательные turns; hint не блокирует progress |
| 9 | AI roleplay | 110 с | Ведёт 4-8 ходов с AI и использует target phrases | Server rubric: task, target language, intelligibility |
| 10 | Real-world mission | 125 с | После 5-секундной подготовки записывает итоговую речь | Minimum duration, intent coverage, intelligibility; до 3 попыток |

### Правила реализации

1. Не подменять speaking/listening задания случайным `quiz` или `tap_words`.
2. `activity` получает собственный state и единый submit/feedback contract;
   кнопка Continue недоступна до допустимого результата или исчерпания retry.
3. Closed-form задания (`match_pairs`, `quiz`, `tap_words`, `fill_blank`) могут
   использовать текущий step-validation-service.
4. Voice/AI задания требуют lesson-scoped server result: activity ID, rubric,
   attempt, completion status и XP должны сохраняться на сервере.
5. `audio_key` и `image_key` перед отображением резолвятся в URL; до появления
   медиа client использует on-demand TTS как fallback.
6. Описательные `success_criteria` остаются для ученика, но importer должен
   создавать рядом структурированное `validation` с threshold, required phrases
   и retry policy.

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
