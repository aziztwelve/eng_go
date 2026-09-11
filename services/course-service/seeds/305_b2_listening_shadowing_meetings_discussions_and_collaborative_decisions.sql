-- Track: B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('492794b3-85e1-5963-8aa5-f096f516456f', 'B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS', 'Совещания, обсуждения и совместные решения', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Совещания, обсуждения и совместные решения».', '{"en":"Meetings, Discussions and Collaborative Decisions","ru":"Совещания, обсуждения и совместные решения"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for meetings, discussions and collaborative decisions.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Совещания, обсуждения и совместные решения»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Following Multiple Speakers","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a989440f-dbd7-5267-bfe8-6986734ce706', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D01","left":"tentative agreement","right":"предварительное согласие"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D02","left":"raise an objection","right":"выдвинуть возражение"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D03","left":"build consensus","right":"формировать консенсус"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D04","left":"action point","right":"пункт действий"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D05","left":"clarify a position","right":"уточнить позицию"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D06","left":"make a concession","right":"пойти на уступку"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D07","left":"summarise the outcome","right":"подвести итог"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3416c9a2-98bb-5ab0-bcf3-f69dee5a1b0e', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D08","is_correct":true,"text":"We have tentative agreement on the timetable, although the finance team has raised an objection concerning the additional cost."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5379627d-b37d-5f76-afdc-05714053a9a1', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We have tentative agreement on the timetable, although the finance team has raised an objection concerning the additional cost.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У нас есть предварительное согласие по графику, хотя финансовая команда выдвинула возражение относительно дополнительных расходов.","target_language":"en","word_bank":["We","have","tentative","agreement","on","the","timetable",",","although","the","finance","team","has","raised","an","objection","concerning","the","additional","cost","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39f5b910-5e98-5209-961c-36cdca8f6c3a', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"tentative agreement","instruction":"Выберите подходящее слово.","options":["tentative agreement","action point","make a concession"],"sentence_template":"We have ___ on the timetable, although the finance team has raised an objection concerning the additional cost."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('984b7ad9-a1c8-5068-9dc3-455bf24211c7', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","tentative","agreement","on","the","timetable",",","although","the","finance","team","has","raised","an","objection","concerning","the","additional","cost","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","cost","additional","the","concerning","objection","an","raised","has","team","finance","the","although",",","timetable","the","on","agreement","tentative","have","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('888473bb-4e78-5327-9582-c4ca80eaf8da', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We have tentative agreement on the timetable, although the finance team has raised an objection concerning the additional cost. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dbf43d1-def4-57c5-a13d-01cac9a980ff', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We have tentative agreement on the timetable, although the finance team has raised an objection concerning the additional cost. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"У нас есть предварительное согласие по графику, хотя финансовая команда выдвинула возражение относительно дополнительных расходов. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71b9cd8b-4098-5338-8691-ce247fdd54c0', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"We have tentative agreement on the timetable, although the finance team has raised an objection concerning the additional cost.","translation":"У нас есть предварительное согласие по графику, хотя финансовая команда выдвинула возражение относительно дополнительных расходов.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Following Multiple Speakers"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbe2e79c-be29-55b6-b835-186aaecde111', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“tentative agreement” means an agreement that is not yet final.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D11","is_correct":true,"text":"an agreement that is not yet final"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D12","is_correct":false,"text":"state a reason for opposing a proposal"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D13","is_correct":false,"text":"develop broad agreement within a group"}],"word":"tentative agreement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('057a32bc-2756-5401-8c0c-139fe4dbb822', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have tentative agreement on the timetable, although the finance team has raised an objection concerning the additional cost.","explanation":"The missing expression in the recording is “tentative agreement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tentative agreement","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D14","is_correct":true},{"audio_text":"build consensus","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D15","is_correct":false},{"audio_text":"clarify a position","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D16","is_correct":false}],"sentence_template":"We have ___ on the timetable, although the finance team has raised an objection concerning the additional cost."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f66fb413-b4bc-566d-acb2-3cf7d0ba2726', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tentative agreement","explanation":"The recording uses “tentative agreement” to convey the intended B2 meaning.","hint_prefix":"tent","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We have ___ on the timetable, although the finance team has raised an objection concerning the additional cost."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64e0624d-e298-56e1-8b0c-92dbc929992b', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"tentative agreement","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D17","text":"tentative agreement"},{"audio_text":"raise an objection","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D18","text":"raise an objection"},{"audio_text":"build consensus","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D19","text":"build consensus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f3433e1-28d1-550b-968a-8e6fcc5bce11', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Following Multiple Speakers”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D20","is_correct":true,"text":"We have tentative agreement on the timetable, although the finance team has raised an objection concerning the additional cost."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('492794b3-85e1-5963-8aa5-f096f516456f', 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ac623682-935f-52cb-aa03-694411fd8524', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Recognising Agreement and Resistance","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9899e9f-a58d-5902-bfea-66b5166b988f', 'ac623682-935f-52cb-aa03-694411fd8524', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D01","left":"tentative agreement","right":"предварительное согласие"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D02","left":"raise an objection","right":"выдвинуть возражение"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D03","left":"build consensus","right":"формировать консенсус"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D04","left":"action point","right":"пункт действий"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D05","left":"clarify a position","right":"уточнить позицию"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D06","left":"make a concession","right":"пойти на уступку"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D07","left":"summarise the outcome","right":"подвести итог"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cedc84a1-db68-582e-9685-866434f7577d', 'ac623682-935f-52cb-aa03-694411fd8524', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D08","is_correct":true,"text":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0936b4a-0684-522f-aa52-cdf2c6f64efc', 'ac623682-935f-52cb-aa03-694411fd8524', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Она уточнила свою позицию и пошла на ограниченную уступку, что помогло группе сформировать консенсус вокруг пересмотренного предложения.","target_language":"en","word_bank":["She","clarified","her","position","and","made","a","limited","concession",",","which","helped","the","group","build","consensus","around","the","revised","proposal","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85bd867c-21ec-5630-90e4-e2e312373a86', 'ac623682-935f-52cb-aa03-694411fd8524', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"raise an objection","instruction":"Выберите подходящее слово.","options":["raise an objection","clarify a position","summarise the outcome"],"sentence_template":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98a95d6f-62a8-525a-9569-28da6ba8069e', 'ac623682-935f-52cb-aa03-694411fd8524', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","clarified","her","position","and","made","a","limited","concession",",","which","helped","the","group","build","consensus","around","the","revised","proposal","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","proposal","revised","the","around","consensus","build","group","the","helped","which",",","concession","limited","a","made","and","position","her","clarified","She"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ee04242-8f86-5b81-a80d-cc34922f191d', 'ac623682-935f-52cb-aa03-694411fd8524', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4182fdc-d976-5e89-8b20-0271586e8e81', 'ac623682-935f-52cb-aa03-694411fd8524', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Она уточнила свою позицию и пошла на ограниченную уступку, что помогло группе сформировать консенсус вокруг пересмотренного предложения. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcd48860-3059-5404-bb64-cbb688dfa042', 'ac623682-935f-52cb-aa03-694411fd8524', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal.","translation":"Она уточнила свою позицию и пошла на ограниченную уступку, что помогло группе сформировать консенсус вокруг пересмотренного предложения.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Recognising Agreement and Resistance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6591d243-c022-597f-84bc-488a838e1e7d', 'ac623682-935f-52cb-aa03-694411fd8524', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“raise an objection” means state a reason for opposing a proposal.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D11","is_correct":true,"text":"state a reason for opposing a proposal"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D12","is_correct":false,"text":"develop broad agreement within a group"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D13","is_correct":false,"text":"a specific task agreed during a meeting"}],"word":"raise an objection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c4a1795-e886-5aa8-b7ec-31c4b70d101c', 'ac623682-935f-52cb-aa03-694411fd8524', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal.","explanation":"The missing expression in the recording is “raise an objection”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"raise an objection","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D14","is_correct":true},{"audio_text":"action point","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D15","is_correct":false},{"audio_text":"make a concession","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D16","is_correct":false}],"sentence_template":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89ad6e69-2022-5d92-8658-e8ebb0df794d', 'ac623682-935f-52cb-aa03-694411fd8524', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"raise an objection","explanation":"The recording uses “raise an objection” to convey the intended B2 meaning.","hint_prefix":"rais","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f758c531-9d85-5189-b61b-8d6ca5f38e05', 'ac623682-935f-52cb-aa03-694411fd8524', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"tentative agreement","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D17","text":"tentative agreement"},{"audio_text":"raise an objection","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D18","text":"raise an objection"},{"audio_text":"build consensus","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D19","text":"build consensus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a21b66d-7697-5d23-8cf0-6d1fd9a0f54c', 'ac623682-935f-52cb-aa03-694411fd8524', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Recognising Agreement and Resistance”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D20","is_correct":true,"text":"She clarified her position and made a limited concession, which helped the group build consensus around the revised proposal."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('492794b3-85e1-5963-8aa5-f096f516456f', 'ac623682-935f-52cb-aa03-694411fd8524', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d133d2af-1c3c-5c29-b8ae-a663742ed4c5', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing a Negotiated Decision","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d041341-61e1-5db1-8295-e9532d0ae93f', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D01","left":"tentative agreement","right":"предварительное согласие"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D02","left":"raise an objection","right":"выдвинуть возражение"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D03","left":"build consensus","right":"формировать консенсус"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D04","left":"action point","right":"пункт действий"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D05","left":"clarify a position","right":"уточнить позицию"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D06","left":"make a concession","right":"пойти на уступку"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D07","left":"summarise the outcome","right":"подвести итог"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a7efec1-3d4b-510f-bfc2-9b1f1ba0b6b3', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D08","is_correct":true,"text":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58176e11-0176-5ed1-a67c-7283ce37f115', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Подводя итог, у каждого пункта действий есть ответственный, но окончательный бюджет всё ещё подлежит утверждению.","target_language":"en","word_bank":["To","summarise","the","outcome",",","each","action","point","has","an","owner",",","but","the","final","budget","remains","subject","to","approval","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e67f3292-61e5-5f52-8054-9a7043c0996f', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"build consensus","instruction":"Выберите подходящее слово.","options":["build consensus","make a concession","tentative agreement"],"sentence_template":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bcd134e-09de-5207-933d-b029d9e4fbe9', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","summarise","the","outcome",",","each","action","point","has","an","owner",",","but","the","final","budget","remains","subject","to","approval","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","approval","to","subject","remains","budget","final","the","but",",","owner","an","has","point","action","each",",","outcome","the","summarise","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee17011a-6468-5c91-8942-4b41c8714a9d', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7557de24-ba25-53aa-89e9-c3b2c2d4dff3', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Подводя итог, у каждого пункта действий есть ответственный, но окончательный бюджет всё ещё подлежит утверждению. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49faef14-1e1c-598d-8201-e482c4755a3f', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval.","translation":"Подводя итог, у каждого пункта действий есть ответственный, но окончательный бюджет всё ещё подлежит утверждению.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing a Negotiated Decision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31f53d50-5f6b-5c6a-b4a3-0d4c628c4845', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“build consensus” means develop broad agreement within a group.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D11","is_correct":true,"text":"develop broad agreement within a group"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D12","is_correct":false,"text":"a specific task agreed during a meeting"},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D13","is_correct":false,"text":"make a viewpoint more precise"}],"word":"build consensus"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f38dc2c4-c2b5-57b7-9c8e-6f571303ab61', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval.","explanation":"The missing expression in the recording is “build consensus”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"build consensus","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D14","is_correct":true},{"audio_text":"clarify a position","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D15","is_correct":false},{"audio_text":"summarise the outcome","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D16","is_correct":false}],"sentence_template":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a55ac65a-347c-5410-b0be-91a59cff941b', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"build consensus","explanation":"The recording uses “build consensus” to convey the intended B2 meaning.","hint_prefix":"buil","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11f138a4-1e65-5f73-a822-3f57a3cf1a11', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"tentative agreement","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D17","text":"tentative agreement"},{"audio_text":"raise an objection","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D18","text":"raise an objection"},{"audio_text":"build consensus","id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D19","text":"build consensus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c07b2fac-692e-5dc6-8a2d-3ac5cbe138b0', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing a Negotiated Decision”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D20","is_correct":true,"text":"To summarise the outcome, each action point has an owner, but the final budget remains subject to approval."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_MEETINGS_DISCUSSIONS_AND_COLLABORATIVE_DECISIONS_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('492794b3-85e1-5963-8aa5-f096f516456f', 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное согласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27c03ca5-6565-5b44-a342-06a41c900f92', 'en', 'raise an objection', 'выдвинуть возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06374087-9d20-507d-9a42-a5ec3c97d95a', 'en', 'build consensus', 'формировать консенсус', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d38ef9db-9c52-511d-b386-6d8773af1b9c', 'en', 'clarify a position', 'уточнить позицию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('629866de-fed6-57f8-ba5f-7f5eb81d055f', 'en', 'summarise the outcome', 'подвести итог', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное согласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27c03ca5-6565-5b44-a342-06a41c900f92', 'en', 'raise an objection', 'выдвинуть возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06374087-9d20-507d-9a42-a5ec3c97d95a', 'en', 'build consensus', 'формировать консенсус', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d38ef9db-9c52-511d-b386-6d8773af1b9c', 'en', 'clarify a position', 'уточнить позицию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('629866de-fed6-57f8-ba5f-7f5eb81d055f', 'en', 'summarise the outcome', 'подвести итог', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5acf455-c37a-54c8-a996-2313b8d071be', 'en', 'tentative agreement', 'предварительное согласие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27c03ca5-6565-5b44-a342-06a41c900f92', 'en', 'raise an objection', 'выдвинуть возражение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06374087-9d20-507d-9a42-a5ec3c97d95a', 'en', 'build consensus', 'формировать консенсус', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5ec5b7f0-8b70-5cd8-af67-0021f956b3f2', 'en', 'action point', 'пункт действий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d38ef9db-9c52-511d-b386-6d8773af1b9c', 'en', 'clarify a position', 'уточнить позицию', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('629866de-fed6-57f8-ba5f-7f5eb81d055f', 'en', 'summarise the outcome', 'подвести итог', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise an objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'build consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify a position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ef8d6fdd-7e4e-514f-bed5-d85b837c7fb3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'summarise the outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ac623682-935f-52cb-aa03-694411fd8524', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ac623682-935f-52cb-aa03-694411fd8524', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise an objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ac623682-935f-52cb-aa03-694411fd8524', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'build consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ac623682-935f-52cb-aa03-694411fd8524', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ac623682-935f-52cb-aa03-694411fd8524', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify a position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ac623682-935f-52cb-aa03-694411fd8524', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'ac623682-935f-52cb-aa03-694411fd8524', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'summarise the outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative agreement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise an objection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'build consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'action point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify a position' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '492794b3-85e1-5963-8aa5-f096f516456f', id, 'd133d2af-1c3c-5c29-b8ae-a663742ed4c5', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'summarise the outcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
