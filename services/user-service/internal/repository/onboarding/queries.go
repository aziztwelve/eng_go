// Package onboarding — repository-слой для онбординга юзера.
//
// Все методы оперируют той же таблицей profiles, что и обычный
// user-repository, но фокусируются на onboarding-полях.
package onboarding

const (
	// onboardingColumns — все колонки нужные для OnboardingState.
	// Совпадают с migration 002_onboarding_fields.sql + native_lang,
	// target_lang, date_of_birth (которые уже были в 001).
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
		onboarded_at
	`

	queryGetOnboarding = `
		SELECT ` + onboardingColumns + `
		FROM profiles
		WHERE user_id = $1
	`

	// queryUpsertOnboarding — INSERT ON CONFLICT для PatchState.
	// Если строки в profiles ещё нет (juxt-created user без profile),
	// создаём с минимумом полей. Иначе COALESCE-обновление по флагам.
	//
	// Каждое поле обновляется условно через COALESCE($N, current),
	// где $N — переданное значение (NULL если не указали).
	// Для motivation используем флаг $7 (motivation_set):
	//   $7 = true  → motivation := $6
	//   $7 = false → motivation := profiles.motivation (без изменений)
	queryUpsertOnboarding = `
		INSERT INTO profiles (id, user_id, created_at, updated_at,
			native_lang, target_lang, proficiency_level, daily_goal_xp,
			motivation, signup_source, placement_score, date_of_birth)
		VALUES (gen_random_uuid(), $1, NOW(), NOW(),
			$2, $3, $4, $5,
			CASE WHEN $7::boolean THEN COALESCE($6::text[], '{}') ELSE '{}' END,
			$8, $9,
			CASE WHEN $10::text IS NOT NULL AND $10 <> '' THEN $10::date ELSE NULL END
		)
		ON CONFLICT (user_id) DO UPDATE SET
			native_lang        = COALESCE($2, profiles.native_lang),
			target_lang        = COALESCE($3, profiles.target_lang),
			proficiency_level  = COALESCE($4, profiles.proficiency_level),
			daily_goal_xp      = COALESCE($5, profiles.daily_goal_xp),
			motivation         = CASE WHEN $7::boolean THEN COALESCE($6::text[], '{}') ELSE profiles.motivation END,
			signup_source      = COALESCE($8, profiles.signup_source),
			placement_score    = COALESCE($9, profiles.placement_score),
			date_of_birth      = CASE
				WHEN $10::text IS NOT NULL AND $10 <> '' THEN $10::date
				ELSE profiles.date_of_birth
			END,
			updated_at         = NOW()
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
