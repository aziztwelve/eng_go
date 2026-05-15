// Package scenarios — статика roleplay-сценариев.
//
// На MVP — Go-структуры в коде. Когда сценариев станет много или
// потребуется UGC, переедут в БД (`ai.scenarios` table + admin CRUD).
package scenarios

// Scenario — один roleplay-сценарий.
type Scenario struct {
	ID              string
	Title           string
	Description     string
	UserLevel       string // рекомендуемый CEFR
	Language        string
	AIRole          string // например "Waiter named Carlos"
	Context         string
	InitialMessage  string // первое сообщение от AI (если задан)
	VocabularyFocus []string
	SuccessCriteria []string
}

// allScenarios — каталог. id-формат: "roleplay_<slug>".
var allScenarios = []Scenario{
	{
		ID:          "roleplay_restaurant",
		Title:       "Ordering at a Restaurant",
		Description: "Practice ordering food and drinks in a Spanish restaurant.",
		UserLevel:   "A2",
		Language:    "es",
		AIRole:      "Waiter named Carlos",
		Context:     "You're at a Spanish restaurant. The waiter approaches your table.",
		InitialMessage: "¡Hola! Bienvenido. ¿Qué desea ordenar?",
		VocabularyFocus: []string{"food", "drinks", "polite_phrases"},
		SuccessCriteria: []string{
			"Order at least one main dish",
			"Order at least one drink",
			"Use 'por favor' and 'gracias'",
		},
	},
	{
		ID:          "roleplay_airport",
		Title:       "At the Airport",
		Description: "Check in for a flight, deal with luggage, and find your gate.",
		UserLevel:   "B1",
		Language:    "en",
		AIRole:      "Check-in agent named Sarah",
		Context:     "You're at the airline check-in counter at JFK airport.",
		InitialMessage: "Good morning! Could I see your passport and ticket, please?",
		VocabularyFocus: []string{"travel", "luggage", "directions"},
		SuccessCriteria: []string{
			"Show your passport",
			"Mention number of bags",
			"Ask about gate / boarding time",
		},
	},
	{
		ID:          "roleplay_work",
		Title:       "Work Meeting Introduction",
		Description: "Introduce yourself in a professional setting and present your role.",
		UserLevel:   "B1",
		Language:    "en",
		AIRole:      "Project manager named Alex",
		Context:     "First day at a new job. The team is gathering for a kickoff meeting.",
		InitialMessage: "Hi there! Welcome to the team. Could you introduce yourself?",
		VocabularyFocus: []string{"profession", "experience", "skills"},
		SuccessCriteria: []string{
			"State your name and role",
			"Mention previous experience",
			"Express enthusiasm",
		},
	},
	{
		ID:          "roleplay_hotel",
		Title:       "Hotel Check-in",
		Description: "Check into a hotel, ask about facilities and resolve a small issue.",
		UserLevel:   "A2",
		Language:    "fr",
		AIRole:      "Receptionist named Pierre",
		Context:     "You arrive at a hotel in Paris with a reservation.",
		InitialMessage: "Bonsoir, monsieur/madame ! Avez-vous une réservation ?",
		VocabularyFocus: []string{"hotel", "facilities", "complaints"},
		SuccessCriteria: []string{
			"Provide reservation name",
			"Ask about Wi-Fi or breakfast",
			"Use polite forms",
		},
	},
	{
		ID:          "roleplay_doctor",
		Title:       "At the Doctor's Office",
		Description: "Describe symptoms and answer doctor's questions.",
		UserLevel:   "B1",
		Language:    "en",
		AIRole:      "Doctor",
		Context:     "You feel unwell and visit a clinic. The doctor enters the room.",
		InitialMessage: "Good morning, what brings you in today?",
		VocabularyFocus: []string{"body_parts", "symptoms", "medication"},
		SuccessCriteria: []string{
			"Describe at least two symptoms",
			"Mention duration",
			"Ask about treatment",
		},
	},
}

// ListAll — копия каталога. Filtering — caller side.
func ListAll() []Scenario {
	out := make([]Scenario, len(allScenarios))
	copy(out, allScenarios)
	return out
}

// GetByID — найти по ID. ok=false если нет.
func GetByID(id string) (Scenario, bool) {
	for _, s := range allScenarios {
		if s.ID == id {
			return s, true
		}
	}
	return Scenario{}, false
}

// FilterByLanguageLevel — фильтр для ListScenarios RPC.
// Пустые параметры — wildcards.
func FilterByLanguageLevel(language, level string) []Scenario {
	var out []Scenario
	for _, s := range allScenarios {
		if language != "" && s.Language != language {
			continue
		}
		if level != "" && s.UserLevel != level {
			continue
		}
		out = append(out, s)
	}
	return out
}
