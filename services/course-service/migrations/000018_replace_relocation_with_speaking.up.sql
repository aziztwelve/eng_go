-- Цель onboarding relocation заменена на speaking (speaking proficiency).
-- Сохраняем существующие привязки треков для пользователей, выбравших переезд.
UPDATE courses.learning_tracks
SET motivation = array_replace(motivation, 'relocation', 'speaking')
WHERE motivation @> ARRAY['relocation']::text[];
