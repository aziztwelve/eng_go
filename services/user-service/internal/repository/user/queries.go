package user

const (
	queryGetProfile = `
		SELECT id, user_id, first_name, last_name, native_lang, target_lang, 
		       bio, avatar_url, date_of_birth, timezone, created_at, updated_at
		FROM profiles
		WHERE user_id = $1
	`

	queryCreateProfile = `
		INSERT INTO profiles (id, user_id, created_at, updated_at)
		VALUES ($1, $2, NOW(), NOW())
		RETURNING id, user_id, first_name, last_name, native_lang, target_lang,
		          bio, avatar_url, date_of_birth, timezone, created_at, updated_at
	`

	queryUpdateProfile = `
		UPDATE profiles
		SET first_name = COALESCE($2, first_name),
		    last_name = COALESCE($3, last_name),
		    native_lang = COALESCE($4, native_lang),
		    target_lang = COALESCE($5, target_lang),
		    bio = COALESCE($6, bio),
		    avatar_url = COALESCE($7, avatar_url),
		    date_of_birth = COALESCE($8, date_of_birth),
		    timezone = COALESCE($9, timezone)
		WHERE user_id = $1
		RETURNING id, user_id, first_name, last_name, native_lang, target_lang,
		          bio, avatar_url, date_of_birth, timezone, created_at, updated_at
	`

	queryGetUserLanguages = `
		SELECT COALESCE(native_lang, ''), COALESCE(target_lang, '')
		FROM profiles
		WHERE user_id = $1
	`
)
