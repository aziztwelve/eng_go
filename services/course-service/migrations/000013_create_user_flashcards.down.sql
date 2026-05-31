SET search_path TO courses;

DROP TRIGGER IF EXISTS update_user_flashcards_updated_at ON user_flashcards;
DROP TABLE IF EXISTS user_flashcards;
