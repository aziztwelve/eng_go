-- Remove disabled goals and their tracks. Track lessons are cascaded through
-- track_lessons; standalone lessons that no longer belong to any track are
-- removed as well.
BEGIN;

CREATE TEMP TABLE disabled_track_lessons ON COMMIT DROP AS
SELECT DISTINCT tl.lesson_id
FROM courses.track_lessons tl
JOIN courses.learning_tracks t ON t.id = tl.track_id
WHERE t.motivation && ARRAY['social', 'relocation', 'content']::text[];

DELETE FROM courses.learning_tracks
WHERE motivation && ARRAY['social', 'relocation', 'content']::text[];

DELETE FROM courses.lessons l
WHERE l.id IN (SELECT lesson_id FROM disabled_track_lessons)
  AND NOT EXISTS (SELECT 1 FROM courses.track_lessons tl WHERE tl.lesson_id = l.id);

UPDATE users.profiles
SET motivation = '{}'
WHERE motivation && ARRAY['social', 'relocation', 'content']::text[];

COMMIT;
