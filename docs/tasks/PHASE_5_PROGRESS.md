# Phase 5 — Progress Log

> Живой статус Phase 5 (AI-интеграция: chat, roleplay, explain,
> writing assessment, pronunciation, tutor, content generation).
> См. [phase-5-ai-integration.md](./phase-5-ai-integration.md),
> [PHASE_4_PROGRESS.md](./PHASE_4_PROGRESS.md).

**Дата старта:** 2026-05-15
**Дата последнего обновления:** 2026-05-15
**Статус:** 🟢 **Backend MVP done (mock provider) + Web frontend done. Mobile + real provider — следующая итерация.**

---

## 🎯 Согласованный scope (2026-05-15)

| Решение | Значение |
|---------|----------|
| **Архитектура** | Новый микросервис `ai-service` (порт `:50063`, schema `ai`, role `ai_user`), по аналогии с `srs-service` / `social-service`. Отдельный домен → изоляция AI-зависимостей, rate-limit и cost-tracking в одном месте. |
| **Порт `:50063`** | В phase-5-ai-integration.md указан `:50059`, но он занят `step-validation-service`. Свободный следующий после `notifications:50062` — `:50063`. |
| **Параллельно с Phase 4** | Phase 4 (social/leagues) ещё in-progress (scaffold). `ai-service` от него не зависит → разрабатываются параллельно. |
| **Provider** | На MVP — **mock-provider** с реалистичными ответами. Provider abstraction (`internal/providers/AIProvider`) — чтобы потом подменить на OpenAI/Anthropic без правки business-logic. Реальная интеграция с ключами — отдельная итерация (5.X-real). |
| **MVP scope (эта фаза)** | **Backend full** (scaffold + 7 фич) + **gateway routes**. Frontend (web + mobile) — отдельная итерация (5.frontend). Voice/audio (Pronunciation, TTS reply) — на mock в MVP, реальный Whisper + MinIO upload — позже. |
| **Quota system** | Per-day counters в Postgres (`ai_usage_quota`). Free: 5 chats / 2 min voice / 3 writing; Premium: unlimited chats / 60 min voice / unlimited writing. На MVP `is_premium` берём из `user-service` через RPC (если нет — TODO 5.X). На MVP-MVP захардкодим `false` и используем free-лимиты. |
| **Cost tracking** | На каждый call провайдер возвращает `tokens_used` и `cost_usd` (mock тоже). Сохраняем в `ai_messages` и aggregate `ai_conversations.total_tokens / cost_usd`. |
| **Caching** | Explanations кэшируем в `ai_explanations` (по `(step_id, md5(incorrect_answer))`). Conversation history — full read из `ai_messages` (last 10). Без Redis — Postgres достаточно. |
| **Failure mode** | Все AI-вызовы non-fatal в внешних хуках (например, gamification/step-validation не зависят от ai). Внутри ai-service — обычные gRPC-ошибки. Quota exceeded → `codes.ResourceExhausted`. Provider down → `codes.Unavailable`. |
| **Roleplay** | Сценарии — статика в коде (`internal/scenarios/scenarios.go`), не в БД. На MVP 5 сценариев (restaurant, airport, work, hotel, doctor). Изменение → миграция на БД позже. |
| **Tutor** | По сути — `ai_conversations` со scenario `tutor_qa`. Отдельной таблицы не делаем. |
| **Content generation (admin)** | Включаем в MVP — простой RPC `GenerateExercise(type, vocabulary, level)` → JSON. Без сохранения в БД (вызывающий сам решит, что делать с результатом). |

---

## 🗺️ План работы

### Инфраструктура и proto
- [x] **5.1** `shared/proto/ai/v1/ai.proto` — `AIService` RPCs (см. ниже) + `task proto:gen`.
- [x] **5.2** Migrations:
  - `000001_create_ai_conversations.{up,down}.sql`
  - `000002_create_ai_messages.{up,down}.sql`
  - `000003_create_ai_explanations.{up,down}.sql`
  - `000004_create_ai_writing_assessments.{up,down}.sql`
  - `000005_create_ai_pronunciation_attempts.{up,down}.sql`
  - `000006_create_ai_usage_quota.{up,down}.sql`
- [x] **5.3** `deploy/compose/core/init-db.sql` — `CREATE SCHEMA ai`, role `ai_user` с GRANT'ами.

### ai-service backend
- [x] **5.4** Scaffold: `services/ai-service/{cmd, internal/{app, config, model, repository/postgres, service, api, converter, providers, prompts, scenarios, client/user}}` + `go.mod` + `go.work` updated.
- [x] **5.5** `model/`:
  - `conversation.go` (Conversation, Message, MessageRole)
  - `explanation.go`
  - `writing.go` (WritingAssessment + Feedback structs)
  - `pronunciation.go` (PronunciationAttempt + WordScore)
  - `quota.go` (UsageQuota, Plan)
- [x] **5.6** Postgres repos:
  - `ConversationRepo` (Create, GetByID, ListByUser, UpdateStats, Delete)
  - `MessageRepo` (Create, ListByConversation, GetLastN)
  - `ExplanationRepo` (Get(stepID, md5answer), Create)
  - `WritingRepo` (Create, ListByUser)
  - `PronunciationRepo` (Create, ListByUser)
  - `QuotaRepo` (Get(userID, date), Increment(userID, date, field, delta))
- [x] **5.7** `providers/ai_provider.go` — interface (`Chat`, `Complete`, `Transcribe`, `SynthesizeTTS`, `Embed`) + типы `Message`, `ChatOptions`, `ChatResponse`, `TranscribeResponse`. `cost_usd` рассчитывается по prov-specific тарифной таблице (см. phase-5 doc, секция «Стоимость»).
- [x] **5.8** `providers/mock_provider.go` — realistic stub:
  - `Chat`: эхо-ответ + `corrections` если в input есть «typical mistake» triggers, `translation` — простой словарь.
  - `Transcribe`: возвращает target_text с small alteration (для теста pronunciation accuracy).
  - `SynthesizeTTS`: возвращает `audio_url=https://example.com/mock-tts/{md5}.mp3` без реальной записи.
  - Все возвращают realistic `tokens_used` и `cost_usd`.
- [x] **5.9** `prompts/` — system-prompt builders:
  - `prompts/conversation.go` — builder из user_level / target_lang / native_lang / scenario.
  - `prompts/explain.go`
  - `prompts/writing.go`
  - `prompts/tutor.go`
  - JSON-output schema per prompt (как в phase-5 doc «System prompt пример»).
- [x] **5.10** `scenarios/` — 5 roleplay сценариев as Go-структуры (`Scenario{ID, Title, Description, AILevel, Language, AIRole, Context, InitialMessage, VocabFocus, SuccessCriteria}`) + `ListAll() []Scenario`, `GetByID(id) (*Scenario, bool)`.
- [x] **5.11** Service слой:
  - `5.11.a ConversationService` — `Start(userID, scenario, lang)`, `SendMessage(convID, content, wantAudio)` (history → prompt → provider.Chat → save → maybe TTS), `List(userID, limit, offset)`, `Get(convID) → conv + messages`, `Delete(convID)`.
  - `5.11.b ExplainService` — `Explain(userID, stepID, incorrect, correct, nativeLang)` с cache lookup → провайдер → cache write.
  - `5.11.c WritingService` — `Assess(userID, prompt, userText, level)` → JSON-prompt → save.
  - `5.11.d PronunciationService` — `Check(userID, stepID, targetText, audioBytes, language)` → upload audio (на MVP — mock URL), `provider.Transcribe`, phonetic similarity (simple Levenshtein-on-words), word-level alignment, save.
  - `5.11.e TutorService` — `Ask(userID, question, lang)` — однократный chat, без conversation persistence.
  - `5.11.f ContentGenService` — `GenerateExercise(type, vocab, level)` — admin-only, без сохранения.
  - `5.11.g QuotaService` — `Check(userID, kind)` (chat/voice/writing) → ошибка `codes.ResourceExhausted` если Free и лимит достигнут; `Increment(userID, kind, delta)` после успеха.
- [x] **5.12** `client/user/{client,grpc,noop}.go` — `GetUserProfile(userID)` для `user_level`, `native_language`, `is_premium`.
- [x] **5.13** gRPC API (`internal/api/v1/api.go`) + конвертеры. RPCs:
  - **Conversations:** `StartConversation`, `SendMessage`, `ListConversations`, `GetConversation`, `DeleteConversation`, `ListScenarios`
  - **Explain:** `ExplainMistake`
  - **Writing:** `AssessWriting`
  - **Pronunciation:** `CheckPronunciation` (audio через `bytes` поле — на MVP без MinIO)
  - **Tutor:** `AskTutor`
  - **Content gen (admin):** `GenerateExercise`
  - **Quota:** `GetQuotaStatus(userID)` (для UI badge «3/5 chats remaining»)
- [x] **5.14** Unit-тесты:
  - `providers/mock_provider_test.go` — детерминизм mock-ответов
  - `service/conversation_service_test.go` — history truncation, prompt assembly
  - `service/explain_service_test.go` — cache hit/miss path
  - `service/quota_service_test.go` — free/premium boundaries
  - `service/pronunciation_service_test.go` — phonetic similarity на 5 примерах

### Gateway
- [x] **5.15** `internal/client/ai.go` — wrapper над `AIService` gRPC.
- [x] **5.16** `internal/handler/ai.go` — REST routes (см. секцию ниже).
- [x] **5.17** Admin routes (`POST /api/v1/admin/ai/generate-exercise`) — добавлено в `handler/ai.go` (один файл, не отдельный `ai_admin.go`).
- [x] **5.18** `internal/config/{interfaces.go, env/services.go}` — `AIServiceAddr()`.
- [x] **5.19** `internal/app/{di.go, app.go}` — регистрация AI-роутов если `AI_SERVICE_ADDR` задан.

### Deploy / Taskfile
- [x] **5.20** `deploy/env/ai.env.template` (GRPC_*, POSTGRES_*, LOGGER_*, AI_PROVIDER=mock|openai|anthropic, AI_OPENAI_API_KEY=, AI_DEFAULT_MODEL_CHAT=gpt-4o-mini, AI_DEFAULT_MODEL_WRITING=gpt-4o, USER_SERVICE_ADDR=).
- [x] **5.21** `deploy/env/.env` + `.env.template`: `AI_*` переменные.
- [x] **5.22** `deploy/env/gateway.env.template` — `AI_SERVICE_ADDR=`.
- [x] **5.23** ~~`deploy/compose/core/docker-compose.yml` — добавить ai-service.~~
  **Закрыто как N/A (2026-05-15)**: текущий compose содержит только
  инфраструктуру (postgres + redis + redpanda); ни один из Phase 1-4
  Go-микросервисов в compose не описан и Dockerfile'ов в репо нет.
  Convention проекта — Taskfile (`task run-all-bg` → `go run` локально).
  ai-service следует тому же паттерну: запускается через `task run-ai`
  (см. `Taskfile.yaml`). Контейнеризация всех сервисов — отдельная
  DevOps-фаза, не Phase 5.
- [x] **5.24** `Taskfile.yaml` — `run-ai`, `migrate-up-ai`, `migrate-down-ai`, добавить в `run-all-bg`, `build-all`, `migrate-up-all`.

### Frontend (отдельная итерация — 5.frontend)
- [x] **5.25** Web: `/ai` (hub), `/ai/chat`, `/ai/chat/:id`, `/ai/roleplay`, `/ai/writing`, `/ai/tutor`, `/ai/pronunciation` + components (`QuotaWidget`, `ScenarioCard`, `ChatMessage`, `ChatInput`, `AssessmentResult`, `VoiceRecorder`) + hooks (`use-ai.ts` — единый файл со всеми hooks). См. секцию «5.25 — Web frontend» ниже.
- [x] **5.26** Mobile (Expo, 2026-05-16): `app/ai/index`, `app/ai/chat/index`, `app/ai/chat/[id]`, `app/ai/roleplay`, `app/ai/writing`, `app/ai/tutor`, `app/ai/pronunciation` + components (`quota-widget`, `chat-message`, `chat-input`, `scenario-card`, `assessment-result`, `voice-recorder`) + `lib/ai-api.ts` (9 методов с RN-multipart) + `hooks/use-ai.ts` (4 query + 7 mutation). expo-av для recording/playback с `Audio.Recording.HIGH_QUALITY` (m4a) + `Audio.requestPermissionsAsync` + `setAudioModeAsync` + recovery после stop. NavRow «🤖 AI помощник» в Profile (рядом с Лиги/Друзья), 5 нижних табов не трогали. См. `MOBILE_PROGRESS.md::Sprint 4`.
- [ ] **5.27** Streaming (продвинуто): SSE для streaming AI ответов (постепенный вывод как ChatGPT). Опционально, после MVP-фронта.

### Реальная provider integration (5.X-real, 2026-05-15)
- [x] **5.28** `providers/openai_provider.go` — на базе `github.com/sashabaranov/go-openai`.
  Поддерживает Chat (`response_format=json_object` при `JSONOutput`),
  Whisper-1 transcribe, TTS (`tts-1`/`tts-1-hd`). Стоимость считается по
  фактическому usage (с фолбэком на эвристику `estimateCost`).
- [x] **5.29** `providers/anthropic_provider.go` — лёгкий HTTP-клиент
  (без SDK) для Messages API. Поддерживает только Chat;
  `Transcribe`/`SynthesizeTTS` возвращают `ErrUnsupported`. На JSONOutput
  приклеивает «Respond with VALID JSON only» к system-prompt.
- [x] **5.30** Whisper API — внутри OpenAI provider (`CreateTranscription`).
  `Confidence = 0.95` placeholder (Whisper не отдаёт token-level confidence).
- [x] **5.31** TTS — OpenAI `CreateSpeech`. Аудио заливается через
  `AudioUploader` (`internal/providers/audio_uploader.go`). На MVP
  `NoopAudioUploader` (placeholder URL); реальный MinIO uploader — Phase 5.X-storage.
- [x] **5.32** Hybrid языковая маршрутизация —
  `providers/router.go::LanguageRouter`. Эвристика на system-prompt'е
  (ищет ISO-код или полное имя языка). `Provider=router` в config →
  Default = OpenAI mini, Heavy = Anthropic Haiku для `AI_HEAVY_LANGUAGES`
  (default `ru`). `AudioProvider=Default` (Anthropic не умеет audio).
- [x] **5.33** Moderation — `providers/moderation.go` (`Moderator` interface +
  `OpenAIModerator` через `text-moderation-latest` + `NoopModerator`).
  Service-слой вызывает `Moderator.Check` в `SendMessage` после sanitize:
  flagged → `ErrContentFlagged` (gRPC `FailedPrecondition`).
  `AI_MODERATION=auto|on|off` (auto = on если есть `OPENAI_API_KEY`).
- [x] **5.34** Prompt injection protection — `providers/sanitize.go`
  (`SanitizeUserInput`). Нейтрализует (не блокирует): role-маркеры
  («system:» / «<\|im_start\|>»), фразы «ignore previous instructions»,
  попытки role-switch («you are now …»), и обрезает по `MaxLength`
  (default 4000, env `AI_SANITIZE_MAX_LENGTH`). `SendMessage` использует
  санитизированный текст и для prompt'а, и для записи в БД.
- [x] **5.35** Reset quota cron — `internal/cron/cron.go::Scheduler`.
  Раз в сутки в `CRON_DAILY_AT` (UTC, default `02:00`) удаляет старые
  строки `ai_usage_quota` (default >90 дней,
  `AI_QUOTA_RETENTION_DAYS`). Реализовано через
  `QuotaRepository.DeleteOlderThan` + `Service.CleanupOldQuotas`.
  Лимиты per-day работают как раньше (новый день = новый row).

#### Новые env-переменные ai-service

| ENV | Default | Назначение |
|---|---|---|
| `AI_PROVIDER` | `mock` | `mock` \| `openai` \| `anthropic` \| `router` |
| `AI_OPENAI_API_KEY` | — | OpenAI key (Chat / Whisper / TTS / Moderation) |
| `AI_OPENAI_BASE_URL` | — | proxy / Azure override |
| `AI_ANTHROPIC_API_KEY` | — | Anthropic key |
| `AI_ANTHROPIC_BASE_URL` | `https://api.anthropic.com` | override |
| `AI_ANTHROPIC_MODEL` | `claude-3-5-haiku-latest` | Heavy model |
| `AI_DEFAULT_MODEL_CHAT` | `gpt-4o-mini` | дешёвая модель для chat |
| `AI_DEFAULT_MODEL_HEAVY` | `gpt-4o` | для writing assessment / explain |
| `AI_HEAVY_LANGUAGES` | `ru` | CSV ISO-кодов для router heavy |
| `AI_TTS_MODEL` | `tts-1` | `tts-1` \| `tts-1-hd` |
| `AI_TTS_VOICE` | `alloy` | OpenAI voice |
| `AI_WHISPER_MODEL` | `whisper-1` | STT model |
| `AI_TTS_BASE_URL` | `https://example.com/tts-cache` | base URL для NoopAudioUploader |
| `AI_MODERATION` | `auto` | `auto` \| `on` \| `off` |
| `AI_SANITIZE_MAX_LENGTH` | `4000` | обрезка user-text |
| `CRON_DAILY_AT` | `02:00` | UTC HH:MM, время daily cleanup |
| `AI_QUOTA_RETENTION_DAYS` | `90` | хранение `ai_usage_quota` (≤0 = no-op) |

---

## 🔌 Gateway routes (Phase 5, регистрируются если `AI_SERVICE_ADDR` задан)

```
# Public (auth required)
POST   /api/v1/ai/conversations                  { scenario, target_language }
GET    /api/v1/ai/conversations?limit=&offset=
GET    /api/v1/ai/conversations/:id
DELETE /api/v1/ai/conversations/:id
POST   /api/v1/ai/conversations/:id/messages     { content, want_audio }
POST   /api/v1/ai/conversations/:id/stream       { content }   # SSE typewriter (5.27)

GET    /api/v1/ai/scenarios

POST   /api/v1/ai/explain                        { step_id, incorrect_answer, correct_answer }
POST   /api/v1/ai/explain/stream                 { ... }       # SSE (5.27.1, cache-aware)
POST   /api/v1/ai/writing/assess                 { prompt, user_text }
POST   /api/v1/ai/writing/assess/stream          { ... }       # SSE (5.27.1, structured done)
POST   /api/v1/ai/pronunciation/check            multipart: audio + target_text + language
POST   /api/v1/ai/tutor                          { question }
POST   /api/v1/ai/tutor/stream                   { question }  # SSE (5.27.1)

GET    /api/v1/ai/quota                          → { chat_used, chat_limit, voice_minutes_used, ... }

# Admin
POST   /api/v1/ai/admin/generate-exercise        { type, vocabulary, level }
```

---

## 📦 Артефакты

### 5.25 — Web frontend (eng_next2, 2026-05-15)

> Полный AI-флоу в Next.js 16 + React 19 + TanStack Query + react-markdown.
> Все 7 экранов работают с mock-провайдером бэкенда. Audio recording —
> через нативный MediaRecorder API + multipart upload.

#### Типы (`src/types/api.ts`)
- ✅ Добавлена секция «Phase 5: AI Integration» (~210 строк):
  - `AIMessageRole`, `AICorrection`, `AIMessage`, `AIConversation`, `AIScenario`.
  - Conversation RPC shapes: `StartConversation*`, `SendMessage*`,
    `ListConversationsResponse`, `GetConversationResponse`,
    `ListScenariosResponse`.
  - Single-shot: `ExplainMistake*`, `AssessWriting*` (+ `AIWritingFeedback`),
    `CheckPronunciationResponse` (+ `AIWordScore`), `AskTutor*`.
  - `AIQuotaStatus` (с пометкой что `*_limit = -1` означает unlimited).

#### API клиент (`src/lib/ai-api.ts`)
- ✅ `AIApi.{startConversation, listConversations, getConversation,
  deleteConversation, sendMessage, listScenarios, explainMistake,
  assessWriting, askTutor, checkPronunciation, getQuota}`.
- ✅ `checkPronunciation` идёт мимо `ApiClient` — multipart/form-data
  через `fetch` + `FormData` (audio Blob). Token подставляется
  через `AuthService.getAccessToken()`.

#### Хуки (`src/hooks/use-ai.ts`)
- ✅ Единый файл (по аналогии с `use-srs.ts`):
  - **Queries:** `useAIQuota`, `useAIConversations`, `useAIConversation`,
    `useAIScenarios`.
  - **Mutations:** `useStartConversation`, `useSendMessage` (с targeted
    invalidate по conversationId), `useDeleteConversation`,
    `useExplainMistake`, `useAssessWriting`, `useAskTutor`,
    `useCheckPronunciation`.
  - Все мутации, влияющие на quota, инвалидируют `AI_QUOTA_KEY`.

#### Компоненты (`src/components/ai/`)
- ✅ `quota-widget.tsx` — `<QuotaWidget>` (полная карточка) + `compact`
  версия для верха feature-страниц + `hasQuotaLeft(quota, kind)` хелпер
  (пограничный case `limit === -1` = premium = всегда true).
- ✅ `scenario-card.tsx` — карточка roleplay-сценария: title /
  description / level / ai_role / vocab_focus chips / Play-кнопка.
- ✅ `chat-message.tsx` — bubble с разделением user (правый primary) /
  assistant (левый card). React-Markdown для контента + `prose-sm` /
  `prose-invert`. AudioPlayer для assistant TTS reply.
  `<CorrectionsList>` (бейдж old → new + explanation) для
  user-mistake фидбэка. `<TranslationToggle>` (collapsible, default
  closed) — assistant translation на nativeLang.
- ✅ `chat-input.tsx` — auto-grow textarea (max-h 32) + Enter-to-send
  (Shift+Enter — newline) + опциональный `wantAudio` toggle (для
  TTS reply request).
- ✅ `assessment-result.tsx` — Writing-результат: 4 ScoreBar
  (грамматика / лексика / связность / стиль) с цветами по диапазону
  (≥80 emerald / ≥60 amber / иначе destructive) + corrected_text
  блок + `<FeedbackRow>` per-категория с иконкой/цветом.
- ✅ `voice-recorder.tsx` — нативный `MediaRecorder` (MIME auto-pick:
  `audio/webm;codecs=opus` → `audio/webm` → `audio/ogg;codecs=opus` →
  `audio/mp4`). 3 состояния: idle (кнопка mic) / recording (timer +
  pulse + stop) / recorded (replay + Submit + Re-record).
  Permission denied — отдельный state. MAX_DURATION_SEC = 60.
  Cleanup mediaStream + revoke blob URL — два отдельных useEffect
  (для соответствия React-19 strict refs lint).

#### Страницы (`src/app/ai/`)
- ✅ `page.tsx` (`/ai`) — hub с 6 feature-карточками + полная
  `<QuotaWidget>` сверху.
- ✅ `chat/page.tsx` (`/ai/chat`) — список конверсаций +
  «Новый чат» (scenario=`free_chat`, выбор target_language).
  При успехе `useStartConversation` → `router.push(/ai/chat/[id])`.
  Удаление с confirm.
- ✅ `chat/[id]/page.tsx` — экран конверсации:
  - Header: title + Roleplay/Tutor/Free badge + lang/level chips.
  - Message list (`<ChatMessage>`) с авто-scroll внизу при появлении
    новых.
  - Pending-state: «AI печатает...» bubble во время mutation.
  - Error-state: красный inline banner.
  - `<ChatInput>` снизу. Lock, если quota исчерпана.
- ✅ `roleplay/page.tsx` (`/ai/roleplay`) — каталог сценариев из
  `useAIScenarios`. Фильтры по language / user_level. Клик по
  `<ScenarioCard>` → `useStartConversation({scenario:roleplay_<id>})`
  → редирект в `/ai/chat/[id]`.
- ✅ `writing/page.tsx` (`/ai/writing`) — форма (prompt опционально +
  user_text + lang + level) с word-count guard (≥10 слов). После
  submit рендерится `<AssessmentResult>` + reset-кнопка.
- ✅ `tutor/page.tsx` (`/ai/tutor`) — однократный Q&A. После
  ответа — карточка с вопросом + markdown ответа + Reset.
- ✅ `pronunciation/page.tsx` (`/ai/pronunciation`) — input target_text
  + lang + `<VoiceRecorder>` (`key={resetSignal}` для clean remount
  на reset). Результат: 5xl точность + word-by-word color-bar
  (`<WordScoreBadge>`) + transcribed_text + feedback + Reset.

#### Интеграция
- ✅ `src/components/navbar.tsx` — добавлен пункт `{ to: "/ai", icon: Bot, ... }`
  между Practice и Leagues.
- ✅ `src/lib/i18n.tsx` — `common.ai` ('AI' / 'AI') в обоих языках.

#### Verification
- ✅ `npx tsc --noEmit` в `eng_next2` — чисто.
- ✅ `npx eslint src/app/ai src/components/ai src/lib/ai-api.ts src/hooks/use-ai.ts`
  — 0 errors / 0 warnings.

#### Дизайн-решения

- **Один `use-ai.ts` вместо 3 hooks-файлов**: scope ai/ маленький,
  все хуки делят query keys (`AI_QUOTA_KEY`, `AI_CONVERSATIONS_KEY`,
  `AI_SCENARIOS_KEY`). Это паттерн `use-srs.ts` — там ровно так же.
- **Markdown через `react-markdown`**: уже стоит в проекте (для
  story rich-text). AI-ответы могут содержать `**bold**`, lists,
  code-snippets — рендерим без модификаций.
- **Audio через нативный MediaRecorder**: zero-deps, поддерживает
  webm/ogg/mp4 в современных браузерах. На iOS Safari требуется
  `audio/mp4` — `pickMimeType()` это покрывает.
- **`key`-remount для reset VoiceRecorder**: вместо resetSignal-prop
  с useEffect (вызывал `setState in effect` lint error при cascading
  setState), родитель меняет `key` и React сам делает clean unmount.
  Pattern из React docs.
- **Quota gate'ы локально, без navigate**: `hasQuotaLeft` хелпер
  показывает inline-баннер вместо редиректа. Лучше UX — юзер видит,
  что именно он использовал.

---

## ✅ Verification

```bash
# Unit tests
cd services/ai-service && go test ./...

# Build всех сервисов
for s in services/*/; do (cd "$s" && go build ./...); done

# Migrations
task migrate-up-ai

# Manual integration (с mock provider):
# 1. docker compose up -d
# 2. task run-all-bg
# 3. POST /api/v1/ai/conversations { scenario:"free_chat", target_language:"es" }
# 4. POST /api/v1/ai/conversations/:id/messages { content:"Hola" } → mock reply
# 5. POST /api/v1/ai/explain → cached/fresh explanation
# 6. GET /api/v1/ai/quota → free user counters
```

---

## 🧠 Дизайн-решения

### Почему отдельный ai-service а не модуль в gamification/course

Pattern Phase 3/4: новая фаза = новый сервис. AI имеет уникальные
характеристики: external dependencies (OpenAI/Anthropic), high latency
(2-10s response), необходимость cost-tracking и rate-limit, потенциал
для swap провайдеров. Изоляция в отдельном сервисе позволяет:
- ставить агрессивные timeout'ы и circuit breaker'ы только тут;
- независимо масштабировать (AI-нагрузка ≠ progress-нагрузка);
- легко выключать всю AI-функциональность одной env-переменной
  (`AI_SERVICE_ADDR=""` → gateway не регистрирует роуты).

### Почему mock-provider на старте

Phase 5 plan очень большой (7 фич). Если ждать реальные API-ключи и
бюджет → блокирующая зависимость. Mock-provider позволяет:
- разработать и протестировать всю business-logic (quota, caching,
  conversation history, cost tracking) полностью локально и бесплатно;
- стабилизировать proto/API contract до реальной интеграции;
- писать reliable unit-тесты без mock'ов поверх mock'ов.

Provider abstraction (`AIProvider` interface) гарантирует, что переход
на реальный OpenAI = смена одной строки в DI.

### Почему `:50063` а не `:50059` из phase-5 doc

В phase-5-ai-integration.md указан `:50059`, но `step-validation-service`
уже занял этот порт в Phase 2. Текущая раскладка портов:

| Service | Port |
|---|---|
| step-validation | 50059 |
| srs | 50060 |
| social | 50061 |
| notifications | 50062 |
| **ai** | **50063** |

### Почему scenarios в коде, не в БД

5 сценариев — статика, меняется редко. БД-таблица + admin-CRUD —
overkill для MVP. Когда сценариев станет 50+ или потребуется UGC →
миграция (`ai.scenarios` table + RPC). Пока — Go struct в
`internal/scenarios/scenarios.go`, версионируется через git.

### Почему все хуки non-fatal в gamification/step-validation

AI — non-critical path. Если ai-service лежит, обучение должно
продолжаться: explain просто не появится, conversation вернёт ошибку,
но `Submit` шага и `AddXP` отработают. Pattern уже использован для
SRS hook'ов (`step-validation` non-fatal calls в `srs-service`).
В Phase 5 нет «push»-хуков от других сервисов в ai-service —
только pull-вызовы из gateway → ai. Так что failure-isolation
достаточна на уровне gateway (5xx если ai down).

### Почему quota в Postgres, а не Redis

Phase 4 уже добавляет Redis для leaderboards — можно было бы переиспользовать.
Но quota:
- редко обновляется (пара inc/sec на пользователя в пике);
- требует durability (refunding/audit при ошибках);
- range-query «по дню» делается в Postgres проще.
Redis-cache можно добавить позже как read-through layer если нагрузка
вырастет.

### Почему Tutor = Conversation со специальным scenario

Tutor по UX отличается («задать вопрос» vs «диалог»), но по реализации
это одно и то же: prompt, history, provider.Chat. Дублировать таблицу
не нужно. Просто `scenario='tutor_qa'` и frontend по-разному рендерит.

### Pronunciation на MVP — mock + Levenshtein

Реальный pronunciation check требует:
1. MinIO upload + signed URLs;
2. Whisper API (или Google STT);
3. phonetic alignment алгоритм (не наивный Levenshtein).

На MVP пишем абстракцию + mock + word-level Levenshtein для
демонстрации потока. Реальные провайдеры — `5.X-real`. Это даёт
рабочий API contract без блокирующих cost'ов.

### Почему JSON-output prompts а не plain text

OpenAI/Anthropic стабильно возвращают JSON если попросить
(`response_format=json_object` для GPT-4). Плюс всегда добавляем
`json.Unmarshal` с retry (1 повтор с уточнением «return ONLY valid
JSON»). Это решает проблему парсинга `corrections` / `translation` /
`scores` из ответа без NLP-парсинга.

---

## 5.27 — Streaming SSE chat (2026-05-17)

**Дата:** 2026-05-17. **Статус:** ✅ Done (backend + gateway + web).

UX типрайтер-эффекта для chat'а: assistant-reply приходит постепенно по
мере генерации, а не разом после всего LLM-вызова. Снимает «висящий
индикатор typing» на 5–15 секунд для длинных ответов.

### Архитектура

```
Web (EventSource-like fetch + ReadableStream)
   │  POST /api/v1/ai/conversations/:id/stream  →  text/event-stream
   ▼
Gateway (handler/ai.go: SendMessageStream)
   │  Bridge gRPC server-stream ↔ HTTP SSE
   ▼
ai-service (AIService.SendMessageStream RPC)
   │  StreamingProvider? → native SSE
   │  иначе → Chat() + EmulateStream (типрайтер)
   ▼
OpenAIProvider.ChatStream → CreateChatCompletionStream (native SSE)
AnthropicProvider          → emulation (5.27.1 TODO для native)
MockProvider               → emulation
```

### Proto (`shared/proto/ai/v1/ai.proto`)

- Новый RPC `SendMessageStream(SendMessageRequest) returns (stream SendMessageStreamChunk)`.
- `SendMessageStreamChunk` — `oneof kind`:
  - `Message user_message` — первый chunk (echo + id после persist).
  - `string delta` — инкрементальный фрагмент assistant-reply.
  - `SendMessageResponse done` — финал с полным AssistantMessage.
  - `string error_message` — terminal failure (stream закрывается OK).

### Provider abstraction (`internal/providers/chat_stream.go`)

- `ChatStreamChunk { Delta, Done, TokensUsed, CostUSD, Err }`.
- Опциональный интерфейс `StreamingProvider.ChatStream(ctx, msgs, opts) chan`.
- `EmulateStream(ctx, ChatResponse, delay, chunkSize)` — fallback: режет
  готовый Chat-response на куски по словам (`splitKeepDelims` + `chunkByWords`).
- Тесты `chat_stream_test.go` — 4 кейса (concat == original, nil, ctx-cancel,
  word-boundary respect).

### OpenAI native streaming

`OpenAIProvider.ChatStream` — `stream=true`, `StreamOptions.IncludeUsage=true`
для usage в финальном chunk'е. Потоковая ошибка → chunk c `Err` и закрытие
канала без Done.

### Service layer (`internal/service/conversation_stream.go`)

- `Service.SendMessageStream(ctx, in)` → `<-chan StreamEvent`.
- Setup-ошибки (validation/quota/forbidden) — синхронно (chan == nil).
- Sanitize → PII-redact → moderation → save user-msg — ровно один раз
  до открытия stream'а.
- В streaming-режиме `JSONOutput=false`, system-prompt дополняется
  «respond with plain text reply only» — translation/corrections не
  возвращаются (за полным форматом — обычный SendMessage).
- Provider stream open: `s.openProviderStream(...)` пытается native через
  type-assert на `StreamingProvider`, fallback к `EmulateStream(Chat())`.
- Persist assistant-msg + UpdateStats + IncrementQuota — только при success.
- Тесты `conversation_stream_test.go` — 3 кейса (full flow / provider error /
  invalid inputs).

### gRPC API (`internal/api/v1/api.go`)

`SendMessageStream(req, stream)` — server-streaming server-side. Маппинг
`StreamEvent` → `SendMessageStreamChunk`. Mid-stream ошибки шлются как
`error_message` chunk + return nil (stream закрывается OK), чтобы
клиент мог дифференцировать сетевую ошибку от ошибки провайдера.

### Gateway (`services/gateway`)

- `client/ai.go`: `AIClient.SendMessageStream(ctx, req)` — passthrough
  gRPC client-stream.
- `handler/ai.go`: `SendMessageStream` — bridge gRPC ↔ HTTP SSE
  (`text/event-stream`, `Cache-Control: no-cache, no-transform`,
  `X-Accel-Buffering: no`). Каждый chunk → SSE event с
  `event: <user|delta|done|error>` + JSON `data:` (protojson, snake_case).
- `app.go`: route `POST /api/v1/ai/conversations/:id/stream` (auth required).

### Web (`eng_next2`)

- `lib/ai-api.ts`: `AIApi.sendMessageStream(id, req, {signal})` — async
  generator `AsyncGenerator<AIStreamEvent>`. Парсит SSE-блоки вручную
  через `fetch` + `ReadableStream` (EventSource не используется, потому
  что POST + Authorization header).
- `parseSSEBlock` — RFC 8895 parsing: `event:` + `data:` поля, `data:`
  multilines склеиваются через `\n`.
- `hooks/use-ai.ts`: `useSendMessageStream(conversationId)` — инкапсулирует
  AbortController, state-машину `{userMessage, streamingText, assistantMessage,
  error, isStreaming}`. После terminal-event инвалидирует
  conversation + quota query'ки.
- `app/ai/chat/[id]/page.tsx`: переключён с `useSendMessage` на
  `useSendMessageStream`. Optimistic user-bubble + streaming bubble с
  растущим текстом + pulse-cursor. Auto-scroll при росте `streamingText`.

### Verification

- `go build ./...` clean во всём elearning.
- `go test ./...` ai-service: providers + service + cron + cryptobox — green.
- 7 новых тестов: 4 chat_stream + 3 conversation_stream.
- `go vet` clean (ai-service + gateway).
- `npx tsc --noEmit` web — clean.
- `npx eslint` для изменённых файлов — clean.

### Что осталось как TODO (5.27.1)

- ~~Native streaming для Anthropic (сейчас — emulation поверх Chat()).~~ — ✅ done в 5.27.1.
- ~~Streaming для tutor / explain / writing assess.~~ — ✅ done в 5.27.1.
- ~~Backpressure на gateway при медленном клиенте.~~ — ✅ done в 5.27.1.

---

## 5.27.1 — Streaming improvements + остальные стрим-эндпоинты (2026-05-17)

**Статус:** ✅ Done — все три TODO из 5.27 закрыты + добавлены ещё 3
streaming RPC.

### Native streaming для Anthropic

`internal/providers/anthropic/anthropic.go` теперь реализует
`providers.StreamingProvider`. Используется Messages API SSE (`messages/stream=true`):
парсятся события `content_block_delta` (текст) + `message_delta`
(`usage.output_tokens` для финального chunk'а). Tokens / cost считаются
на основании финального usage; при эмуляции поверх Chat() (старый путь)
оставлен fallback. До этого Anthropic шёл через EmulateStream — теперь
delta'ы реально идут пo-токеново от LLM.

### Gateway backpressure (`services/gateway/internal/handler/ai.go`)

Per-chunk write deadline через `http.NewResponseController.SetWriteDeadline`:

```go
type backpressureWriter struct {
    w       io.Writer
    rc      *http.ResponseController
    timeout time.Duration  // 10s default — sseChunkWriteTimeout
}
```

Каждый `writeSSE("event", payload)` ставит `SetWriteDeadline(now+timeout)`
и пишет в TCP-буфер. Если клиент не читает (буфер полон) — Write вернёт
timeout-error → handler возвращается → defer grpcCancel() закрывает
gRPC stream → ai-service прерывает provider call (без increment quota).

Это критично для prod: иначе медленный клиент держал бы поток пока
не истечёт ai-service'овый context timeout (минуты вместо секунд).

### Streaming для tutor / explain / writing

Три новых server-streaming RPC + SSE эндпоинты:

| RPC | Gateway endpoint | Особенности |
|-----|-----------------|-------------|
| `AskTutorStream` | `POST /api/v1/ai/tutor/stream` | Plain text reply, без persistence; контракт идентичен `SendMessageStream` минус `user_message` event |
| `ExplainMistakeStream` | `POST /api/v1/ai/explain/stream` | Cache-hit → сразу `done` (cached=true, без delta); cache-miss → streaming + save to cache в финале |
| `AssessWritingStream` | `POST /api/v1/ai/writing/assess/stream` | Provider возвращает JSON (JSONOutput=true); delta'ы — сырые JSON-токены для UI typing indicator; `done` парсит JSON в структурированный `AssessWritingResponse` |

Все три переиспользуют `service.openProviderStream` из conversation_stream.go
и тот же SSE-контракт `delta | done | error` на gateway'е.

`gateway/internal/handler/ai.go:beginSSE()` — общий helper для всех 4
SSE-эндпоинтов (chat / tutor / explain / writing): ставит заголовки,
проверяет flusher, возвращает backpressure-aware writer.

Всё PII redact / quota check / quota increment работает идентично
не-streaming версиям.

**UI integration:**
- `eng_next2/src/app/ai/tutor/page.tsx` — переведена на `useAskTutorStream`
  с typewriter эффектом (animated cursor + progressive markdown render).
- ExplainMistake / AssessWriting на UI пока используют не-streaming
  endpoints; миграция на streaming (хук + рендер) — отдельная итерация.

### Verification (5.27.1)

```
ok  github.com/elearning/ai-service/internal/service  0.622s
ok  github.com/elearning/ai-service/internal/providers
go build ./...    # clean: ai-service + gateway
npx tsc --noEmit  # clean: eng_next2
npx eslint ...    # clean: tutor/page.tsx, hooks/use-ai.ts, lib/ai-api.ts
```

Новые тесты:
- `tutor_stream_test.go` — 3 теста (full flow / provider error / validation).
- `explain_stream_test.go` — 2 теста (cache miss + cache hit reuse / provider error).
- `writing_stream_test.go` — 2 теста (full flow / provider error).

---

## 5.X — A/B exposure logging (2026-05-17)

**Статус:** ✅ Done — закрывает TODO из секции «5.X — A/B testing».

Idempotent persistence assignment'ов в БД для последующей analytics
(CTR / cost / retention per variant).

### Schema (`migrations/000008_create_ai_ab_exposures.{up,down}.sql`)

```sql
CREATE TABLE ai_ab_exposures (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    experiment      TEXT NOT NULL,
    variant_id      TEXT NOT NULL,
    first_seen_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_seen_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    exposure_count  BIGINT NOT NULL DEFAULT 1,
    UNIQUE (user_id, experiment, variant_id)
);

CREATE VIEW ai_ab_distribution AS
SELECT experiment, variant_id, COUNT(DISTINCT user_id) AS unique_users,
       SUM(exposure_count) AS total_exposures, ...
FROM ai_ab_exposures GROUP BY experiment, variant_id;
```

### Pipeline

1. `repository.ABExposureRepository.LogExposure(ctx, user, exp, variant)`:
   `INSERT ... ON CONFLICT DO UPDATE last_seen_at=NOW(), exposure_count++`.
2. `service.pickWithExposure(experimentName, userID)` — обёртка над
   `abtests.Pick()`:
   - Async (`go func`) запись с собственным `context.Background()` + 3s
     timeout — не блокирует hot path AI-вызовов и не теряется при
     cancel клиентом.
   - Skip для `userID == ""` (аноним = шум для analytics).
3. `chatModelFor` / `chatPromptSuffixFor` теперь зовут `pickWithExposure`
   вместо прямого `abtests.Pick`.

### Тесты

- `abtest_integration_test.go` — `TestABTest_ExposureLogging_RecordsAssignments`
  (≥2 exposures на повторных Pick'ах + 0 для не-выбранного variant'а),
  `TestABTest_ExposureLogging_SkipsAnonymous`.

### TODO (отдельные итерации)

- Web/admin UI для просмотра `ai_ab_distribution` + cross-join с
  `ai_messages` для cost-per-variant breakdown.
- Sticky overrides (force variant via dev-cookie) для QA / staging.

---

## 5.X — A/B testing для prompts/моделей (2026-05-17)

**Статус:** ✅ Done (backend MVP + интеграция в SendMessage / SendMessageStream).

Лёгкий feature-flag слой для split-тестирования моделей и системных
промптов без перекомпиляции и БД-миграций.

### Архитектура

`internal/abtest/abtest.go` — самодостаточный пакет (только stdlib):

- `Experiment { Name, Variants[] }`, `Variant { ID, Weight, Params map[string]string }`.
- `Registry.Pick(experimentName, userID) → (*Variant, bool)` —
  детерминированный sha256-bucketing по `(experimentName, userID)`.
- `ParseRegistry(jsonStr)` — десериализация из ENV (`AI_AB_EXPERIMENTS`).
- Полная валидация на `NewRegistry`: уникальность имён, ≥ 2 variants,
  total weight > 0, уникальность variant.id.
- 11 unit-тестов (validation, deterministic assignment, distribution
  ±3% от ожидаемой при N=5000, weighted, independence between experiments,
  StringParam defaults).

### Интеграция в service

`internal/service/abtest.go` — две хелпер-функции:

- `Service.chatModelFor(userID, defaultModel)` — read variant.Params["model"]
  для эксперимента `chat_model`, fallback на conversation default.
- `Service.chatPromptSuffixFor(userID)` — variant.Params["system_prompt_suffix"]
  для `chat_prompt`, fallback "".

Оба эксперимента подключены в:
- `service/conversation.go:SendMessage` — model в `ChatOptions`, suffix
  в system-prompt.
- `service/conversation_stream.go:SendMessageStream` — то же самое.

Service.New принимает `Deps.ABTests *abtest.Registry`; nil → `EmptyRegistry`
(no-op, обратная совместимость).

3 интеграционных теста (`abtest_integration_test.go`):
- ChatModel override доходит до `provider.Chat`.
- Без эксперимента используется `conv.Model`.
- ChatPrompt suffix дописывается в system-prompt.

### Конфигурация

`config.Config.ABExperimentsJSON` ← env `AI_AB_EXPERIMENTS`. Парсится
в `app.go` через `abtest.ParseRegistry`. Невалидный JSON = fatal (fail-fast,
не «тихо» дропнуть эксперимент в проде).

Пример:
```bash
AI_AB_EXPERIMENTS='[
  {"name":"chat_model","variants":[
    {"id":"control","weight":80,"params":{"model":"gpt-4o-mini"}},
    {"id":"premium","weight":20,"params":{"model":"gpt-4o"}}
  ]},
  {"name":"chat_prompt","variants":[
    {"id":"strict","weight":50,"params":{"system_prompt_suffix":"Be very strict."}},
    {"id":"friendly","weight":50,"params":{"system_prompt_suffix":"Be encouraging."}}
  ]}
]'
```

### Что осталось как TODO

- ~~**Логирование assignment'ов в БД**~~ — ✅ done (см. секцию «5.X — A/B
  exposure logging»). `ai_ab_exposures` таблица + idempotent upsert
  + async wrapper `pickWithExposure`.
- **Web/admin UI** для просмотра активных экспериментов и метрик per-variant.
- **Sticky overrides** для админов / QA (force variant в dev-куке).

---

## ❌ Открытые TODO

- [x] ~~**MinIO upload для pronunciation audio**~~ — done (2026-05-17,
  ретроспективно зафиксировано). См.
  `services/ai-service/internal/providers/minio_audio_uploader.go` +
  `app.go:buildAudioUploader` (выбор `noop`/`minio` по `AI_AUDIO_STORAGE`).
  При `AI_AUDIO_STORAGE=minio` заливка реальная, в noop-режиме — placeholder
  URLs.
- [ ] **OpenAI Realtime API** для voice conversation (low-latency) —
  Phase 5.5, после core MVP.
- [x] ~~**Encryption conversations at rest**~~ — done (2026-05-17,
  ретроспективно). `services/ai-service/internal/cryptobox/` — AES-256-GCM,
  master key из `AI_ENCRYPTION_KEY`. No-op если переменная пуста.
  Подключён в `app.go` (строка 71); `cryptobox_test.go` зелёные.
- [x] ~~**PII removal в AI-вызовах**~~ — done (2026-05-17, ретроспективно).
  `internal/providers/pii.go` (regex для email/phone/credit-card/IBAN/SSN)
  + `service/pii.go` (`redactPII`). Вызывается в `conversation.SendMessage`
  перед provider call. `pii_test.go` зелёные.
- [x] ~~**Feedback collection**~~ — done (2026-05-17, ретроспективно).
  Таблица `ai_message_feedback` (миграция `000007`), модель
  `model.MessageFeedback`, RPC `SubmitMessageFeedback` /
  `DeleteMessageFeedback`, gateway `POST/DELETE /api/v1/ai/messages/:id/feedback`,
  `service/feedback.go` + `feedback_test.go`.
- [x] ~~**Streaming SSE для chat UX (5.27)**~~ — done (2026-05-17). См.
  секцию «5.27 — Streaming SSE chat» ниже.
- [x] ~~**Phase 5 web frontend** (5.25)~~ — done (2026-05-15). См. секцию
  «5.25 — Web frontend» выше.
- [ ] **Phase 5 mobile frontend** (5.26) — Expo + expo-av для recording.
- [x] ~~**Real provider integration** (5.28–5.35)~~ — done (2026-05-15).
  OpenAI / Anthropic / Router / Whisper / TTS / Moderation / Sanitize /
  Quota-cleanup cron. См. секцию «Реальная provider integration» выше.
- [x] ~~**A/B testing разных моделей / промптов**~~ — done (2026-05-17).
  См. секцию «5.X — A/B testing для prompts/моделей» выше.
