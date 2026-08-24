-- Rename the onboarding goal used to select Listening & Shadowing tracks.
-- Existing tracks retain their IDs, lessons, and user-track assignments.
UPDATE courses.learning_tracks
SET motivation = array_replace(motivation, 'brain', 'listening_shadowing')
WHERE motivation @> ARRAY['brain']::text[];
