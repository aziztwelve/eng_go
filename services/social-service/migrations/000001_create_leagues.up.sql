-- Phase 4: leagues — каталог 10 лиг (Bronze → Diamond).
-- Static reference table. Seed внутри миграции (idempotent через ON CONFLICT).

SET search_path TO social;

CREATE TABLE IF NOT EXISTS leagues (
    id        INT PRIMARY KEY,
    code      VARCHAR(20) UNIQUE NOT NULL,
    name      VARCHAR(50)        NOT NULL,
    icon_url  TEXT               NOT NULL DEFAULT '',
    color     VARCHAR(20)        NOT NULL DEFAULT '',
    tier      INT                NOT NULL,

    CHECK (tier BETWEEN 1 AND 10)
);

CREATE INDEX IF NOT EXISTS idx_leagues_tier ON leagues (tier);

-- Seed (idempotent)
INSERT INTO leagues (id, code, name, icon_url, color, tier) VALUES
    (1,  'bronze',    'Bronze League',    '/leagues/bronze.png',    '#CD7F32', 1),
    (2,  'silver',    'Silver League',    '/leagues/silver.png',    '#C0C0C0', 2),
    (3,  'gold',      'Gold League',      '/leagues/gold.png',      '#FFD700', 3),
    (4,  'sapphire',  'Sapphire League',  '/leagues/sapphire.png',  '#0F52BA', 4),
    (5,  'ruby',      'Ruby League',      '/leagues/ruby.png',      '#E0115F', 5),
    (6,  'emerald',   'Emerald League',   '/leagues/emerald.png',   '#50C878', 6),
    (7,  'amethyst',  'Amethyst League',  '/leagues/amethyst.png',  '#9966CC', 7),
    (8,  'pearl',     'Pearl League',     '/leagues/pearl.png',     '#EAE0C8', 8),
    (9,  'obsidian',  'Obsidian League',  '/leagues/obsidian.png',  '#0B1215', 9),
    (10, 'diamond',   'Diamond League',   '/leagues/diamond.png',   '#B9F2FF', 10)
ON CONFLICT (id) DO NOTHING;

COMMENT ON TABLE leagues IS
    'Каталог 10 лиг по аналогии с Duolingo. tier=1 (Bronze) ↔ 10 (Diamond).';
