UPDATE courses.learning_tracks
SET motivation = array_replace(motivation, 'speaking', 'relocation')
WHERE motivation @> ARRAY['speaking']::text[];
