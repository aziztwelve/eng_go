-- Phase 7: flashcard_today_queue — приоритетная очередь "На сегодня".
--
-- Юзер может явно запинать карточку как "позаниматься сегодня" — это
-- независимо от SM-2 next_review_at: даже если карточка не due, она
-- попадает в начало сегодняшней practice-сессии.
--
-- queued_for_date: PRIMARY KEY включает дату в timezone юзера (UTC date
-- считается на app-уровне через user.Timezone). При перевалке через
-- midnight queue юзера сбрасывается естественно фильтром
-- WHERE queued_for_date = today.

SET search_path TO courses;

CREATE TABLE IF NOT EXISTS flashcard_today_queue (
    user_id          UUID NOT NULL,
    flashcard_id     UUID NOT NULL REFERENCES user_flashcards(id) ON DELETE CASCADE,
    queued_for_date  DATE NOT NULL,
    added_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    PRIMARY KEY (user_id, flashcard_id, queued_for_date)
);

-- Быстрый list "что у меня на сегодня".
CREATE INDEX IF NOT EXISTS idx_today_queue_user_date
    ON flashcard_today_queue(user_id, queued_for_date);

-- Чистка старых записей: cron'ом раз в неделю удаляем queued_for_date <
-- today - 7 (история за неделю достаточна для аналитики).
-- Реализуется в course-service cleanup-cron — отдельная задача.

COMMENT ON TABLE flashcard_today_queue IS 'Priority queue для feature "На сегодня" (Phase 7). Не влияет на SM-2 расписание. Фильтр: queued_for_date = current_date в timezone юзера.';
