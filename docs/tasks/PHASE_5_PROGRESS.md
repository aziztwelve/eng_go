# Phase 5 — Progress Log

> Живой статус Phase 5 (AI-интеграция: chat, roleplay, explain,
> writing assessment, pronunciation, tutor, content generation).
> См. [phase-5-ai-integration.md](./phase-5-ai-integration.md),
> [PHASE_4_PROGRESS.md](./PHASE_4_PROGRESS.md).

**Дата старта:** 2026-05-15
**Дата последнего обновления:** 2026-05-15
**Статус:** 🟢 **Backend MVP done (mock provider). Frontend + real provider — следующая итерация.**

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
- [ ] **5.23** `deploy/compose/core/docker-compose.yml` — добавить ai-service.
- [x] **5.24** `Taskfile.yaml` — `run-ai`, `migrate-up-ai`, `migrate-down-ai`, добавить в `run-all-bg`, `build-all`, `migrate-up-all`.

### Frontend (отдельная итерация — 5.frontend)
- [ ] **5.25** Web: `/ai` (hub), `/ai/chat`, `/ai/chat/:id`, `/ai/roleplay`, `/ai/writing`, `/ai/tutor`, `/ai/pronunciation` + components (`AIChat`, `Message`, `VoiceInput`, `RoleplayCard`, `WritingEditor`, `AssessmentResult`, `PronunciationCheck`, `QuotaWidget`) + hooks (`use-ai-conversations`, `use-ai-message`, `use-ai-quota`).
- [ ] **5.26** Mobile (Expo): `ai/index`, `ai/chat/[id]`, `ai/roleplay`, `ai/writing`, `ai/pronunciation` + expo-av для recording/playback + audio permissions.
- [ ] **5.27** Streaming (продвинуто): SSE для streaming AI ответов (постепенный вывод как ChatGPT). Опционально, после MVP-фронта.

### Реальная provider integration (отдельная итерация — 5.X-real)
- [ ] **5.28** `providers/openai_provider.go` — `github.com/sashabaranov/go-openai`.
- [ ] **5.29** `providers/anthropic_provider.go` (опционально для гибрида ru/en).
- [ ] **5.30** Whisper API integration в `providers/openai_provider.Transcribe`.
- [ ] **5.31** TTS — OpenAI TTS / ElevenLabs в `providers/openai_provider.SynthesizeTTS` + MinIO upload.
- [ ] **5.32** Hybrid языковая маршрутизация: `ru` → GPT-4o, остальное → mini.
- [ ] **5.33** OpenAI Moderation API — фильтр запрещённого контента перед отправкой и над ответом.
- [ ] **5.34** Prompt injection protection — sanitize user input.
- [ ] **5.35** Reset quota cron — midnight UTC.

---

## 🔌 Gateway routes (Phase 5, регистрируются если `AI_SERVICE_ADDR` задан)

```
# Public (auth required)
POST   /api/v1/ai/conversations                  { scenario, target_language }
GET    /api/v1/ai/conversations?limit=&offset=
GET    /api/v1/ai/conversations/:id
DELETE /api/v1/ai/conversations/:id
POST   /api/v1/ai/conversations/:id/messages     { content, want_audio }

GET    /api/v1/ai/scenarios

POST   /api/v1/ai/explain                        { step_id, incorrect_answer, correct_answer }
POST   /api/v1/ai/writing/assess                 { prompt, user_text }
POST   /api/v1/ai/pronunciation/check            multipart: audio + target_text + language
POST   /api/v1/ai/tutor                          { question }

GET    /api/v1/ai/quota                          → { chat_used, chat_limit, voice_minutes_used, ... }

# Admin
POST   /api/v1/ai/admin/generate-exercise        { type, vocabulary, level }
```

---

## 📦 Артефакты

_(пополняется по мере выполнения задач)_

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

## ❌ Открытые TODO

- [ ] **MinIO upload для pronunciation audio** — отдельный сервис
  `video-service` уже умеет MinIO uploads, можно переиспользовать
  client. Добавится в `5.X-real`.
- [ ] **OpenAI Realtime API** для voice conversation (low-latency) —
  Phase 5.5, после core MVP.
- [ ] **A/B testing разных моделей / промптов** — отложено, нужны
  feature-flags инфра.
- [ ] **Encryption conversations at rest** — privacy-требование, делаем
  если выходим в EU (GDPR). На MVP — plain text в БД.
- [ ] **PII removal** в AI-вызовах — нужен detector (regex для email/
  phone/credit-card, либо named-entity recognition). Отложено.
- [ ] **Feedback collection** (thumbs up/down на каждый AI ответ) —
  отдельная таблица + RPC `RateMessage(message_id, rating)`. Отложено.
- [ ] **Streaming SSE** для chat UX (постепенный вывод как ChatGPT) —
  требует HTTP-streaming в gateway. После MVP-фронта.
- [ ] **Phase 5 frontend** (web + mobile, 5.25-5.27) — после backend.
- [ ] **Real provider integration** (5.28-5.35) — отдельная итерация
  с реальным API-ключом и бюджетом.
