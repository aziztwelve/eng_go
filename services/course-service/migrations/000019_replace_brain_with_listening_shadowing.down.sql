UPDATE courses.learning_tracks
SET motivation = array_replace(motivation, 'listening_shadowing', 'brain')
WHERE motivation @> ARRAY['listening_shadowing']::text[];
