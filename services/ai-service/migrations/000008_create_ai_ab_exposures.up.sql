-- Phase 5.X — A/B exposure logging.
--
-- ai_ab_exposures фиксирует факт «такому-то юзеру был назначен такой-то
-- variant в таком-то эксперименте» — для последующей аналитики:
--   * корреляции variant'а с retention / engagement / cost
--   * проверки гипотезы что распределение действительно равномерное
--   * cross-join с ai_messages для unit-economics (cost per variant)
--
-- Записи идемпотентны: первый assignment фиксируется, повторные Pick'и
-- → UPDATE (last_seen_at, exposure_count++). Это позволяет иметь
-- ровно одну строку на (user_id, experiment, variant_id) и при этом
-- знать, как часто юзер «видит» вариант.
--
-- Хранение: в `ai` schema, рядом с остальными ai-данными (мы трактуем
-- exposure events как часть AI-домена, не отдельный analytics warehouse).

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_ab_exposures (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID         NOT NULL,
    experiment      TEXT         NOT NULL,
    variant_id      TEXT         NOT NULL,
    first_seen_at   TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    last_seen_at    TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    exposure_count  BIGINT       NOT NULL DEFAULT 1,

    CONSTRAINT ai_ab_exposures_uniq UNIQUE (user_id, experiment, variant_id)
);

-- Для analytics: per-experiment per-variant счётчики.
CREATE INDEX IF NOT EXISTS idx_ai_ab_exposures_exp_variant
    ON ai_ab_exposures(experiment, variant_id);

-- Для admin-просмотра конкретного юзера.
CREATE INDEX IF NOT EXISTS idx_ai_ab_exposures_user
    ON ai_ab_exposures(user_id);

-- Aggregate view: distribution per variant. Полезно увидеть
-- «control: 800 users / variant_a: 200 users» одним запросом.
CREATE OR REPLACE VIEW ai_ab_distribution AS
SELECT
    experiment,
    variant_id,
    COUNT(DISTINCT user_id)               AS unique_users,
    SUM(exposure_count)                   AS total_exposures,
    MIN(first_seen_at)                    AS earliest,
    MAX(last_seen_at)                     AS latest
FROM ai_ab_exposures
GROUP BY experiment, variant_id;
