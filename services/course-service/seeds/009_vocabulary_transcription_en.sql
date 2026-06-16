-- Phase 7: транскрипция (IPA) для английского словаря A1 (seed 007).
--
-- Идемпотентно: UPDATE по (language='en', lower(word)). Безопасно
-- перезапускать. Источник — General American IPA. Для глаголов
-- хранится фраза целиком ("to eat" → /tə iːt/), т.к. в vocabulary
-- слово хранится с частицей.
--
-- Новые слова в словаре, отсутствующие в списке ниже, останутся с
-- transcription = NULL (на карточке просто не показывается).

SET search_path TO courses;

UPDATE vocabulary v
SET transcription = t.ipa
FROM (VALUES
    ('apple',        '/ˈæp.əl/'),
    ('banana',       '/bəˈnæn.ə/'),
    ('bathroom',     '/ˈbæθ.ruːm/'),
    ('bedroom',      '/ˈbed.ruːm/'),
    ('bread',        '/bred/'),
    ('brother',      '/ˈbrʌð.ər/'),
    ('children',     '/ˈtʃɪl.drən/'),
    ('coffee',       '/ˈkɔː.fi/'),
    ('daughter',     '/ˈdɔː.tər/'),
    ('evening',      '/ˈiːv.nɪŋ/'),
    ('father',       '/ˈfɑː.ðər/'),
    ('five',         '/faɪv/'),
    ('friday',       '/ˈfraɪ.deɪ/'),
    ('friend',       '/frend/'),
    ('good evening', '/ˌɡʊd ˈiːv.nɪŋ/'),
    ('good morning', '/ˌɡʊd ˈmɔːr.nɪŋ/'),
    ('good night',   '/ˌɡʊd ˈnaɪt/'),
    ('goodbye',      '/ˌɡʊdˈbaɪ/'),
    ('hello',        '/həˈloʊ/'),
    ('hundred',      '/ˈhʌn.drəd/'),
    ('kitchen',      '/ˈkɪtʃ.ən/'),
    ('living room',  '/ˈlɪv.ɪŋ ˌruːm/'),
    ('milk',         '/mɪlk/'),
    ('monday',       '/ˈmʌn.deɪ/'),
    ('morning',      '/ˈmɔːr.nɪŋ/'),
    ('mother',       '/ˈmʌð.ər/'),
    ('name',         '/neɪm/'),
    ('night',        '/naɪt/'),
    ('no',           '/noʊ/'),
    ('one',          '/wʌn/'),
    ('parents',      '/ˈper.ənts/'),
    ('please',       '/pliːz/'),
    ('sister',       '/ˈsɪs.tər/'),
    ('son',          '/sʌn/'),
    ('sorry',        '/ˈsɑːr.i/'),
    ('sunday',       '/ˈsʌn.deɪ/'),
    ('tea',          '/tiː/'),
    ('ten',          '/ten/'),
    ('thank you',    '/ˈθæŋk juː/'),
    ('three',        '/θriː/'),
    ('to drink',     '/tə drɪŋk/'),
    ('to eat',       '/tə iːt/'),
    ('to read',      '/tə riːd/'),
    ('to sleep',     '/tə sliːp/'),
    ('to work',      '/tə wɜːrk/'),
    ('today',        '/təˈdeɪ/'),
    ('tomato',       '/təˈmeɪ.toʊ/'),
    ('tomorrow',     '/təˈmɔːr.oʊ/'),
    ('twenty',       '/ˈtwen.ti/'),
    ('two',          '/tuː/'),
    ('water',        '/ˈwɔː.tər/'),
    ('yes',          '/jes/')
) AS t(word, ipa)
WHERE v.language = 'en' AND lower(v.word) = t.word;
