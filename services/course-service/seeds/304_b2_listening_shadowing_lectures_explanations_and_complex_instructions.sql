-- Track: B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2ca5e518-67a5-57e3-98a5-3597ed122d0d', 'B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS', 'Лекции, объяснения и сложные инструкции', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Лекции, объяснения и сложные инструкции».', '{"en":"Lectures, Explanations and Complex Instructions","ru":"Лекции, объяснения и сложные инструкции"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for lectures, explanations and complex instructions.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Лекции, объяснения и сложные инструкции»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e9061ecf-4945-5f94-9938-b64fc794ba5a', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Following Signposted Structure","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fa598fc-3977-5d2d-a093-5166c51e56a1', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D01","left":"signpost","right":"структурный маркер"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D02","left":"prerequisite","right":"предварительное условие"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D03","left":"distinction","right":"различие"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D04","left":"sequence","right":"последовательность"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D05","left":"exception","right":"исключение"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D06","left":"illustrate","right":"иллюстрировать"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D07","left":"recap","right":"кратко повторить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8468ce1-8015-5103-96e9-281174c4f9b9', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D08","is_correct":true,"text":"The lecturer used a clear signpost to distinguish the historical background from the evidence that would be analysed next."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('323da7d3-46a4-58f0-8494-bbd81d4f95cd', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The lecturer used a clear signpost to distinguish the historical background from the evidence that would be analysed next.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Лектор использовал чёткий структурный маркер, чтобы отделить исторический контекст от доказательств, которые предстояло анализировать далее.","target_language":"en","word_bank":["The","lecturer","used","a","clear","signpost","to","distinguish","the","historical","background","from","the","evidence","that","would","be","analysed","next","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55a7c2ed-b526-56be-8e7c-47c243a5e9be', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"signpost","instruction":"Выберите подходящее слово.","options":["signpost","sequence","illustrate"],"sentence_template":"The lecturer used a clear ___ to distinguish the historical background from the evidence that would be analysed next."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77cd2eb8-b77a-5439-9309-b5765ceed989', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","lecturer","used","a","clear","signpost","to","distinguish","the","historical","background","from","the","evidence","that","would","be","analysed","next","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","next","analysed","be","would","that","evidence","the","from","background","historical","the","distinguish","to","signpost","clear","a","used","lecturer","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f1534a9-2c84-535c-a7be-6ffe7385ad74', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The lecturer used a clear signpost to distinguish the historical background from the evidence that would be analysed next. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3fa4929-11e7-5df8-bfee-225e6ff356a4', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The lecturer used a clear signpost to distinguish the historical background from the evidence that would be analysed next. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Лектор использовал чёткий структурный маркер, чтобы отделить исторический контекст от доказательств, которые предстояло анализировать далее. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a26d3f06-1cdd-5e13-8a95-1528f0372d5a', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The lecturer used a clear signpost to distinguish the historical background from the evidence that would be analysed next.","translation":"Лектор использовал чёткий структурный маркер, чтобы отделить исторический контекст от доказательств, которые предстояло анализировать далее.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Following Signposted Structure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cce151c-3379-5584-8e0f-a4483042ea96', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“signpost” means language showing how an explanation is organised.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D11","is_correct":true,"text":"language showing how an explanation is organised"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D12","is_correct":false,"text":"something required before another step"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D13","is_correct":false,"text":"a meaningful difference between concepts"}],"word":"signpost"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6545ceb9-8a90-536e-aeac-29c276e56fb4', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The lecturer used a clear signpost to distinguish the historical background from the evidence that would be analysed next.","explanation":"The missing expression in the recording is “signpost”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"signpost","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D14","is_correct":true},{"audio_text":"distinction","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D15","is_correct":false},{"audio_text":"exception","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D16","is_correct":false}],"sentence_template":"The lecturer used a clear ___ to distinguish the historical background from the evidence that would be analysed next."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3fd08d2-972f-554c-ac2a-b5909c73bb44', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"signpost","explanation":"The recording uses “signpost” to convey the intended B2 meaning.","hint_prefix":"sign","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The lecturer used a clear ___ to distinguish the historical background from the evidence that would be analysed next."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6bfcbe5-d821-53a0-867d-97d63f72b4f4', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"signpost","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D17","text":"signpost"},{"audio_text":"prerequisite","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D18","text":"prerequisite"},{"audio_text":"distinction","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D19","text":"distinction"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4a2ec5b-704b-57d5-899d-e62194f328f9', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Following Signposted Structure”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D20","is_correct":true,"text":"The lecturer used a clear signpost to distinguish the historical background from the evidence that would be analysed next."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ca5e518-67a5-57e3-98a5-3597ed122d0d', 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Processing Dense Explanations","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28e5d930-f6b8-5ac5-9241-fa501f5c405a', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D01","left":"signpost","right":"структурный маркер"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D02","left":"prerequisite","right":"предварительное условие"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D03","left":"distinction","right":"различие"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D04","left":"sequence","right":"последовательность"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D05","left":"exception","right":"исключение"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D06","left":"illustrate","right":"иллюстрировать"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D07","left":"recap","right":"кратко повторить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5430f684-fbcf-5d53-95d1-afbcc106765a', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D08","is_correct":true,"text":"Completing the preliminary survey is a prerequisite, except for participants who have already submitted equivalent data."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2572947c-468a-525d-ac57-5fa46ac79e24', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Completing the preliminary survey is a prerequisite, except for participants who have already submitted equivalent data.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Заполнение предварительного опроса является обязательным условием, за исключением участников, уже предоставивших аналогичные данные.","target_language":"en","word_bank":["Completing","the","preliminary","survey","is","a","prerequisite",",","except","for","participants","who","have","already","submitted","equivalent","data","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a8ca4e6-b860-58da-afae-e5482a18c705', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"prerequisite","instruction":"Выберите подходящее слово.","options":["prerequisite","exception","recap"],"sentence_template":"Completing the preliminary survey is a ___, except for participants who have already submitted equivalent data."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c9194d0-e206-5207-a05e-52230e453e84', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Completing","the","preliminary","survey","is","a","prerequisite",",","except","for","participants","who","have","already","submitted","equivalent","data","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","data","equivalent","submitted","already","have","who","participants","for","except",",","prerequisite","a","is","survey","preliminary","the","Completing"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25c681aa-6200-5e68-b401-7e4ecbce16b1', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Completing the preliminary survey is a prerequisite, except for participants who have already submitted equivalent data. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd421e5f-ceda-5e13-949c-28c70d2a81d9', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Completing the preliminary survey is a prerequisite, except for participants who have already submitted equivalent data. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Заполнение предварительного опроса является обязательным условием, за исключением участников, уже предоставивших аналогичные данные. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d2e873a-7095-5201-8e40-d977dbfe2d74', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Completing the preliminary survey is a prerequisite, except for participants who have already submitted equivalent data.","translation":"Заполнение предварительного опроса является обязательным условием, за исключением участников, уже предоставивших аналогичные данные.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Processing Dense Explanations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b00f566b-29ac-509a-928a-43db00156015', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“prerequisite” means something required before another step.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D11","is_correct":true,"text":"something required before another step"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D12","is_correct":false,"text":"a meaningful difference between concepts"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D13","is_correct":false,"text":"the order in which actions or ideas occur"}],"word":"prerequisite"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40e9f4a6-cdfb-5208-af75-2f8a6e66953c', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Completing the preliminary survey is a prerequisite, except for participants who have already submitted equivalent data.","explanation":"The missing expression in the recording is “prerequisite”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"prerequisite","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D14","is_correct":true},{"audio_text":"sequence","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D15","is_correct":false},{"audio_text":"illustrate","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D16","is_correct":false}],"sentence_template":"Completing the preliminary survey is a ___, except for participants who have already submitted equivalent data."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('255c5496-6120-545e-ba42-c579107f0e4f', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"prerequisite","explanation":"The recording uses “prerequisite” to convey the intended B2 meaning.","hint_prefix":"prer","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Completing the preliminary survey is a ___, except for participants who have already submitted equivalent data."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('766ce3ce-8ccd-5239-802c-220c780818a1', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"signpost","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D17","text":"signpost"},{"audio_text":"prerequisite","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D18","text":"prerequisite"},{"audio_text":"distinction","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D19","text":"distinction"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bf08c1f-489c-5a7f-bb8b-75f330fc4ea3', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Processing Dense Explanations”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D20","is_correct":true,"text":"Completing the preliminary survey is a prerequisite, except for participants who have already submitted equivalent data."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ca5e518-67a5-57e3-98a5-3597ed122d0d', 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('67441bef-c7b0-5fbd-84e1-90992207b78e', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing Academic Instructions","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d776a3a-0aea-5eb7-9f81-67ac51fb6fc0', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D01","left":"signpost","right":"структурный маркер"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D02","left":"prerequisite","right":"предварительное условие"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D03","left":"distinction","right":"различие"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D04","left":"sequence","right":"последовательность"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D05","left":"exception","right":"исключение"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D06","left":"illustrate","right":"иллюстрировать"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D07","left":"recap","right":"кратко повторить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72d9a3b0-4298-5b34-bdfa-a850c90ba9c0', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D08","is_correct":true,"text":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b93bca2c-3472-5098-a89a-d7353f85fdcc', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Кратко повторим последовательность: проверьте источник, классифицируйте доказательства, отметьте исключения и только затем формулируйте вывод.","target_language":"en","word_bank":["To","recap","the","sequence",",","verify","the","source",",","classify","the","evidence",",","note","any","exception",",","and","only","then","formulate","a","conclusion","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef645384-383c-5307-9d80-1fc3090c93f7', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"distinction","instruction":"Выберите подходящее слово.","options":["distinction","illustrate","signpost"],"sentence_template":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2d63bc0-98fd-5167-93eb-69dd1e313596', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","recap","the","sequence",",","verify","the","source",",","classify","the","evidence",",","note","any","exception",",","and","only","then","formulate","a","conclusion","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","conclusion","a","formulate","then","only","and",",","exception","any","note",",","evidence","the","classify",",","source","the","verify",",","sequence","the","recap","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7baf0547-385d-5c95-bf9d-150429f8cbb6', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d4b286a-87cb-5b0c-85d5-9e94321b6166', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Кратко повторим последовательность: проверьте источник, классифицируйте доказательства, отметьте исключения и только затем формулируйте вывод. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e84156cf-cf1f-547c-94fd-11ce2e737bbe', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion.","translation":"Кратко повторим последовательность: проверьте источник, классифицируйте доказательства, отметьте исключения и только затем формулируйте вывод.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing Academic Instructions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d8b3454-4312-5816-8550-d55a8a21235a', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“distinction” means a meaningful difference between concepts.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D11","is_correct":true,"text":"a meaningful difference between concepts"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D12","is_correct":false,"text":"the order in which actions or ideas occur"},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D13","is_correct":false,"text":"a case not following the general rule"}],"word":"distinction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22961e59-0864-509c-a620-b03cf4933dd9', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion.","explanation":"The missing expression in the recording is “distinction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"distinction","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D14","is_correct":true},{"audio_text":"exception","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D15","is_correct":false},{"audio_text":"recap","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D16","is_correct":false}],"sentence_template":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6233cc29-0ebe-55ad-b773-0d1d62cf6945', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"distinction","explanation":"The recording uses “distinction” to convey the intended B2 meaning.","hint_prefix":"dist","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8da2b76e-30e3-5825-a52c-e51b20683f27', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"signpost","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D17","text":"signpost"},{"audio_text":"prerequisite","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D18","text":"prerequisite"},{"audio_text":"distinction","id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D19","text":"distinction"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dff95b7-7fa5-516b-925f-65eb5288f43c', '67441bef-c7b0-5fbd-84e1-90992207b78e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing Academic Instructions”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D20","is_correct":true,"text":"To recap the sequence, verify the source, classify the evidence, note any exception, and only then formulate a conclusion."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_LECTURES_EXPLANATIONS_AND_COMPLEX_INSTRUCTIONS_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2ca5e518-67a5-57e3-98a5-3597ed122d0d', '67441bef-c7b0-5fbd-84e1-90992207b78e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e56472b-951d-597f-bc0f-d6674cbabad0', 'en', 'signpost', 'структурный маркер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd50a2e9-b793-5bcb-8850-ee1b5897d9f3', 'en', 'prerequisite', 'предварительное условие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('664bc857-b6a3-576a-9af1-521808da9fa0', 'en', 'distinction', 'различие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('759560f9-2b57-5910-8869-b90e4db37452', 'en', 'exception', 'исключение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('685db7e9-4825-53fc-940a-b4e2948f25fc', 'en', 'illustrate', 'иллюстрировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29c1047a-b1d9-52ec-bfd8-5955ded19880', 'en', 'recap', 'кратко повторить', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e56472b-951d-597f-bc0f-d6674cbabad0', 'en', 'signpost', 'структурный маркер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd50a2e9-b793-5bcb-8850-ee1b5897d9f3', 'en', 'prerequisite', 'предварительное условие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('664bc857-b6a3-576a-9af1-521808da9fa0', 'en', 'distinction', 'различие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('759560f9-2b57-5910-8869-b90e4db37452', 'en', 'exception', 'исключение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('685db7e9-4825-53fc-940a-b4e2948f25fc', 'en', 'illustrate', 'иллюстрировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29c1047a-b1d9-52ec-bfd8-5955ded19880', 'en', 'recap', 'кратко повторить', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e56472b-951d-597f-bc0f-d6674cbabad0', 'en', 'signpost', 'структурный маркер', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd50a2e9-b793-5bcb-8850-ee1b5897d9f3', 'en', 'prerequisite', 'предварительное условие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('664bc857-b6a3-576a-9af1-521808da9fa0', 'en', 'distinction', 'различие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('759560f9-2b57-5910-8869-b90e4db37452', 'en', 'exception', 'исключение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('685db7e9-4825-53fc-940a-b4e2948f25fc', 'en', 'illustrate', 'иллюстрировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29c1047a-b1d9-52ec-bfd8-5955ded19880', 'en', 'recap', 'кратко повторить', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'signpost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'prerequisite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'exception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'illustrate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e9061ecf-4945-5f94-9938-b64fc794ba5a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'recap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'signpost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'prerequisite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'exception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'illustrate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, 'e84202a4-864d-52a5-9b4c-6a0ebe0daaa1', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'recap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, '67441bef-c7b0-5fbd-84e1-90992207b78e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'signpost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, '67441bef-c7b0-5fbd-84e1-90992207b78e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'prerequisite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, '67441bef-c7b0-5fbd-84e1-90992207b78e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'distinction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, '67441bef-c7b0-5fbd-84e1-90992207b78e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, '67441bef-c7b0-5fbd-84e1-90992207b78e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'exception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, '67441bef-c7b0-5fbd-84e1-90992207b78e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'illustrate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2ca5e518-67a5-57e3-98a5-3597ed122d0d', id, '67441bef-c7b0-5fbd-84e1-90992207b78e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'recap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
