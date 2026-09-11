-- Track: B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d60dfaef-f6fd-5453-aa53-ca2da02629eb', 'B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL', 'Рассказы, перспектива и неявные детали', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Рассказы, перспектива и неявные детали».', '{"en":"Narratives, Perspective and Unstated Detail","ru":"Рассказы, перспектива и неявные детали"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for narratives, perspective and unstated detail.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Рассказы, перспектива и неявные детали»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6abb5c50-553b-5009-92c6-3e811849fb6f', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Tracking a Complex Sequence","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('742dc838-f54b-5881-ab8f-400582223ed2', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D01","left":"flashback","right":"ретроспекция"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D02","left":"foreshadow","right":"предвещать"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D03","left":"perspective","right":"точка зрения"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D04","left":"underlying motive","right":"скрытый мотив"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D05","left":"turning point","right":"поворотный момент"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D06","left":"unreliable account","right":"ненадёжный рассказ"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D07","left":"in retrospect","right":"оглядываясь назад"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2a1463f-8778-5d45-bbee-cd6cba6d7b61', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D08","is_correct":true,"text":"The brief flashback foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3c8a064-3ac3-5343-8480-1036146dd7d3', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The brief flashback foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Краткая ретроспекция предвещала последующий конфликт, раскрывая обещание, о котором рассказчик, по-видимому, забыл.","target_language":"en","word_bank":["The","brief","flashback","foreshadowed","the","later","conflict","by","revealing","a","promise","that","the","narrator","had","apparently","forgotten","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f807ea3-4bec-507f-befe-9965b2283b8b', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"flashback","instruction":"Выберите подходящее слово.","options":["flashback","underlying motive","unreliable account"],"sentence_template":"The brief ___ foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6d1c345-b220-535b-b46c-bb87b85e9ef7', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","brief","flashback","foreshadowed","the","later","conflict","by","revealing","a","promise","that","the","narrator","had","apparently","forgotten","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","forgotten","apparently","had","narrator","the","that","promise","a","revealing","by","conflict","later","the","foreshadowed","flashback","brief","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86e6caf3-c28b-5ed6-b4d7-196b72bc9e32', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The brief flashback foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('403ba910-a10f-5430-82a9-69e70613c6ac', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The brief flashback foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Краткая ретроспекция предвещала последующий конфликт, раскрывая обещание, о котором рассказчик, по-видимому, забыл. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('109accf9-abe0-544c-9029-94a4aa2f73e6', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The brief flashback foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten.","translation":"Краткая ретроспекция предвещала последующий конфликт, раскрывая обещание, о котором рассказчик, по-видимому, забыл.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Tracking a Complex Sequence"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a8cfc4f-20fd-5816-aa46-f6f77e265f73', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“flashback” means a scene returning to an earlier time.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D11","is_correct":true,"text":"a scene returning to an earlier time"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D12","is_correct":false,"text":"suggest that something will happen later"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D13","is_correct":false,"text":"the position from which events are understood"}],"word":"flashback"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2633312-2ef3-5e2a-b75e-1838c75cb52c', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The brief flashback foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten.","explanation":"The missing expression in the recording is “flashback”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"flashback","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D14","is_correct":true},{"audio_text":"perspective","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D15","is_correct":false},{"audio_text":"turning point","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D16","is_correct":false}],"sentence_template":"The brief ___ foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cf6f092-207f-5356-8529-37121de73256', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"flashback","explanation":"The recording uses “flashback” to convey the intended B2 meaning.","hint_prefix":"flas","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The brief ___ foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39e5199d-cadb-5378-9ec2-9998ca20885f', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"flashback","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D17","text":"flashback"},{"audio_text":"foreshadow","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D18","text":"foreshadow"},{"audio_text":"perspective","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D19","text":"perspective"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fde88c6-8cc7-5120-b611-c7a11639c0cb', '6abb5c50-553b-5009-92c6-3e811849fb6f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Tracking a Complex Sequence”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D20","is_correct":true,"text":"The brief flashback foreshadowed the later conflict by revealing a promise that the narrator had apparently forgotten."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d60dfaef-f6fd-5453-aa53-ca2da02629eb', '6abb5c50-553b-5009-92c6-3e811849fb6f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b9277c43-7f3e-5c87-afb5-64f44ea8ea44', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Inferring Motives","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9207221-109e-5559-a858-1d4655ee4151', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D01","left":"flashback","right":"ретроспекция"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D02","left":"foreshadow","right":"предвещать"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D03","left":"perspective","right":"точка зрения"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D04","left":"underlying motive","right":"скрытый мотив"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D05","left":"turning point","right":"поворотный момент"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D06","left":"unreliable account","right":"ненадёжный рассказ"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D07","left":"in retrospect","right":"оглядываясь назад"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e0ac468-52c3-5e7b-b3eb-bfe2d788ca82', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D08","is_correct":true,"text":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f31f9fd1-141b-5353-98d2-a0836eb17b92', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred.","instruction":"Соберите перевод.","source_language":"ru","source_text":"С её точки зрения решение казалось щедрым, но скрытый мотив становится менее убедительным после вывода о пропущенной детали.","target_language":"en","word_bank":["From","her","perspective",",","the","decision","seemed","generous",",","but","the","underlying","motive","becomes","less","convincing","once","the","missing","detail","is","inferred","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00822e78-5bfc-5d2d-b41d-b7286224de8e', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"foreshadow","instruction":"Выберите подходящее слово.","options":["foreshadow","turning point","in retrospect"],"sentence_template":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d09de88-693f-5635-8461-81081d2d0a97', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["From","her","perspective",",","the","decision","seemed","generous",",","but","the","underlying","motive","becomes","less","convincing","once","the","missing","detail","is","inferred","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","inferred","is","detail","missing","the","once","convincing","less","becomes","motive","underlying","the","but",",","generous","seemed","decision","the",",","perspective","her","From"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b97b6d96-a6b8-5526-b656-8c85fb0b9c06', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f4ca4d9-cebf-5caf-a40c-d967534a7338', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"С её точки зрения решение казалось щедрым, но скрытый мотив становится менее убедительным после вывода о пропущенной детали. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c5ce9f8-8127-5caa-99c7-262e26d03e5e', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred.","translation":"С её точки зрения решение казалось щедрым, но скрытый мотив становится менее убедительным после вывода о пропущенной детали.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Inferring Motives"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a89256a8-cebd-527e-8588-6a06832fe404', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“foreshadow” means suggest that something will happen later.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D11","is_correct":true,"text":"suggest that something will happen later"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D12","is_correct":false,"text":"the position from which events are understood"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D13","is_correct":false,"text":"the less obvious reason behind an action"}],"word":"foreshadow"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2d75ba6-3b23-5dc4-a846-12ffbb395fbd', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred.","explanation":"The missing expression in the recording is “foreshadow”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"foreshadow","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D14","is_correct":true},{"audio_text":"underlying motive","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D15","is_correct":false},{"audio_text":"unreliable account","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D16","is_correct":false}],"sentence_template":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6620bf05-7d18-536d-a84d-36e059c15181', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"foreshadow","explanation":"The recording uses “foreshadow” to convey the intended B2 meaning.","hint_prefix":"fore","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9f2e3bf-0f8c-5e82-a5b6-813742dcadef', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"flashback","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D17","text":"flashback"},{"audio_text":"foreshadow","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D18","text":"foreshadow"},{"audio_text":"perspective","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D19","text":"perspective"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e998396-3a72-5f1d-8c35-2a859d0a3407', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Inferring Motives”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D20","is_correct":true,"text":"From her perspective, the decision seemed generous, but the underlying motive becomes less convincing once the missing detail is inferred."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d60dfaef-f6fd-5453-aa53-ca2da02629eb', 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a985e23a-c048-5d52-adc5-e8ab92c5c346', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing Reflective Narratives","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c329acd2-1171-53dc-9738-670da5a73534', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D01","left":"flashback","right":"ретроспекция"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D02","left":"foreshadow","right":"предвещать"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D03","left":"perspective","right":"точка зрения"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D04","left":"underlying motive","right":"скрытый мотив"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D05","left":"turning point","right":"поворотный момент"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D06","left":"unreliable account","right":"ненадёжный рассказ"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D07","left":"in retrospect","right":"оглядываясь назад"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2e96784-cb53-5d8d-8958-e2cdb8c3e72e', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D08","is_correct":true,"text":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f547bb71-dd93-52cd-8691-16f8661eb2ba', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Оглядываясь назад, задержанное сообщение было поворотным моментом, хотя рассказчик тогда не осознал его значения.","target_language":"en","word_bank":["In","retrospect",",","the","delayed","message","was","the","turning","point",",","although","the","narrator","did","not","recognise","its","significance","at","the","time","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71729a0a-ec68-5424-a743-1b20c6ad922d', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"perspective","instruction":"Выберите подходящее слово.","options":["perspective","unreliable account","flashback"],"sentence_template":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d977526-6440-58ef-a903-9be86316e95c', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["In","retrospect",",","the","delayed","message","was","the","turning","point",",","although","the","narrator","did","not","recognise","its","significance","at","the","time","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","time","the","at","significance","its","recognise","not","did","narrator","the","although",",","point","turning","the","was","message","delayed","the",",","retrospect","In"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b96ef403-2f6f-5433-a62f-4ad60c885d97', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b7f940a-21a5-504b-bdd9-5aa38583af98', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Оглядываясь назад, задержанное сообщение было поворотным моментом, хотя рассказчик тогда не осознал его значения. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce6ebb15-23a1-5589-a0bc-6916cdfba498', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time.","translation":"Оглядываясь назад, задержанное сообщение было поворотным моментом, хотя рассказчик тогда не осознал его значения.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing Reflective Narratives"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c82de8ed-0272-5eac-88ef-54a1995f122b', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“perspective” means the position from which events are understood.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D11","is_correct":true,"text":"the position from which events are understood"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D12","is_correct":false,"text":"the less obvious reason behind an action"},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D13","is_correct":false,"text":"an event causing a decisive change"}],"word":"perspective"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef300b2a-c34b-59d3-ac39-e0df7eb31773', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time.","explanation":"The missing expression in the recording is “perspective”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"perspective","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D14","is_correct":true},{"audio_text":"turning point","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D15","is_correct":false},{"audio_text":"in retrospect","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D16","is_correct":false}],"sentence_template":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0960017-1523-5f8b-bb02-1ff7bcdab8a9', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"perspective","explanation":"The recording uses “perspective” to convey the intended B2 meaning.","hint_prefix":"pers","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5a26581-dbfd-553b-a1ae-9e733e88d1e2', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"flashback","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D17","text":"flashback"},{"audio_text":"foreshadow","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D18","text":"foreshadow"},{"audio_text":"perspective","id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D19","text":"perspective"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('434e41f4-e8e4-5050-bc16-3105a6755789', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing Reflective Narratives”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D20","is_correct":true,"text":"In retrospect, the delayed message was the turning point, although the narrator did not recognise its significance at the time."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NARRATIVES_PERSPECTIVE_AND_UNSTATED_DETAIL_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d60dfaef-f6fd-5453-aa53-ca2da02629eb', 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ac4dfcf-cf52-5817-b46b-e58b0d64d8a3', 'en', 'flashback', 'ретроспекция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bfc7101-277d-54c3-884a-9739afcc77ea', 'en', 'foreshadow', 'предвещать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28c1cf38-9947-5f36-8ad9-538eef6f8a9c', 'en', 'perspective', 'точка зрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fc3cea4-5ab6-5424-bf83-2659b66995ce', 'en', 'underlying motive', 'скрытый мотив', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a4e60fc-5ede-5de4-9c76-be00270cd4ca', 'en', 'unreliable account', 'ненадёжный рассказ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc27fbb5-d52c-5fcb-89e4-14123384259b', 'en', 'in retrospect', 'оглядываясь назад', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ac4dfcf-cf52-5817-b46b-e58b0d64d8a3', 'en', 'flashback', 'ретроспекция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bfc7101-277d-54c3-884a-9739afcc77ea', 'en', 'foreshadow', 'предвещать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28c1cf38-9947-5f36-8ad9-538eef6f8a9c', 'en', 'perspective', 'точка зрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fc3cea4-5ab6-5424-bf83-2659b66995ce', 'en', 'underlying motive', 'скрытый мотив', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a4e60fc-5ede-5de4-9c76-be00270cd4ca', 'en', 'unreliable account', 'ненадёжный рассказ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc27fbb5-d52c-5fcb-89e4-14123384259b', 'en', 'in retrospect', 'оглядываясь назад', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ac4dfcf-cf52-5817-b46b-e58b0d64d8a3', 'en', 'flashback', 'ретроспекция', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4bfc7101-277d-54c3-884a-9739afcc77ea', 'en', 'foreshadow', 'предвещать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28c1cf38-9947-5f36-8ad9-538eef6f8a9c', 'en', 'perspective', 'точка зрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fc3cea4-5ab6-5424-bf83-2659b66995ce', 'en', 'underlying motive', 'скрытый мотив', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7456b07-e9b2-596e-9936-0201d197a066', 'en', 'turning point', 'поворотный момент', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a4e60fc-5ede-5de4-9c76-be00270cd4ca', 'en', 'unreliable account', 'ненадёжный рассказ', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc27fbb5-d52c-5fcb-89e4-14123384259b', 'en', 'in retrospect', 'оглядываясь назад', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, '6abb5c50-553b-5009-92c6-3e811849fb6f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'flashback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, '6abb5c50-553b-5009-92c6-3e811849fb6f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'foreshadow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, '6abb5c50-553b-5009-92c6-3e811849fb6f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'perspective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, '6abb5c50-553b-5009-92c6-3e811849fb6f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying motive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, '6abb5c50-553b-5009-92c6-3e811849fb6f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, '6abb5c50-553b-5009-92c6-3e811849fb6f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreliable account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, '6abb5c50-553b-5009-92c6-3e811849fb6f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'in retrospect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'flashback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'foreshadow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'perspective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying motive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreliable account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'b9277c43-7f3e-5c87-afb5-64f44ea8ea44', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in retrospect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'flashback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'foreshadow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'perspective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying motive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'turning point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'unreliable account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd60dfaef-f6fd-5453-aa53-ca2da02629eb', id, 'a985e23a-c048-5d52-adc5-e8ab92c5c346', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in retrospect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
