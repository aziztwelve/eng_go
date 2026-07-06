-- Phase 8: персональный план треков пользователя.
-- Материализованная связь user <-> track (вместо динамического матчинга).
-- user_id — id пользователя из auth (public.users), FK намеренно НЕ ставим
-- (кросс-сервисная граница, как у user_flashcards).
CREATE TABLE IF NOT EXISTS courses.user_tracks (
    user_id     UUID NOT NULL,
    track_id    UUID NOT NULL REFERENCES courses.learning_tracks(id) ON DELETE CASCADE,
    order_index INT  NOT NULL DEFAULT 0,
    status      VARCHAR(16) NOT NULL DEFAULT 'active',     -- active | locked | completed
    source      VARCHAR(16) NOT NULL DEFAULT 'onboarding', -- onboarding | manual | recommend
    added_at    TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at  TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, track_id)
);

CREATE INDEX IF NOT EXISTS idx_user_tracks_user_order
    ON courses.user_tracks(user_id, order_index);
CREATE INDEX IF NOT EXISTS idx_user_tracks_user_status
    ON courses.user_tracks(user_id, status);

COMMENT ON TABLE courses.user_tracks IS 'Персональный план треков пользователя (Phase 8)';
COMMENT ON COLUMN courses.user_tracks.status IS 'active | locked | completed';
COMMENT ON COLUMN courses.user_tracks.source IS 'onboarding | manual | recommend';
