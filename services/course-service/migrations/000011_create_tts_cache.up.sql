-- Phase 2: TTS cache — кэш сгенерированных аудио (текст + язык +
-- голос → ссылка на MinIO). На текущей итерации эндпоинты
-- Synthesize / GetByText работают как stub'ы и читают/пишут в эту
-- таблицу. Реальная интеграция с Google Cloud TTS / ElevenLabs —
-- Phase 5 (см. план).

SET search_path TO courses;

CREATE TABLE IF NOT EXISTS tts_cache (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    text        TEXT NOT NULL,
    text_md5    CHAR(32) NOT NULL,
    language    VARCHAR(10) NOT NULL,
    voice       VARCHAR(50) NOT NULL DEFAULT 'default',
    audio_url   TEXT NOT NULL,
    duration_ms INT,
    created_at  TIMESTAMP NOT NULL DEFAULT NOW()
);

-- text_md5 хранится отдельной колонкой (нельзя CREATE INDEX по
-- выражению с MD5 в UNIQUE без отдельного computed column в pg <12;
-- безопаснее держать как реальную колонку).
CREATE UNIQUE INDEX IF NOT EXISTS idx_tts_cache_unique
    ON tts_cache(text_md5, language, voice);

CREATE INDEX IF NOT EXISTS idx_tts_cache_lang
    ON tts_cache(language);

COMMENT ON TABLE tts_cache IS
    'Кэш TTS: text + language + voice → audio_url (MinIO). ' ||
    'Заполняется TTS provider; на phase-2 — stub.';

COMMENT ON COLUMN tts_cache.text_md5 IS
    'MD5(text) для быстрых уникальных lookup. Заполняется приложением.';
