-- Read-only projection for the shared PostgreSQL deployment. SRS remains the only writer.
-- Apply with the migration owner, which can read the srs schema.
CREATE OR REPLACE VIEW courses.flashcard_srs_state AS
 SELECT user_id, CASE WHEN item_type='flashcard' THEN item_id::uuid END AS flashcard_id, strength, repetitions, next_review_at, last_reviewed_at
 FROM srs.user_srs_items WHERE item_type='flashcard';
DO $$ BEGIN
 IF EXISTS(SELECT 1 FROM pg_roles WHERE rolname='course_user') THEN
  GRANT SELECT ON courses.flashcard_srs_state TO course_user;
 END IF;
END $$;
