-- Track: B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('cccbff78-82e6-5250-b990-1180da80bd0a', 'B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM', 'Связная речь, редукции и ритм', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Связная речь, редукции и ритм».', '{"en":"Connected Speech, Reductions and Rhythm","ru":"Связная речь, редукции и ритм"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for connected speech, reductions and rhythm.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Связная речь, редукции и ритм»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Weak Forms and Reductions","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e70901e7-e963-5330-b2be-97aec33296fa', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D01","left":"weak form","right":"слабая форма"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D02","left":"linking sound","right":"связующий звук"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D03","left":"assimilation","right":"ассимиляция звуков"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D04","left":"elision","right":"выпадение звука"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D05","left":"sentence stress","right":"фразовое ударение"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D06","left":"thought group","right":"смысловая группа"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D07","left":"contrastive stress","right":"контрастное ударение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de68d943-0704-571e-9d8d-deb504556ab1', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D08","is_correct":true,"text":"In natural speech, a weak form reduces predictable grammatical words so that the listener’s attention falls on the key information."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e6e39ff-9dd2-5dbe-8ce9-b9b0e9486053', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"In natural speech, a weak form reduces predictable grammatical words so that the listener’s attention falls on the key information.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В естественной речи слабая форма сокращает предсказуемые служебные слова, чтобы внимание слушателя сосредоточилось на ключевой информации.","target_language":"en","word_bank":["In","natural","speech",",","a","weak","form","reduces","predictable","grammatical","words","so","that","the","listener’s","attention","falls","on","the","key","information","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45d53cc9-64fa-562c-8f12-f8afb49f8f17', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"weak form","instruction":"Выберите подходящее слово.","options":["weak form","elision","thought group"],"sentence_template":"In natural speech, a ___ reduces predictable grammatical words so that the listener’s attention falls on the key information."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74995650-53a0-5a12-bc7d-528a5fff58a5', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["In","natural","speech",",","a","weak","form","reduces","predictable","grammatical","words","so","that","the","listener’s","attention","falls","on","the","key","information","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","information","key","the","on","falls","attention","listener’s","the","that","so","words","grammatical","predictable","reduces","form","weak","a",",","speech","natural","In"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06f00f8a-3568-522e-9903-2ce3759fb646', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"In natural speech, a weak form reduces predictable grammatical words so that the listener’s attention falls on the key information. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f13ba42-89a5-5f8c-9917-02b4883a2971', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"In natural speech, a weak form reduces predictable grammatical words so that the listener’s attention falls on the key information. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"В естественной речи слабая форма сокращает предсказуемые служебные слова, чтобы внимание слушателя сосредоточилось на ключевой информации. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5002f44-fc76-5e6d-8235-ad96ce9aa87d', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"In natural speech, a weak form reduces predictable grammatical words so that the listener’s attention falls on the key information.","translation":"В естественной речи слабая форма сокращает предсказуемые служебные слова, чтобы внимание слушателя сосредоточилось на ключевой информации.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Weak Forms and Reductions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96c0d34d-883a-533a-91b3-6a1da547c377', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“weak form” means an unstressed pronunciation of a common grammatical word.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D11","is_correct":true,"text":"an unstressed pronunciation of a common grammatical word"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D12","is_correct":false,"text":"a sound connecting adjacent words in fluent speech"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D13","is_correct":false,"text":"a change caused by a neighbouring sound"}],"word":"weak form"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e865b43-7c41-5a16-91a7-23dc4a41f69c', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"In natural speech, a weak form reduces predictable grammatical words so that the listener’s attention falls on the key information.","explanation":"The missing expression in the recording is “weak form”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"weak form","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D14","is_correct":true},{"audio_text":"assimilation","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D15","is_correct":false},{"audio_text":"sentence stress","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D16","is_correct":false}],"sentence_template":"In natural speech, a ___ reduces predictable grammatical words so that the listener’s attention falls on the key information."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2e66b6b-6411-5612-81c8-7bfff626e9ba', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"weak form","explanation":"The recording uses “weak form” to convey the intended B2 meaning.","hint_prefix":"weak","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"In natural speech, a ___ reduces predictable grammatical words so that the listener’s attention falls on the key information."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ab00ce9-d9aa-500e-be87-87ffa608eda4', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"weak form","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D17","text":"weak form"},{"audio_text":"linking sound","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D18","text":"linking sound"},{"audio_text":"assimilation","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D19","text":"assimilation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53bc7af5-1e81-5189-bb48-2d7a67bc7b51', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Weak Forms and Reductions”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D20","is_correct":true,"text":"In natural speech, a weak form reduces predictable grammatical words so that the listener’s attention falls on the key information."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cccbff78-82e6-5250-b990-1180da80bd0a', '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Linking and Assimilation","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6436c61-6dbe-5013-9aaf-dd8d7c4a6ffa', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D01","left":"weak form","right":"слабая форма"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D02","left":"linking sound","right":"связующий звук"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D03","left":"assimilation","right":"ассимиляция звуков"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D04","left":"elision","right":"выпадение звука"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D05","left":"sentence stress","right":"фразовое ударение"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D06","left":"thought group","right":"смысловая группа"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D07","left":"contrastive stress","right":"контрастное ударение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fb33738-3206-5eac-9d6f-f9b1428c39ae', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D08","is_correct":true,"text":"A linking sound may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cafb9d4-677d-55f0-9e09-53ee0e30a243', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A linking sound may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Связующий звук может настолько плавно соединять два слова, что учащиеся сначала воспринимают их как одно незнакомое выражение.","target_language":"en","word_bank":["A","linking","sound","may","connect","two","words","so","smoothly","that","learners","initially","perceive","them","as","a","single","unfamiliar","expression","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dc70894-0d46-59ae-afdf-cce8ce5df331', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"linking sound","instruction":"Выберите подходящее слово.","options":["linking sound","sentence stress","contrastive stress"],"sentence_template":"A ___ may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48f4753f-6a05-5b78-9417-91bee5341c2e', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","linking","sound","may","connect","two","words","so","smoothly","that","learners","initially","perceive","them","as","a","single","unfamiliar","expression","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","expression","unfamiliar","single","a","as","them","perceive","initially","learners","that","smoothly","so","words","two","connect","may","sound","linking","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f747fd0-7eac-5388-a7ca-b964c89b07e1', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A linking sound may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2976d8e9-81ff-57e2-877b-bb9d2cd1c02a', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A linking sound may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Связующий звук может настолько плавно соединять два слова, что учащиеся сначала воспринимают их как одно незнакомое выражение. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68c75e84-1a8e-52f3-9171-80d205c9311d', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"A linking sound may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression.","translation":"Связующий звук может настолько плавно соединять два слова, что учащиеся сначала воспринимают их как одно незнакомое выражение.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Linking and Assimilation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6140f9b4-5e5e-5a33-8052-05029deb3b8a', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“linking sound” means a sound connecting adjacent words in fluent speech.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D11","is_correct":true,"text":"a sound connecting adjacent words in fluent speech"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D12","is_correct":false,"text":"a change caused by a neighbouring sound"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D13","is_correct":false,"text":"the omission of a sound in connected speech"}],"word":"linking sound"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a23a1b3-768b-5438-8161-b3d60ef52b36', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A linking sound may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression.","explanation":"The missing expression in the recording is “linking sound”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"linking sound","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D14","is_correct":true},{"audio_text":"elision","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D15","is_correct":false},{"audio_text":"thought group","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D16","is_correct":false}],"sentence_template":"A ___ may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f989d1e5-5e74-5933-96d9-765730f2116c', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"linking sound","explanation":"The recording uses “linking sound” to convey the intended B2 meaning.","hint_prefix":"link","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed31eee7-2fe1-54ce-a2f2-f490cec71d07', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"weak form","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D17","text":"weak form"},{"audio_text":"linking sound","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D18","text":"linking sound"},{"audio_text":"assimilation","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D19","text":"assimilation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7713af73-2cc5-5eb7-aea3-91498d1afa17', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Linking and Assimilation”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D20","is_correct":true,"text":"A linking sound may connect two words so smoothly that learners initially perceive them as a single unfamiliar expression."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cccbff78-82e6-5250-b990-1180da80bd0a', '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7acb265e-1cd3-5b19-b9ab-708cf1e26061', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Natural Rhythm and Focus","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1f6d1ca-8f05-56e2-a251-1ceeee73a82f', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D01","left":"weak form","right":"слабая форма"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D02","left":"linking sound","right":"связующий звук"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D03","left":"assimilation","right":"ассимиляция звуков"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D04","left":"elision","right":"выпадение звука"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D05","left":"sentence stress","right":"фразовое ударение"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D06","left":"thought group","right":"смысловая группа"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D07","left":"contrastive stress","right":"контрастное ударение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a319ea71-fd3e-5dd5-9216-0af01d6972b7', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D08","is_correct":true,"text":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05bef308-53bd-5d73-978f-acefbf13214f', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Контрастное ударение меняет предполагаемое исправление: я сказал, что встреча начинается в четверг, а не заканчивается тогда.","target_language":"en","word_bank":["Contrastive","stress","changes","the","intended","correction",":","I","said","the","meeting","starts","on","Thursday",",","not","that","it","finishes","then","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51a0ee54-8343-5d47-8389-0622e603b83a', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"assimilation","instruction":"Выберите подходящее слово.","options":["assimilation","thought group","weak form"],"sentence_template":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0355098f-4c13-5da4-bcee-6834f77f7625', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Contrastive","stress","changes","the","intended","correction",":","I","said","the","meeting","starts","on","Thursday",",","not","that","it","finishes","then","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","then","finishes","it","that","not",",","Thursday","on","starts","meeting","the","said","I",":","correction","intended","the","changes","stress","Contrastive"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0beac327-a729-5858-a1be-7adac33dd4eb', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d72e621d-8e75-54f6-8c7e-50c4cda7538c', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Контрастное ударение меняет предполагаемое исправление: я сказал, что встреча начинается в четверг, а не заканчивается тогда. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81d26c2a-aaf8-5ca5-b031-2a8713a672aa', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then.","translation":"Контрастное ударение меняет предполагаемое исправление: я сказал, что встреча начинается в четверг, а не заканчивается тогда.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Natural Rhythm and Focus"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38a9bff8-02dc-5a63-928d-cf36834a12fd', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“assimilation” means a change caused by a neighbouring sound.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D11","is_correct":true,"text":"a change caused by a neighbouring sound"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D12","is_correct":false,"text":"the omission of a sound in connected speech"},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D13","is_correct":false,"text":"prominence given to important words in a sentence"}],"word":"assimilation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('011be754-47c2-578f-873c-b064fbbd3c73', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then.","explanation":"The missing expression in the recording is “assimilation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"assimilation","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D14","is_correct":true},{"audio_text":"sentence stress","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D15","is_correct":false},{"audio_text":"contrastive stress","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D16","is_correct":false}],"sentence_template":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('faccf6f4-2764-57b1-bd5d-878119bafdd8', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"assimilation","explanation":"The recording uses “assimilation” to convey the intended B2 meaning.","hint_prefix":"assi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9414601b-c0d3-580f-97d2-13c6f40457fc', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"weak form","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D17","text":"weak form"},{"audio_text":"linking sound","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D18","text":"linking sound"},{"audio_text":"assimilation","id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D19","text":"assimilation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b21d4a6-55eb-56f3-a8b3-b8dabe45c669', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Natural Rhythm and Focus”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D20","is_correct":true,"text":"Contrastive stress changes the intended correction: I said the meeting starts on Thursday, not that it finishes then."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_CONNECTED_SPEECH_REDUCTIONS_AND_RHYTHM_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('cccbff78-82e6-5250-b990-1180da80bd0a', '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26c808a0-503c-5dbc-acdd-40597e01a953', 'en', 'weak form', 'слабая форма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('852a158f-b9f4-5d06-932f-3091620cca2e', 'en', 'linking sound', 'связующий звук', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59a763cc-caf1-54b3-b742-2ee593b3aa0b', 'en', 'assimilation', 'ассимиляция звуков', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e37140a-9ca9-5bd0-9829-9bb51f20c1ab', 'en', 'elision', 'выпадение звука', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('449abcec-5109-58e1-a07d-69f6632a9478', 'en', 'sentence stress', 'фразовое ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7b6f568-4af5-5e70-b695-b47949d5f5ae', 'en', 'thought group', 'смысловая группа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f77d8d5e-c40e-5826-936e-cd0524af745d', 'en', 'contrastive stress', 'контрастное ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26c808a0-503c-5dbc-acdd-40597e01a953', 'en', 'weak form', 'слабая форма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('852a158f-b9f4-5d06-932f-3091620cca2e', 'en', 'linking sound', 'связующий звук', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59a763cc-caf1-54b3-b742-2ee593b3aa0b', 'en', 'assimilation', 'ассимиляция звуков', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e37140a-9ca9-5bd0-9829-9bb51f20c1ab', 'en', 'elision', 'выпадение звука', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('449abcec-5109-58e1-a07d-69f6632a9478', 'en', 'sentence stress', 'фразовое ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7b6f568-4af5-5e70-b695-b47949d5f5ae', 'en', 'thought group', 'смысловая группа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f77d8d5e-c40e-5826-936e-cd0524af745d', 'en', 'contrastive stress', 'контрастное ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26c808a0-503c-5dbc-acdd-40597e01a953', 'en', 'weak form', 'слабая форма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('852a158f-b9f4-5d06-932f-3091620cca2e', 'en', 'linking sound', 'связующий звук', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59a763cc-caf1-54b3-b742-2ee593b3aa0b', 'en', 'assimilation', 'ассимиляция звуков', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e37140a-9ca9-5bd0-9829-9bb51f20c1ab', 'en', 'elision', 'выпадение звука', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('449abcec-5109-58e1-a07d-69f6632a9478', 'en', 'sentence stress', 'фразовое ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7b6f568-4af5-5e70-b695-b47949d5f5ae', 'en', 'thought group', 'смысловая группа', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f77d8d5e-c40e-5826-936e-cd0524af745d', 'en', 'contrastive stress', 'контрастное ударение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'weak form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking sound' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'assimilation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'elision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'sentence stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'thought group' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '82c3d4f6-a55c-5f6e-a5b1-c20fb0e08f6c', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrastive stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'weak form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking sound' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'assimilation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'elision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'sentence stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'thought group' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '13630c62-d4c6-5b0e-a2b2-362f05fdd6e2', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrastive stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'weak form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking sound' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'assimilation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'elision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'sentence stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'thought group' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'cccbff78-82e6-5250-b990-1180da80bd0a', id, '7acb265e-1cd3-5b19-b9ab-708cf1e26061', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'contrastive stress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
