-- Track: B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0b934b77-c882-54e3-8fe5-9347c90d8edb', 'B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES', 'Интервью, позиция и развёрнутые ответы', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Интервью, позиция и развёрнутые ответы».', '{"en":"Interviews, Stance and Detailed Responses","ru":"Интервью, позиция и развёрнутые ответы"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for interviews, stance and detailed responses.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Интервью, позиция и развёрнутые ответы»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('afc26ee9-d370-5f56-90a3-cae96f6a1060', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Following Extended Answers","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddd1b4e0-d77f-51da-8a80-3014d8d40312', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D01","left":"qualified answer","right":"ответ с оговоркой"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D02","left":"reservation","right":"оговорка или сомнение"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D03","left":"elaborate on","right":"развить мысль"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D04","left":"stance","right":"позиция"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D05","left":"anecdotal evidence","right":"личный пример"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D06","left":"reframe","right":"переформулировать"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D07","left":"tentative conclusion","right":"предварительный вывод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e02ab58-2bd9-5626-8eae-3ac92f8b5b5a', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D08","is_correct":true,"text":"My qualified answer would be yes, although the evidence is largely anecdotal and may not apply in every context."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8985cae3-7617-54c0-b23c-66fdf2e6a15f', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My qualified answer would be yes, although the evidence is largely anecdotal and may not apply in every context.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мой ответ с оговоркой был бы положительным, хотя доказательства в основном основаны на личном опыте и могут быть применимы не в каждом контексте.","target_language":"en","word_bank":["My","qualified","answer","would","be","yes",",","although","the","evidence","is","largely","anecdotal","and","may","not","apply","in","every","context","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b58e4e80-9950-56f1-86f0-72f2fbecbf95', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"qualified answer","instruction":"Выберите подходящее слово.","options":["qualified answer","stance","reframe"],"sentence_template":"My ___ would be yes, although the evidence is largely anecdotal and may not apply in every context."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54aa657c-8d79-5994-897e-5b18040852e7', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","qualified","answer","would","be","yes",",","although","the","evidence","is","largely","anecdotal","and","may","not","apply","in","every","context","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","context","every","in","apply","not","may","and","anecdotal","largely","is","evidence","the","although",",","yes","be","would","answer","qualified","My"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e2805ff-9410-5e4e-bd7f-6dbf4f517e9a', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My qualified answer would be yes, although the evidence is largely anecdotal and may not apply in every context. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f69a053-5743-54ce-bbf5-d9d926eb2b55', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My qualified answer would be yes, although the evidence is largely anecdotal and may not apply in every context. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Мой ответ с оговоркой был бы положительным, хотя доказательства в основном основаны на личном опыте и могут быть применимы не в каждом контексте. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0db95289-968e-5eb7-89a1-88fd221ce9c0', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"My qualified answer would be yes, although the evidence is largely anecdotal and may not apply in every context.","translation":"Мой ответ с оговоркой был бы положительным, хотя доказательства в основном основаны на личном опыте и могут быть применимы не в каждом контексте.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Following Extended Answers"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3e96388-713b-598e-b70d-1d925f4305c8', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“qualified answer” means a response limited to remain accurate.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D11","is_correct":true,"text":"a response limited to remain accurate"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D12","is_correct":false,"text":"a doubt preventing complete agreement"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D13","is_correct":false,"text":"provide further explanation or detail"}],"word":"qualified answer"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8f58846-e9e2-587d-9b5c-c44c65b8a574', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My qualified answer would be yes, although the evidence is largely anecdotal and may not apply in every context.","explanation":"The missing expression in the recording is “qualified answer”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"qualified answer","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D14","is_correct":true},{"audio_text":"elaborate on","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D15","is_correct":false},{"audio_text":"anecdotal evidence","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D16","is_correct":false}],"sentence_template":"My ___ would be yes, although the evidence is largely anecdotal and may not apply in every context."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfa7b24b-068a-597b-8c3d-65b1f2a643d9', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"qualified answer","explanation":"The recording uses “qualified answer” to convey the intended B2 meaning.","hint_prefix":"qual","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ would be yes, although the evidence is largely anecdotal and may not apply in every context."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dd0dd40-ce9b-5e25-92d4-d445b73b3517', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"qualified answer","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D17","text":"qualified answer"},{"audio_text":"reservation","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D18","text":"reservation"},{"audio_text":"elaborate on","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D19","text":"elaborate on"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee6efd28-26e8-55bb-bac8-78264252cd93', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Following Extended Answers”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D20","is_correct":true,"text":"My qualified answer would be yes, although the evidence is largely anecdotal and may not apply in every context."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0b934b77-c882-54e3-8fe5-9347c90d8edb', 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b3d40257-48d5-5491-827c-3d59a6f7f7ec', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Identifying Reservations","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cd773de-01e0-5bd4-81fa-6df5e42b9a86', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D01","left":"qualified answer","right":"ответ с оговоркой"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D02","left":"reservation","right":"оговорка или сомнение"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D03","left":"elaborate on","right":"развить мысль"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D04","left":"stance","right":"позиция"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D05","left":"anecdotal evidence","right":"личный пример"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D06","left":"reframe","right":"переформулировать"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D07","left":"tentative conclusion","right":"предварительный вывод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cdfcae0-0410-5ad8-8cff-882028d513b7', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D08","is_correct":true,"text":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('daf4a726-40b6-5a68-aa20-d80836bf1493', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда её попросили развить свою позицию, участница интервью переформулировала вопрос как проблему доступа, а не мотивации.","target_language":"en","word_bank":["When","asked","to","elaborate","on","her","stance",",","the","interviewee","reframed","the","issue","as","a","question","of","access","rather","than","motivation","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81c288ec-90a5-50a2-87a0-e1bc66f76572', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"reservation","instruction":"Выберите подходящее слово.","options":["reservation","anecdotal evidence","tentative conclusion"],"sentence_template":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ace48a0c-9ce8-5cec-8056-e6802bc88103', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","asked","to","elaborate","on","her","stance",",","the","interviewee","reframed","the","issue","as","a","question","of","access","rather","than","motivation","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","motivation","than","rather","access","of","question","a","as","issue","the","reframed","interviewee","the",",","stance","her","on","elaborate","to","asked","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a02978b5-fc9e-5517-98dc-716c60a16bc9', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30ee3c20-b541-5114-bd24-e4aa0a83fd7b', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Когда её попросили развить свою позицию, участница интервью переформулировала вопрос как проблему доступа, а не мотивации. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc8f538d-aa73-5f9c-8aa3-a6d226407293', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation.","translation":"Когда её попросили развить свою позицию, участница интервью переформулировала вопрос как проблему доступа, а не мотивации.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Identifying Reservations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06eb4fa2-8d9f-5a3c-a74a-4cf948b6526c', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reservation” means a doubt preventing complete agreement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D11","is_correct":true,"text":"a doubt preventing complete agreement"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D12","is_correct":false,"text":"provide further explanation or detail"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D13","is_correct":false,"text":"a speaker’s attitude toward an issue"}],"word":"reservation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98816de7-29e7-5f94-8a20-c06bcc6c8134', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation.","explanation":"The missing expression in the recording is “reservation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reservation","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D14","is_correct":true},{"audio_text":"stance","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D15","is_correct":false},{"audio_text":"reframe","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D16","is_correct":false}],"sentence_template":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af4c8ecd-8b48-55ce-a30a-1e4f35c86ca8', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"reservation","explanation":"The recording uses “reservation” to convey the intended B2 meaning.","hint_prefix":"rese","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('179fe7dd-76d2-5fde-b461-b458ac2f514b', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"qualified answer","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D17","text":"qualified answer"},{"audio_text":"reservation","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D18","text":"reservation"},{"audio_text":"elaborate on","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D19","text":"elaborate on"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c5b9029-bb9e-542e-ac5a-c2fc678f44d4', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Identifying Reservations”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D20","is_correct":true,"text":"When asked to elaborate on her stance, the interviewee reframed the issue as a question of access rather than motivation."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0b934b77-c882-54e3-8fe5-9347c90d8edb', 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cd4245d0-4258-5cea-8150-eb11b5ecc990', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing Interview Responses","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fd539f8-187b-54f3-bd91-ea6f5fb350f3', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D01","left":"qualified answer","right":"ответ с оговоркой"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D02","left":"reservation","right":"оговорка или сомнение"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D03","left":"elaborate on","right":"развить мысль"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D04","left":"stance","right":"позиция"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D05","left":"anecdotal evidence","right":"личный пример"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D06","left":"reframe","right":"переформулировать"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D07","left":"tentative conclusion","right":"предварительный вывод"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d81fc19a-dc6b-5128-9ed5-e56d31f5c4e0', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D08","is_correct":true,"text":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d175c2af-06a3-50be-8983-1db94190c63a', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Его оговорка не означала отказа; она поддерживала предварительный вывод о необходимости дальнейшего тестирования.","target_language":"en","word_bank":["His","reservation","did","not","amount","to","rejection",";","it","supported","a","tentative","conclusion","that","further","testing","would","be","necessary","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fc77432-3e8e-553b-9dde-3bcf89146b26', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"elaborate on","instruction":"Выберите подходящее слово.","options":["elaborate on","reframe","qualified answer"],"sentence_template":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61ad1dfa-517f-5473-a2a9-d685cd8a36cd', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["His","reservation","did","not","amount","to","rejection",";","it","supported","a","tentative","conclusion","that","further","testing","would","be","necessary","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","necessary","be","would","testing","further","that","conclusion","tentative","a","supported","it",";","rejection","to","amount","not","did","reservation","His"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddd5144b-85ae-57c9-b9eb-4dda1f2ae396', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c310258-ed9a-5f7b-b83e-341c36aec1e7', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Его оговорка не означала отказа; она поддерживала предварительный вывод о необходимости дальнейшего тестирования. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddb370e1-4ff0-51e6-ba43-41240981dd6c', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary.","translation":"Его оговорка не означала отказа; она поддерживала предварительный вывод о необходимости дальнейшего тестирования.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing Interview Responses"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bdd7b2b-83ff-5af2-970e-1a3d2df38f9e', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“elaborate on” means provide further explanation or detail.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D11","is_correct":true,"text":"provide further explanation or detail"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D12","is_correct":false,"text":"a speaker’s attitude toward an issue"},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D13","is_correct":false,"text":"informal evidence based on personal experience"}],"word":"elaborate on"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61e7bc6e-212c-5537-bae2-60829b36dcac', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary.","explanation":"The missing expression in the recording is “elaborate on”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"elaborate on","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D14","is_correct":true},{"audio_text":"anecdotal evidence","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D15","is_correct":false},{"audio_text":"tentative conclusion","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D16","is_correct":false}],"sentence_template":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0c003bb-e262-56f6-a809-f8b77a69b3db', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"elaborate on","explanation":"The recording uses “elaborate on” to convey the intended B2 meaning.","hint_prefix":"elab","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e37154f-cae3-580d-9d10-ec1c44c2ec7f', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"qualified answer","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D17","text":"qualified answer"},{"audio_text":"reservation","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D18","text":"reservation"},{"audio_text":"elaborate on","id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D19","text":"elaborate on"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7065de3-ccfa-5054-93cc-4ff0fc7a8557', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing Interview Responses”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D20","is_correct":true,"text":"His reservation did not amount to rejection; it supported a tentative conclusion that further testing would be necessary."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_INTERVIEWS_STANCE_AND_DETAILED_RESPONSES_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0b934b77-c882-54e3-8fe5-9347c90d8edb', 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57a4c0f8-1cbd-5fee-8aa6-00e20c617d56', 'en', 'qualified answer', 'ответ с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'оговорка или сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e753fdc3-79bf-54d4-ad46-53a396250a17', 'en', 'elaborate on', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('599c26a2-4f9c-5ff9-880d-b9bd94bf4e0e', 'en', 'stance', 'позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c675b97e-149f-576a-928c-fe8f77b50836', 'en', 'anecdotal evidence', 'личный пример', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4c864c4-5dff-5175-8709-16f990122984', 'en', 'reframe', 'переформулировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04ce3165-af79-563e-af4e-117c144858e4', 'en', 'tentative conclusion', 'предварительный вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57a4c0f8-1cbd-5fee-8aa6-00e20c617d56', 'en', 'qualified answer', 'ответ с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'оговорка или сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e753fdc3-79bf-54d4-ad46-53a396250a17', 'en', 'elaborate on', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('599c26a2-4f9c-5ff9-880d-b9bd94bf4e0e', 'en', 'stance', 'позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c675b97e-149f-576a-928c-fe8f77b50836', 'en', 'anecdotal evidence', 'личный пример', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4c864c4-5dff-5175-8709-16f990122984', 'en', 'reframe', 'переформулировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04ce3165-af79-563e-af4e-117c144858e4', 'en', 'tentative conclusion', 'предварительный вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57a4c0f8-1cbd-5fee-8aa6-00e20c617d56', 'en', 'qualified answer', 'ответ с оговоркой', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'оговорка или сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e753fdc3-79bf-54d4-ad46-53a396250a17', 'en', 'elaborate on', 'развить мысль', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('599c26a2-4f9c-5ff9-880d-b9bd94bf4e0e', 'en', 'stance', 'позиция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c675b97e-149f-576a-928c-fe8f77b50836', 'en', 'anecdotal evidence', 'личный пример', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4c864c4-5dff-5175-8709-16f990122984', 'en', 'reframe', 'переформулировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04ce3165-af79-563e-af4e-117c144858e4', 'en', 'tentative conclusion', 'предварительный вывод', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'elaborate on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'anecdotal evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'afc26ee9-d370-5f56-90a3-cae96f6a1060', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'elaborate on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'anecdotal evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'b3d40257-48d5-5491-827c-3d59a6f7f7ec', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'qualified answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'elaborate on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'stance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'anecdotal evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reframe' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0b934b77-c882-54e3-8fe5-9347c90d8edb', id, 'cd4245d0-4258-5cea-8150-eb11b5ecc990', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tentative conclusion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
