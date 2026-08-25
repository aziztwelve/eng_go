-- Business English is a distinct onboarding goal. Keep existing track IDs,
-- lessons, and user-track progress while moving the dedicated A1 package.
UPDATE courses.learning_tracks
SET motivation = ARRAY['business_english']::text[]
WHERE code LIKE 'A1_BUSINESS%';
