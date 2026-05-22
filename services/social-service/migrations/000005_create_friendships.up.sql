-- Phase 4.5: friendships — связи между пользователями.
--
-- Хранится в нормализованном виде: всегда `user_id_1 < user_id_2`, чтобы
-- pair (A, B) и (B, A) были одной записью. Поле `requested_by` помнит,
-- кто инициатор (для логики «нельзя принять свой запрос»).
--
-- Статусы:
--   - pending  : запрос отправлен, ждём accept/reject;
--   - accepted : дружба активна, оба видят друг друга в leaderboard;
--   - blocked  : запрос отклонён или заблокирован — повторно отправлять
--                нельзя, но можно «разблокировать» удалением записи
--                стороной, которая блокировала.
--
-- Каскадного удаления users.user_id здесь нет — user-service отдельный
-- сервис; orphan-чистка делается отдельным job'ом (на MVP не нужна).

SET search_path TO social;

CREATE TABLE IF NOT EXISTS friendships (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id_1       UUID         NOT NULL,
    user_id_2       UUID         NOT NULL,
    status          VARCHAR(20)  NOT NULL,
    requested_by    UUID         NOT NULL,

    created_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW(),

    CHECK (user_id_1 < user_id_2),
    CHECK (status IN ('pending', 'accepted', 'blocked')),
    CHECK (requested_by IN (user_id_1, user_id_2)),
    UNIQUE (user_id_1, user_id_2)
);

-- Чтения по обеим сторонам пары (GetFriends / GetPending фильтруют
-- сначала по user'у, потом по status'у).
CREATE INDEX IF NOT EXISTS idx_friendships_user1_status
    ON friendships (user_id_1, status);
CREATE INDEX IF NOT EXISTS idx_friendships_user2_status
    ON friendships (user_id_2, status);

-- Pending requests для конкретного юзера обычно сортируются по дате.
CREATE INDEX IF NOT EXISTS idx_friendships_pending_created
    ON friendships (status, created_at DESC)
    WHERE status = 'pending';

-- Права доступа social_user выдаёт ALTER DEFAULT PRIVILEGES в
-- deploy/compose/core/init-db.sql (как и для других таблиц social).
