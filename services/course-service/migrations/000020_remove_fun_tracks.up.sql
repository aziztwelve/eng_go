-- The “fun” onboarding goal and all tracks assigned exclusively to it were removed.
DELETE FROM courses.learning_tracks
WHERE motivation @> ARRAY['fun']::text[];
