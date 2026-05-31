package service

import (
	"context"
	"sort"
	"strings"
)

// =====================================================================
// Phase 7: SuggestFlashcards (mock provider)
// =====================================================================
//
// На v1 рекомендации берутся из in-memory pool'а под ключом
// (level + goal). pain_point пока используется только для упорядочивания
// (буст карточек, помеченных как "speaking-friendly", если pain_point =
// fear_speaking). exclude_words — игнорируем уже добавленные.
//
// Когда подключим LLM-провайдер: prompt-based generator в провайдер,
// fallback на этот пул при quota/error.

// SuggestFlashcardsInput — DTO для сервисного слоя.
type SuggestFlashcardsInput struct {
	UserID         string
	Level          string // 'beginner' | 'a1' | 'a2' | 'b1' | 'b2' | 'just_for_fun'
	Goal           string // motivation[0]: 'work' | 'travel' | 'exam' | ...
	PainPoint      string // 'fear_speaking' | 'lack_vocab' | ...
	TargetLanguage string // 'en'
	NativeLanguage string // 'ru'
	Count          int32
	ExcludeWords   []string // lower-case
}

// FlashcardSuggestion — DTO результата.
type FlashcardSuggestion struct {
	Word            string
	Translation     string
	Definition      string
	ExampleSentence string
	Reason          string
	POS             string
	Level           string
}

// SuggestFlashcards — отдаёт `count` карточек по профилю юзера.
// Никаких side-effects (БД-записей).
func (s *Service) SuggestFlashcards(ctx context.Context, in SuggestFlashcardsInput) ([]FlashcardSuggestion, bool, error) {
	if in.UserID == "" {
		return nil, false, ErrInvalidArgument
	}
	count := int(in.Count)
	if count <= 0 {
		count = 5
	}
	if count > 10 {
		count = 10
	}
	target := strings.ToLower(strings.TrimSpace(in.TargetLanguage))
	if target == "" {
		target = "en"
	}
	level := normalizeLevel(in.Level)
	goal := normalizeGoal(in.Goal)
	excluded := make(map[string]struct{}, len(in.ExcludeWords))
	for _, w := range in.ExcludeWords {
		excluded[strings.ToLower(strings.TrimSpace(w))] = struct{}{}
	}

	pool := flashcardSuggestionPool(target, level, goal)
	// Stable order чтобы одинаковые входы давали одинаковый список.
	sort.SliceStable(pool, func(i, j int) bool {
		return pool[i].Word < pool[j].Word
	})

	// Speaking boost: если pain_point=fear_speaking, ставим карточки с
	// тегом ☎ (помеченные spoken-friendly через POS=verb/phrase) первыми.
	if in.PainPoint == "fear_speaking" {
		sort.SliceStable(pool, func(i, j int) bool {
			return isSpeakingFriendly(pool[i]) && !isSpeakingFriendly(pool[j])
		})
	}

	out := make([]FlashcardSuggestion, 0, count)
	for _, c := range pool {
		if _, skip := excluded[strings.ToLower(c.Word)]; skip {
			continue
		}
		out = append(out, c)
		if len(out) >= count {
			break
		}
	}
	exhausted := len(out) < count
	return out, exhausted, nil
}

func isSpeakingFriendly(c FlashcardSuggestion) bool {
	return c.POS == "verb" || c.POS == "phrase"
}

// normalizeLevel приводит произвольные значения к канонической шкале.
// Любое значение, отличное от a1-b2, маппится в a2 (default).
func normalizeLevel(raw string) string {
	switch strings.ToLower(strings.TrimSpace(raw)) {
	case "a1", "beginner":
		return "a1"
	case "a2":
		return "a2"
	case "b1":
		return "b1"
	case "b2", "just_for_fun":
		return "b2"
	}
	return "a2"
}

func normalizeGoal(raw string) string {
	g := strings.ToLower(strings.TrimSpace(raw))
	switch g {
	case "work", "travel", "exam", "study", "career":
		return g
	}
	return "general"
}

// flashcardSuggestionPool — curated pool для en target language.
// Структура: (level → goal → []FlashcardSuggestion). Для других target
// языков пока fallback на en (TODO: расширить когда добавим ru/es/de).
//
// Карточки специально подобраны под уровень/цель: a2/work → офисная
// лексика, b1/travel → travel-фразы, и т.д. Каждая карточка имеет
// reason — короткое объяснение для UI tooltip.
func flashcardSuggestionPool(target, level, goal string) []FlashcardSuggestion {
	if target != "en" {
		// Фоллбэк: для unsupported target отдаём пустой пул — caller
		// получит exhausted=true. Когда добавим словарь en→es/de —
		// расширим этот switch.
		return nil
	}

	key := level + "/" + goal
	switch key {
	// ------- a1 -------
	case "a1/work", "a1/career":
		return []FlashcardSuggestion{
			{Word: "office", Translation: "офис", Definition: "place where people work", ExampleSentence: "I go to the office every morning.", Reason: "базовая офисная лексика для A1", POS: "noun", Level: "a1"},
			{Word: "meeting", Translation: "встреча, совещание", ExampleSentence: "We have a meeting at 10.", Reason: "ключевое слово work + a1", POS: "noun", Level: "a1"},
			{Word: "colleague", Translation: "коллега", ExampleSentence: "My colleague is from Spain.", Reason: "часто говорят о людях на работе", POS: "noun", Level: "a1"},
			{Word: "schedule", Translation: "расписание", ExampleSentence: "Check the schedule, please.", Reason: "работа = планирование", POS: "noun", Level: "a1"},
			{Word: "report", Translation: "отчёт", ExampleSentence: "I need to write a report.", Reason: "офисный документ", POS: "noun", Level: "a1"},
			{Word: "to start", Translation: "начинать", ExampleSentence: "Let's start the meeting.", Reason: "verb для активных действий на работе", POS: "verb", Level: "a1"},
		}
	case "a1/travel":
		return []FlashcardSuggestion{
			{Word: "airport", Translation: "аэропорт", ExampleSentence: "The airport is far from here.", Reason: "первое слово для путешествий", POS: "noun", Level: "a1"},
			{Word: "ticket", Translation: "билет", ExampleSentence: "I bought a ticket online.", Reason: "обязательное для travel", POS: "noun", Level: "a1"},
			{Word: "luggage", Translation: "багаж", ExampleSentence: "My luggage is heavy.", Reason: "travel-сценарий", POS: "noun", Level: "a1"},
			{Word: "to book", Translation: "бронировать", ExampleSentence: "I want to book a hotel.", Reason: "глагол путешествий", POS: "verb", Level: "a1"},
			{Word: "to arrive", Translation: "прибывать", ExampleSentence: "We arrive at 8 PM.", Reason: "travel verb", POS: "verb", Level: "a1"},
			{Word: "passport", Translation: "паспорт", ExampleSentence: "Show me your passport.", Reason: "border-control базовое", POS: "noun", Level: "a1"},
		}
	// ------- a2 -------
	case "a2/work", "a2/career":
		return []FlashcardSuggestion{
			{Word: "deadline", Translation: "крайний срок", ExampleSentence: "The deadline is Friday.", Reason: "часто звучит в офисе на a2", POS: "noun", Level: "a2"},
			{Word: "to negotiate", Translation: "договариваться", ExampleSentence: "Let's negotiate the price.", Reason: "продвинутый work verb", POS: "verb", Level: "a2"},
			{Word: "feedback", Translation: "обратная связь", ExampleSentence: "Can you give me feedback?", Reason: "ключевое слово в work-культуре", POS: "noun", Level: "a2"},
			{Word: "to delegate", Translation: "делегировать", ExampleSentence: "I will delegate this task.", Reason: "soft-skill verb", POS: "verb", Level: "a2"},
			{Word: "agenda", Translation: "повестка", ExampleSentence: "What's on the agenda today?", Reason: "встречи + a2", POS: "noun", Level: "a2"},
			{Word: "to follow up", Translation: "отслеживать, перезванивать", ExampleSentence: "I'll follow up tomorrow.", Reason: "корпоративная phrase", POS: "phrase", Level: "a2"},
			{Word: "remote", Translation: "удалённый", ExampleSentence: "I work remote.", Reason: "актуально для tech-карьеры", POS: "adj", Level: "a2"},
		}
	case "a2/travel":
		return []FlashcardSuggestion{
			{Word: "reservation", Translation: "бронирование", ExampleSentence: "I have a reservation under Ivanov.", Reason: "hotel/restaurant базовое", POS: "noun", Level: "a2"},
			{Word: "to recommend", Translation: "рекомендовать", ExampleSentence: "Can you recommend a restaurant?", Reason: "топ verb для travel", POS: "verb", Level: "a2"},
			{Word: "directions", Translation: "указания (как пройти)", ExampleSentence: "Could you give me directions?", Reason: "ориентация в городе", POS: "noun", Level: "a2"},
			{Word: "to check in", Translation: "регистрироваться", ExampleSentence: "We checked in at the hotel.", Reason: "обязательный travel-phrase", POS: "phrase", Level: "a2"},
			{Word: "currency", Translation: "валюта", ExampleSentence: "What's the local currency?", Reason: "финансы в путешествии", POS: "noun", Level: "a2"},
			{Word: "to wander", Translation: "бродить", ExampleSentence: "I love to wander in old cities.", Reason: "красивый travel verb", POS: "verb", Level: "a2"},
		}
	// ------- b1 -------
	case "b1/work", "b1/career":
		return []FlashcardSuggestion{
			{Word: "stakeholder", Translation: "заинтересованная сторона", ExampleSentence: "We need approval from all stakeholders.", Reason: "корпоративная b1-лексика", POS: "noun", Level: "b1"},
			{Word: "to streamline", Translation: "оптимизировать процесс", ExampleSentence: "We streamlined the onboarding.", Reason: "business-verb для b1", POS: "verb", Level: "b1"},
			{Word: "leverage", Translation: "использовать, задействовать", ExampleSentence: "Let's leverage our network.", Reason: "топ b1 corporate verb", POS: "verb", Level: "b1"},
			{Word: "rollout", Translation: "запуск, развёртывание", ExampleSentence: "Plan the rollout for Q2.", Reason: "tech/product-management", POS: "noun", Level: "b1"},
			{Word: "to align", Translation: "согласовывать", ExampleSentence: "Let's align on the goals.", Reason: "часто в meetings", POS: "verb", Level: "b1"},
			{Word: "scope", Translation: "охват, scope проекта", ExampleSentence: "The scope is too broad.", Reason: "project-management slang", POS: "noun", Level: "b1"},
			{Word: "to push back", Translation: "оспаривать, возражать", ExampleSentence: "I want to push back on this.", Reason: "soft-skill phrase", POS: "phrase", Level: "b1"},
		}
	case "b1/travel":
		return []FlashcardSuggestion{
			{Word: "itinerary", Translation: "маршрут (детальный план)", ExampleSentence: "Here's our itinerary for next week.", Reason: "продвинутый travel-noun", POS: "noun", Level: "b1"},
			{Word: "to commute", Translation: "ездить регулярно", ExampleSentence: "She commutes from Brighton.", Reason: "ежедневные поездки", POS: "verb", Level: "b1"},
			{Word: "off the beaten path", Translation: "вдали от туристических троп", ExampleSentence: "Let's go somewhere off the beaten path.", Reason: "красивая travel-phrase b1", POS: "phrase", Level: "b1"},
			{Word: "scenic", Translation: "живописный", ExampleSentence: "What a scenic view!", Reason: "описание путешествий", POS: "adj", Level: "b1"},
			{Word: "layover", Translation: "пересадка", ExampleSentence: "I had a 6-hour layover.", Reason: "air-travel специфическое", POS: "noun", Level: "b1"},
		}
	// ------- b2 (включая just_for_fun) -------
	case "b2/work", "b2/career":
		return []FlashcardSuggestion{
			{Word: "to escalate", Translation: "эскалировать", ExampleSentence: "Let's escalate this to management.", Reason: "продвинутая corporate verb", POS: "verb", Level: "b2"},
			{Word: "buy-in", Translation: "согласие, поддержка", ExampleSentence: "We need exec buy-in.", Reason: "топ idiom для consensus-building", POS: "noun", Level: "b2"},
			{Word: "to delineate", Translation: "разграничивать, очерчивать", ExampleSentence: "Let's delineate responsibilities.", Reason: "academic-corporate verb", POS: "verb", Level: "b2"},
			{Word: "contingency", Translation: "запасной план", ExampleSentence: "What's our contingency plan?", Reason: "risk-management", POS: "noun", Level: "b2"},
			{Word: "to bridge the gap", Translation: "ликвидировать разрыв", ExampleSentence: "We need to bridge the gap between teams.", Reason: "soft-skill idiom", POS: "phrase", Level: "b2"},
			{Word: "throughput", Translation: "пропускная способность", ExampleSentence: "Our throughput doubled.", Reason: "tech/ops термин", POS: "noun", Level: "b2"},
		}
	}

	// Generic fallback: смесь общеупотребительных слов уровня A2-B1.
	return []FlashcardSuggestion{
		{Word: "to figure out", Translation: "разобраться, понять", ExampleSentence: "I'll figure it out.", Reason: "топ-фраза для повседневной речи", POS: "phrase", Level: "a2"},
		{Word: "to come up with", Translation: "придумать", ExampleSentence: "Can you come up with a name?", Reason: "everyday phrasal verb", POS: "phrase", Level: "a2"},
		{Word: "actually", Translation: "на самом деле", ExampleSentence: "Actually, I disagree.", Reason: "filler-word, важен для естественной речи", POS: "adv", Level: "a2"},
		{Word: "to be willing to", Translation: "быть готовым", ExampleSentence: "Are you willing to try?", Reason: "продвинутая конструкция", POS: "phrase", Level: "b1"},
		{Word: "to look forward to", Translation: "ждать с нетерпением", ExampleSentence: "I look forward to meeting you.", Reason: "формальная phrase", POS: "phrase", Level: "a2"},
		{Word: "appreciate", Translation: "ценить, благодарить", ExampleSentence: "I appreciate your help.", Reason: "вежливая лексика", POS: "verb", Level: "a2"},
	}
}
