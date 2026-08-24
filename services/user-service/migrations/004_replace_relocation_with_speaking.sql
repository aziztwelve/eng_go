-- Цель onboarding relocation заменена на speaking (speaking proficiency).
-- Выбор существующих пользователей мигрируется без потери данных.
UPDATE profiles
SET motivation = array_replace(motivation, 'relocation', 'speaking')
WHERE motivation @> ARRAY['relocation']::text[];
