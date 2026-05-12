# Phase 5: AI интеграция 🤖

**Срок:** 2-3 недели  
**Сложность:** Высокая  
**Зависимости:** Phase 2 (форматы шагов)  
**Статус:** 📝 Planning

---

## 🎯 Цели и метрики

### Цели:
**Уникальный фичур** для выделения от конкурентов. Создать полноценного **AI-учителя**, который:
- Общается с пользователем на изучаемом языке
- Объясняет ошибки
- Оценивает произношение
- Генерирует персональный контент

Это main selling point для Premium подписки!

### Метрики:
- **AI usage** > 30% активных пользователей пробуют
- **Engagement** — средняя AI сессия > 5 минут
- **Premium conversion** +200% после AI запуска
- **NPS** улучшается на 10+ пунктов

---

## 🤖 Главные AI фичи

### 1. 💬 AI Conversation Practice
Разговорная практика с AI на изучаемом языке. Свободный диалог с учетом уровня пользователя.

### 2. 🎭 Roleplay Scenarios
Готовые сценарии (в ресторане, в аэропорту, на работе). AI играет роль и реагирует на ответы.

### 3. 🤔 Explain My Answer
AI объясняет почему ответ неправильный — грамматика, контекст, альтернативы.

### 4. ✍️ AI Writing Assessment
Пользователь пишет текст → AI оценивает, исправляет, дает советы.

### 5. 🎤 Pronunciation Check
Запись голоса → распознавание (Whisper) → оценка произношения.

### 6. 🎓 AI Tutor
Чат с AI учителем для любых вопросов по уроку.

### 7. 📝 AI Content Generation (admin)
Генерация упражнений из словаря / темы.

---

## 🏗️ Архитектура

### Новый микросервис: `ai-service`

**Порт:** gRPC `:50059`  
**Зависимости:** OpenAI API / Anthropic Claude / Whisper API  
**База:** PostgreSQL — schema `ai`

### Зачем отдельный сервис:
- Изоляция AI зависимостей (легко заменить провайдера)
- Rate limiting и cost control в одном месте
- Кэширование AI ответов
- A/B testing разных моделей

### Технологии:

| Функция | Провайдер | Альтернативы |
|---------|-----------|--------------|
| Chat | OpenAI GPT-4o-mini | Claude Haiku, Llama 3 |
| Conversation | OpenAI GPT-4o | Claude Sonnet |
| Speech-to-Text | OpenAI Whisper | Google STT, AWS Transcribe |
| Text-to-Speech | OpenAI TTS / ElevenLabs | Google TTS, AWS Polly |
| Pronunciation | Whisper + custom analysis | Microsoft Azure Speech |

### Стоимость (оценка):
- GPT-4o-mini: $0.15 / 1M input tokens
- GPT-4o: $2.50 / 1M input
- Whisper: $0.006 / minute
- ElevenLabs TTS: $5 / 30k characters

**Бюджет на пользователя/мес (Premium):**
- 100 AI conversations × 1000 tokens = 100k tokens = $0.15
- 5 minutes voice = $0.03
- 50k chars TTS = $8 (или $0 с Google)
- **Итого:** $0.20-0.40 на премиум пользователя

---

## 💾 База данных

### `ai_conversations` — сессии разговоров
```sql
CREATE TABLE ai.ai_conversations (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    title           TEXT,                        -- AI генерит или roleplay name
    scenario        VARCHAR(50),                 -- 'free_chat', 'roleplay_restaurant', etc
    target_language VARCHAR(10) NOT NULL,
    user_level      VARCHAR(5),                  -- 'A1', 'B2', ...
    model           VARCHAR(50),                 -- 'gpt-4o-mini', 'gpt-4o'
    
    -- Stats
    message_count   INT DEFAULT 0,
    total_tokens    INT DEFAULT 0,
    cost_usd        DECIMAL(10,4) DEFAULT 0,
    
    started_at      TIMESTAMPTZ DEFAULT NOW(),
    last_message_at TIMESTAMPTZ DEFAULT NOW(),
    ended_at        TIMESTAMPTZ
);

CREATE INDEX idx_ai_conv_user_started ON ai.ai_conversations(user_id, started_at DESC);
```

### `ai_messages` — сообщения в разговорах
```sql
CREATE TABLE ai.ai_messages (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    conversation_id UUID NOT NULL REFERENCES ai.ai_conversations(id),
    role            VARCHAR(20) NOT NULL,        -- 'user', 'assistant', 'system'
    content         TEXT NOT NULL,
    audio_url       TEXT,                        -- если был голос
    
    -- Для оценки
    corrections     JSONB,                       -- AI коррекции грамматики
    translations    JSONB,                       -- перевод reply
    
    -- Tokens / Cost
    tokens_used     INT,
    cost_usd        DECIMAL(10,6),
    
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_ai_messages_conv ON ai.ai_messages(conversation_id, created_at);
```

### `ai_explanations` — объяснения ошибок
```sql
CREATE TABLE ai.ai_explanations (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    step_id         UUID,
    incorrect_answer TEXT,
    correct_answer  TEXT,
    explanation     TEXT NOT NULL,
    cached          BOOLEAN DEFAULT TRUE,        -- есть ли в кэше для похожих
    created_at      TIMESTAMPTZ DEFAULT NOW()
);

CREATE INDEX idx_ai_explanations_step ON ai.ai_explanations(step_id);
```

### `ai_writing_assessments` — оценки писем
```sql
CREATE TABLE ai.ai_writing_assessments (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    prompt          TEXT,                        -- задание
    user_text       TEXT NOT NULL,
    
    -- AI результат
    overall_score   INT,                         -- 0-100
    grammar_score   INT,
    vocab_score     INT,
    style_score     INT,
    corrected_text  TEXT,
    feedback        JSONB,                       -- по пунктам
    
    created_at      TIMESTAMPTZ DEFAULT NOW()
);
```

### `ai_pronunciation_attempts` — попытки произношения
```sql
CREATE TABLE ai.ai_pronunciation_attempts (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    step_id         UUID,
    target_text     TEXT NOT NULL,
    audio_url       TEXT NOT NULL,
    transcribed_text TEXT,                       -- Whisper output
    accuracy_score  DECIMAL(3,2),                -- 0.0 - 1.0
    word_scores     JSONB,                       -- по словам
    feedback        TEXT,
    created_at      TIMESTAMPTZ DEFAULT NOW()
);
```

### `ai_usage_quota` — квоты для freemium
```sql
CREATE TABLE ai.ai_usage_quota (
    user_id         UUID NOT NULL,
    date            DATE NOT NULL,
    chat_requests   INT DEFAULT 0,
    voice_minutes   DECIMAL(5,2) DEFAULT 0,
    writing_checks  INT DEFAULT 0,
    PRIMARY KEY (user_id, date)
);
```

---

## 📐 Бизнес-логика

### 1. AI Conversation flow:

```
1. User starts conversation
   ├─ Получаем user_level из profile
   ├─ Системный промпт настраивается под уровень
   └─ Создаем conversation в БД

2. User отправляет message
   ├─ Сохраняем user message
   ├─ Передаем в OpenAI с conversation history (last 10)
   ├─ Получаем reply
   ├─ Если нужно — TTS на ответ
   ├─ Сохраняем assistant message
   └─ Возвращаем reply + audio_url + corrections

3. AI ответ генерирует:
   - Естественный ответ на изучаемом языке
   - Поправки грамматики юзера (если нужно)
   - Перевод reply (на родной язык)
```

### 2. System prompt пример:

```
You are a friendly language tutor helping a {user_level} student learn {target_language}.

Rules:
1. Reply primarily in {target_language}, adjusted to {user_level} level
2. Keep replies short (1-2 sentences for A1-A2, 2-3 for B1+)
3. Ask follow-up questions to encourage conversation
4. If user makes grammar mistakes, gently note them at the end
5. Use vocabulary appropriate for their level

User context:
- Native language: {native_language}
- Currently studying: {current_topics}
- Recent vocabulary: {recent_words}

Response format (JSON):
{
  "reply": "...",          // ответ на изучаемом языке
  "translation": "...",     // перевод на родной
  "corrections": [          // поправки если есть
    { "original": "...", "corrected": "...", "explanation": "..." }
  ]
}
```

### 3. Roleplay scenarios:

```json
{
  "id": "restaurant_order",
  "title": "Ordering at a Restaurant",
  "description": "Practice ordering food in a Spanish restaurant",
  "user_level": "A2",
  "language": "es",
  "ai_role": "Waiter named Carlos",
  "context": "You're at a Spanish restaurant. The waiter approaches your table.",
  "initial_message": "¡Hola! Bienvenido. ¿Qué desea ordenar?",
  "vocabulary_focus": ["food", "drinks", "polite_phrases"],
  "success_criteria": [
    "Order at least one main dish",
    "Order at least one drink",
    "Use 'por favor' and 'gracias'"
  ]
}
```

### 4. Explain Answer:

```go
func ExplainMistake(stepID UUID, userAnswer string, correctAnswer string) string {
    // Check cache first
    cached := GetCachedExplanation(stepID, userAnswer)
    if cached != nil { return cached.Explanation }
    
    prompt := fmt.Sprintf(`
        A student is learning %s.
        Question: %s
        Correct answer: %s
        Student's answer: %s
        
        Explain in their native language (%s) why their answer is wrong.
        Be encouraging, point to specific grammar/vocabulary rules.
        Keep explanation under 100 words.
    `, language, question, correctAnswer, userAnswer, nativeLang)
    
    explanation := openai.Complete(prompt, "gpt-4o-mini")
    
    // Cache for similar mistakes
    SaveExplanation(stepID, userAnswer, explanation)
    
    return explanation
}
```

### 5. Writing Assessment:

```
Prompt to GPT-4:

"Evaluate this writing exercise.
Task: {prompt}
Student level: {level}
Student wrote:
{user_text}

Provide JSON response:
{
  "overall_score": 0-100,
  "grammar_score": 0-100,
  "vocabulary_score": 0-100,
  "coherence_score": 0-100,
  "corrected_text": "...",
  "feedback": [
    { "category": "grammar", "issue": "...", "suggestion": "..." },
    ...
  ]
}"
```

### 6. Pronunciation Check:

```python
def check_pronunciation(audio_file, target_text, language):
    # 1. Transcribe with Whisper
    transcribed = whisper.transcribe(audio_file, language=language)
    
    # 2. Compare phonetically
    similarity = phonetic_similarity(transcribed.text, target_text)
    
    # 3. Word-by-word analysis
    word_scores = align_words(transcribed.words, target_text.split())
    
    # 4. Generate feedback
    feedback = generate_pronunciation_feedback(word_scores, language)
    
    return {
        "accuracy_score": similarity,
        "word_scores": word_scores,
        "feedback": feedback,
        "transcribed": transcribed.text
    }
```

### 7. Quota system:

```go
type AIQuota struct {
    User         User
    Plan         string  // 'free' | 'premium'
}

func (q AIQuota) CanUseChat() bool {
    today := GetUsageToday(q.User.ID)
    if q.Plan == "premium" { return true }
    return today.ChatRequests < 5  // 5 free per day
}

func (q AIQuota) CanUseVoice() bool {
    today := GetUsageToday(q.User.ID)
    if q.Plan == "premium" { return today.VoiceMinutes < 60 }  // 1 hour
    return today.VoiceMinutes < 2  // 2 min for free
}
```

---

## 🔌 API Endpoints

### Conversations
```
POST   /api/v1/ai/conversations                  — начать conversation
       { "scenario": "free_chat", "target_language": "es" }
       
GET    /api/v1/ai/conversations                  — мои conversations
GET    /api/v1/ai/conversations/:id              — конкретная conversation
DELETE /api/v1/ai/conversations/:id              — удалить
POST   /api/v1/ai/conversations/:id/messages     — отправить сообщение
       { "content": "Hola", "want_audio": true }
       
GET    /api/v1/ai/scenarios                      — список roleplay сценариев
```

### Explanations
```
POST   /api/v1/ai/explain                        — объяснить ошибку
       { "step_id": "...", "incorrect_answer": "...", "correct_answer": "..." }
```

### Writing
```
POST   /api/v1/ai/writing/assess                 — оценить текст
       { "prompt": "...", "user_text": "..." }
```

### Pronunciation
```
POST   /api/v1/ai/pronunciation/check            — multipart: audio file + target_text
```

### Tutor (general Q&A)
```
POST   /api/v1/ai/tutor                          — задать вопрос учителю
       { "question": "..." }
```

### Admin: Content generation
```
POST   /api/v1/ai/admin/generate-exercise        — сгенерировать упражнение
       { "type": "translate", "vocabulary": ["agua", "comer"], "level": "A1" }
```

---

## 💾 Бэкенд задачи

### 5.1 Создание ai-service

```
services/ai-service/
├── cmd/main.go
├── internal/
│   ├── api/                  # gRPC handlers
│   ├── app/
│   ├── config/
│   ├── model/
│   ├── repository/
│   ├── service/
│   │   ├── conversation_service.go
│   │   ├── explain_service.go
│   │   ├── writing_service.go
│   │   ├── pronunciation_service.go
│   │   ├── quota_service.go
│   │   └── content_gen_service.go
│   ├── providers/           # AI providers abstraction
│   │   ├── openai_client.go
│   │   ├── anthropic_client.go
│   │   └── whisper_client.go
│   └── prompts/             # promt templates
└── migrations/
```

### 5.2 Providers abstraction

```go
// providers/ai_provider.go
type AIProvider interface {
    Chat(messages []Message, opts ChatOptions) (*ChatResponse, error)
    Embed(text string) ([]float32, error)
}

type OpenAIProvider struct{ client *openai.Client }
type AnthropicProvider struct{ client *anthropic.Client }

// Easy to swap
```

### 5.3 Conversation service
- [ ] `Start(userID, scenario, language)`
- [ ] `SendMessage(convID, content, wantAudio)`
- [ ] Build context from conversation history (last 10 messages)
- [ ] Apply system prompt based on level
- [ ] Parse AI response (JSON format)
- [ ] Optional: TTS reply
- [ ] Save messages
- [ ] Track tokens/cost

### 5.4 Explain service
- [ ] Check cache for similar mistakes
- [ ] Generate explanation via GPT-4o-mini
- [ ] Cache result
- [ ] Return formatted

### 5.5 Writing service
- [ ] Receive task + user text
- [ ] Send to GPT-4 with structured prompt
- [ ] Parse JSON response
- [ ] Save assessment
- [ ] Return scores + corrections

### 5.6 Pronunciation service
- [ ] Accept audio file (mp3, wav, m4a)
- [ ] Upload to MinIO
- [ ] Send to Whisper API
- [ ] Phonetic comparison algorithm
- [ ] Word-level alignment
- [ ] Generate feedback
- [ ] Save result

### 5.7 Quota service
- [ ] Daily counters per user
- [ ] Check before each AI call
- [ ] Return 429 if exceeded (with retry-after)
- [ ] Reset midnight UTC

### 5.8 Cost tracking
- [ ] Track tokens per call
- [ ] Calculate cost (per model)
- [ ] Aggregate by user/day
- [ ] Admin dashboard

### 5.9 Гibrid страны
- [ ] Russian users → use GPT-4o (better Cyrillic)
- [ ] English users → use Claude Haiku (cheaper, decent quality)
- [ ] Detect language → choose provider

### 5.10 Тесты
- [ ] Mock OpenAI provider для unit tests
- [ ] Integration с real API (limited budget)
- [ ] Test quota enforcement
- [ ] Test caching

---

## 🎨 Фронтенд задачи

### Web (Next.js):

#### Страницы:
- [ ] `/ai` — AI hub
  - Карточки: Chat, Roleplay, Tutor, Writing
  - Quota status (для free: "3/5 chats remaining")
- [ ] `/ai/chat` — список AI conversations
- [ ] `/ai/chat/:id` — chat UI
  - Сообщения с переводом (tap to reveal)
  - Coррекции грамматики (inline)
  - Voice input button
  - TTS playback ответов
- [ ] `/ai/roleplay` — сценарии
- [ ] `/ai/writing` — Writing assessment
- [ ] `/ai/tutor` — Q&A с tutor

#### Компоненты:
- [ ] `AIChat.tsx` — основной чат интерфейс
- [ ] `Message.tsx`:
  - Tap для перевода
  - Audio play button
  - Corrections badge
- [ ] `VoiceInput.tsx` — запись голоса (MediaRecorder API)
- [ ] `RoleplayCard.tsx`
- [ ] `WritingEditor.tsx` — textarea с word counter
- [ ] `AssessmentResult.tsx` — результат writing
- [ ] `PronunciationCheck.tsx`
- [ ] `QuotaWidget.tsx` — оставшиеся requests

### Mobile (Expo):

#### Critical: Voice features
- [ ] **expo-av** — recording / playback
- [ ] **Audio permissions** — обработка
- [ ] **MediaRecorder** для записи

#### Screens:
- [ ] `ai/index.tsx`
- [ ] `ai/chat/[id].tsx`
- [ ] `ai/roleplay/index.tsx`
- [ ] `ai/writing.tsx`
- [ ] `ai/pronunciation.tsx`

#### Native features:
- [ ] **Push notifications** — "Try new AI conversation!"
- [ ] **Background TTS** — продолжение play в фоне

### Streaming (продвинуто):
- [ ] Server-Sent Events для streaming AI ответов
- [ ] Постепенный вывод текста (как ChatGPT)

---

## ✅ Acceptance Criteria

### Backend:
- [x] ai-service запускается
- [x] OpenAI integration работает
- [x] Whisper транскрибирует
- [x] Quota system enforce'ит limits
- [x] Cost tracking точный
- [x] Кэширование объяснений работает
- [x] Все endpoints возвращают корректные данные

### Frontend:
- [x] Chat UI с AI работает
- [x] Voice input для голоса
- [x] TTS воспроизведение
- [x] Inline grammar corrections
- [x] Roleplay сценарии запускаются
- [x] Writing assessment с feedback
- [x] Pronunciation check показывает scores

### Качество AI:
- [x] Ответы соответствуют user level
- [x] Объяснения понятные (тест на 10 примерах)
- [x] Writing scores коррелируют с реальной оценкой
- [x] Pronunciation accuracy реалистична

---

## 🔬 Тестирование

### Сценарии:
1. **AI Chat A1 уровень:**
   - Юзер пишет "Hola"
   - AI отвечает простым испанским
   - Корректировки если ошибся

2. **Roleplay restaurant:**
   - Запустить scenario
   - Заказать пасту
   - AI продолжает диалог в роли официанта

3. **Explain mistake:**
   - В quiz юзер выбрал неправильно
   - Запросить explain
   - Получить понятное объяснение

4. **Writing test:**
   - Дать prompt
   - Юзер пишет 50 слов
   - Получить scores + corrections

5. **Pronunciation:**
   - Сказать "Hola, ¿cómo estás?"
   - Записать
   - Получить accuracy score

6. **Quota:**
   - Free user — 5 chats / day
   - 6-й запрос → 429 error
   - Premium → unlimited

---

## 📚 Референсы

### Inspiration:
- **Duolingo Max** — главный референс
  - https://blog.duolingo.com/duolingo-max-launch/
- **Speak** — отличный AI conversation
- **Talkpal** — AI language tutor
- **ChatGPT** — общий шаблон чата

### Технические:
- **OpenAI API:** https://platform.openai.com/docs
- **Whisper:** https://platform.openai.com/docs/guides/speech-to-text
- **Anthropic Claude:** https://docs.anthropic.com/
- **OpenAI Realtime API** (voice): https://platform.openai.com/docs/guides/realtime

### Готовые компоненты:
- **Vercel AI SDK:** https://sdk.vercel.ai/ — streaming UI
- **react-speech-recognition** для web
- **expo-av** для mobile

---

## 📝 Замечания

### Cost optimization:
- **Кэширование** explanations агрессивное
- **GPT-4o-mini** для большинства задач
- **GPT-4o** только для важного (writing assessment)
- **Caching layer** для популярных prompts

### Privacy:
- Все conversations хранятся encrypted
- OpenAI Data Privacy: opt-out для training
- Право пользователя удалить historian

### Качество:
- A/B тестирование different prompts
- Сбор feedback (thumbs up/down на каждый AI ответ)
- Метрики качества: response coherence, level appropriateness

### Edge cases:
- Юзер пишет в неподходящем языке → AI просит сменить
- Юзер просит advice по чему-то off-topic → политика
- Юзер вводит запрещенный контент → moderation API
- Очень долгий контекст → суммаризация history

### Безопасность:
- **OpenAI Moderation API** — фильтр запрещенного контента
- **Prompt injection protection** — не дать пользователю переопределить prompt
- **PII removal** — не сохранять личные данные пользователей в AI calls

---

**Предыдущий шаг:** [Phase 4: Социальное](./phase-4-social.md)  
**Следующий шаг:** [Phase 6: Монетизация](./phase-6-monetization.md)
