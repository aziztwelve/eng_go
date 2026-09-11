-- Rebalance track sort_order so catalog listings show a balanced level mix.
--
-- The published mobile app requests /tracks?limit=100 while the catalog has
-- 350 tracks (5 levels x 70). With the previous ordering (sort_order ASC,
-- created_at DESC, most sort_order = 0) the first page contained only the
-- newest level, so the Practice level grid showed "Coming soon" for others.
--
-- New scheme: levels interleave round-robin (A1, A2, B1, B2, C1, ...) via
--   sort_order = within_level_index * 5 + level_index
-- Within a level, tracks keep alphabetical (category) order.
--
-- Idempotent: safe to re-run at any time. NOTE: content seeds upsert
-- sort_order from JSON (0), so this seed must run AFTER them — hence 999_.
-- Re-run it whenever new tracks are added (e.g. a C2 pack).

UPDATE courses.learning_tracks AS t
SET sort_order = x.rn * 5 + x.li, updated_at = NOW()
FROM (
    SELECT id,
           (ROW_NUMBER() OVER (PARTITION BY level ORDER BY code) - 1) AS rn,
           (array_position(ARRAY['A1','A2','B1','B2','C1'], level) - 1) AS li
    FROM courses.learning_tracks
    WHERE level IN ('A1','A2','B1','B2','C1')
) AS x
WHERE t.id = x.id;
