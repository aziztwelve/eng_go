// Package onboarding — repository-слой для онбординга юзера.
//
// Все методы оперируют той же таблицей profiles, что и обычный
// user-repository, но фокусируются на onboarding-полях.
package onboarding

const (
	// onboardingColumns — все колонки нужные для OnboardingState.
	// v2: native_lang/target_lang/proficiency_level/daily_goal_xp/motivation/
	//     signup_source/placement_score/date_of_birth/onboarded_at.
	// v3 (Oki-style): + 10 эмоциональных и flow-полей. См.
	// docs/tasks/mob/onboarding-v3-oki-style.md §2.1.
	onboardingColumns = `
		user_id,
		native_lang,
		target_lang,
		proficiency_level,
		daily_goal_xp,
		motivation,
		signup_source,
		placement_score,
		date_of_birth,
		onboarded_at,
		age_bracket,
		daily_commit_minutes,
		pain_point,
		speaking_situation,
		past_blocker,
		future_regret,
		emotional_reaction,
		reminder_slot,
		paywall_seen_at,
		paywall_choice
	`

	queryGetOnboarding = `
		SELECT ` + onboardingColumns + `
		FROM profiles
		WHERE user_id = $1
	`

	// queryUpsertOnboarding — INSERT ON CONFLICT для PatchState.
	// Если строки в profiles ещё нет, создаём с минимумом полей. Иначе
	// COALESCE-обновление по флагам.
	//
	// Параметры:
	//   $1  user_id
	//   $2  native_language          (text, nullable)
	//   $3  target_language          (text, nullable)
	//   $4  proficiency_level        (text, nullable)
	//   $5  daily_goal_xp            (int, nullable)
	//   $6  motivation               (text[], nullable)
	//   $7  motivation_set           (bool)
	//   $8  signup_source            (text, nullable)
	//   $9  placement_score          (int, nullable)
	//   $10 date_of_birth            (text 'YYYY-MM-DD' or '')
	//   $11 age_bracket              (text, nullable)
	//   $12 daily_commit_minutes     (int, nullable)
	//   $13 pain_point               (text, nullable)
	//   $14 speaking_situation       (text, nullable)
	//   $15 past_blocker             (text, nullable)
	//   $16 future_regret            (text, nullable)
	//   $17 emotional_reaction       (text, nullable)
	//   $18 reminder_slot            (text, nullable)
	//   $19 paywall_seen_at          (timestamptz, nullable)
	//   $20 paywall_choice           (text, nullable)
	queryUpsertOnboarding = `
		INSERT INTO profiles (id, user_id, created_at, updated_at,
			native_lang, target_lang, proficiency_level, daily_goal_xp,
			motivation, signup_source, placement_score, date_of_birth,
			age_bracket, daily_commit_minutes, pain_point, speaking_situation,
			past_blocker, future_regret, emotional_reaction, reminder_slot,
			paywall_seen_at, paywall_choice)
		VALUES (gen_random_uuid(), $1, NOW(), NOW(),
			$2, $3, $4, $5,
			CASE WHEN $7::boolean THEN COALESCE($6::text[], '{}') ELSE '{}' END,
			$8, $9,
			CASE WHEN $10::text IS NOT NULL AND $10 <> '' THEN $10::date ELSE NULL END,
			$11, $12, $13, $14, $15, $16, $17, $18, $19, $20
		)
		ON CONFLICT (user_id) DO UPDATE SET
			native_lang          = COALESCE($2, profiles.native_lang),
			target_lang          = COALESCE($3, profiles.target_lang),
			proficiency_level    = COALESCE($4, profiles.proficiency_level),
			daily_goal_xp        = COALESCE($5, profiles.daily_goal_xp),
			motivation           = CASE WHEN $7::boolean THEN COALESCE($6::text[], '{}') ELSE profiles.motivation END,
			signup_source        = COALESCE($8, profiles.signup_source),
			placement_score      = COALESCE($9, profiles.placement_score),
			date_of_birth        = CASE
				WHEN $10::text IS NOT NULL AND $10 <> '' THEN $10::date
				ELSE profiles.date_of_birth
			END,
			age_bracket          = COALESCE($11, profiles.age_bracket),
			daily_commit_minutes = COALESCE($12, profiles.daily_commit_minutes),
			pain_point           = COALESCE($13, profiles.pain_point),
			speaking_situation   = COALESCE($14, profiles.speaking_situation),
			past_blocker         = COALESCE($15, profiles.past_blocker),
			future_regret        = COALESCE($16, profiles.future_regret),
			emotional_reaction   = COALESCE($17, profiles.emotional_reaction),
			reminder_slot        = COALESCE($18, profiles.reminder_slot),
			paywall_seen_at      = COALESCE($19, profiles.paywall_seen_at),
			paywall_choice       = COALESCE($20, profiles.paywall_choice),
			updated_at           = NOW()
		RETURNING ` + onboardingColumns + `
	`

	queryCompleteOnboarding = `
		INSERT INTO profiles (id, user_id, created_at, updated_at, onboarded_at)
		VALUES (gen_random_uuid(), $1, NOW(), NOW(), NOW())
		ON CONFLICT (user_id) DO UPDATE SET
			onboarded_at = COALESCE(profiles.onboarded_at, NOW()),
			updated_at = NOW()
		RETURNING ` + onboardingColumns + `
	`
)
