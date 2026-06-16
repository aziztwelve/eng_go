SET search_path TO courses;

ALTER TABLE user_flashcards DROP COLUMN IF EXISTS transcription;
ALTER TABLE vocabulary DROP COLUMN IF EXISTS transcription;
