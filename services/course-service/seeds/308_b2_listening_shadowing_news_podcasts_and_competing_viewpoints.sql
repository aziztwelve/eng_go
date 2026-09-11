-- Track: B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c317151b-9a65-5c95-bdb7-788aaaad85de', 'B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS', 'Новости, подкасты и конкурирующие точки зрения', 'Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Новости, подкасты и конкурирующие точки зрения».', '{"en":"News, Podcasts and Competing Viewpoints","ru":"Новости, подкасты и конкурирующие точки зрения"}'::jsonb, '{"en":"Develop B2 comprehension of natural spoken English and accurate shadowing for news, podcasts and competing viewpoints.","ru":"Развивайте понимание естественной английской речи уровня B2 и точное воспроизведение по теме «Новости, подкасты и конкурирующие точки зрения»."}'::jsonb, 'en', 'B2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cf9212f7-9626-5ecb-857d-ac5a8273f8d0', NULL, 'Точное восприятие', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Separating Fact from Comment","ru":"Точное восприятие"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27f0e86d-2c63-5535-ba66-6805cf32d12b', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D01","left":"editorial comment","right":"редакционный комментарий"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D02","left":"eyewitness account","right":"рассказ очевидца"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D03","left":"corroborate","right":"подтверждать"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D04","left":"frame an issue","right":"представлять вопрос"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D05","left":"speculation","right":"предположение"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D06","left":"balanced coverage","right":"взвешенное освещение"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D07","left":"source attribution","right":"указание источника"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79676cdf-be80-5bc4-bdfa-18bf099a19c4', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D08","is_correct":true,"text":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as editorial comment."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e68e299e-b57a-5fc8-8178-27dbf884034a', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as editorial comment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Рассказ очевидца описывает произошедшее, тогда как интерпретацию ведущего следует считать редакционным комментарием.","target_language":"en","word_bank":["The","eyewitness","account","describes","what","happened",",","whereas","the","presenter’s","interpretation","should","be","treated","as","editorial","comment","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bbd0790-2065-591b-a612-0890c2bf4148', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"editorial comment","instruction":"Выберите подходящее слово.","options":["editorial comment","frame an issue","balanced coverage"],"sentence_template":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('742e1dfc-b33a-5e74-a254-f52d74592e10', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","eyewitness","account","describes","what","happened",",","whereas","the","presenter’s","interpretation","should","be","treated","as","editorial","comment","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","comment","editorial","as","treated","be","should","interpretation","presenter’s","the","whereas",",","happened","what","describes","account","eyewitness","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('293886db-3adc-5748-918c-9c0aec5b270a', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as editorial comment. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('334a41fc-40ba-5d2f-98ff-bf56c011ac84', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as editorial comment. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Рассказ очевидца описывает произошедшее, тогда как интерпретацию ведущего следует считать редакционным комментарием. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('523b6cce-ea7f-5b57-90bc-89be0a518e74', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as editorial comment.","translation":"Рассказ очевидца описывает произошедшее, тогда как интерпретацию ведущего следует считать редакционным комментарием.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Separating Fact from Comment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('456ec611-1328-54e5-9e40-0039aa8e1486', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“editorial comment” means an opinion presented by a media organisation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D11","is_correct":true,"text":"an opinion presented by a media organisation"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D12","is_correct":false,"text":"a description by someone who observed an event"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D13","is_correct":false,"text":"support a statement with independent evidence"}],"word":"editorial comment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('494ba014-d0b5-547f-a44c-a67eaef5ee8b', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as editorial comment.","explanation":"The missing expression in the recording is “editorial comment”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"editorial comment","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D14","is_correct":true},{"audio_text":"corroborate","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D15","is_correct":false},{"audio_text":"speculation","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D16","is_correct":false}],"sentence_template":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c4336a0-4ae0-5773-9ba1-d2efbd741432', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"editorial comment","explanation":"The recording uses “editorial comment” to convey the intended B2 meaning.","hint_prefix":"edit","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b83e0b4-6656-5896-b95e-a451581e72f4', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"editorial comment","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D17","text":"editorial comment"},{"audio_text":"eyewitness account","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D18","text":"eyewitness account"},{"audio_text":"corroborate","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D19","text":"corroborate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a0380e5-6efb-5116-b446-ea8a35a25487', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Separating Fact from Comment”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D20","is_correct":true,"text":"The eyewitness account describes what happened, whereas the presenter’s interpretation should be treated as editorial comment."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L1_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c317151b-9a65-5c95-bdb7-788aaaad85de', 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('990980e5-2bc7-5759-b14b-44a188ad2300', NULL, 'Интерпретация и детали', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Comparing Viewpoints","ru":"Интерпретация и детали"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef17cb7f-6823-5a03-97a7-38327badaaf5', '990980e5-2bc7-5759-b14b-44a188ad2300', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D01","left":"editorial comment","right":"редакционный комментарий"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D02","left":"eyewitness account","right":"рассказ очевидца"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D03","left":"corroborate","right":"подтверждать"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D04","left":"frame an issue","right":"представлять вопрос"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D05","left":"speculation","right":"предположение"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D06","left":"balanced coverage","right":"взвешенное освещение"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D07","left":"source attribution","right":"указание источника"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4278836b-3d88-5913-9efa-ffb82c3d561a', '990980e5-2bc7-5759-b14b-44a188ad2300', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D08","is_correct":true,"text":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('043ae3ee-ff25-5e87-abaf-ae1e4179b601', '990980e5-2bc7-5759-b14b-44a188ad2300', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Два СМИ использовали одни и те же цифры, но по-разному представили вопрос, подчёркивая различные причины и последствия.","target_language":"en","word_bank":["Two","outlets","used","the","same","figures","but","framed","the","issue","differently","by","emphasising","contrasting","causes","and","consequences","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdd48b7f-f314-5e66-a76b-c2175ee6b458', '990980e5-2bc7-5759-b14b-44a188ad2300', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"eyewitness account","instruction":"Выберите подходящее слово.","options":["eyewitness account","speculation","source attribution"],"sentence_template":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08f29113-6d4a-5fa7-85a2-6246bdc55f4b', '990980e5-2bc7-5759-b14b-44a188ad2300', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Two","outlets","used","the","same","figures","but","framed","the","issue","differently","by","emphasising","contrasting","causes","and","consequences","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","consequences","and","causes","contrasting","emphasising","by","differently","issue","the","framed","but","figures","same","the","used","outlets","Two"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b82a5b1-0363-5136-85bc-8e00ef148b80', '990980e5-2bc7-5759-b14b-44a188ad2300', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca8774c9-1068-5673-9a03-e2967cc5777c', '990980e5-2bc7-5759-b14b-44a188ad2300', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Два СМИ использовали одни и те же цифры, но по-разному представили вопрос, подчёркивая различные причины и последствия. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3f44c27-019f-52ab-8be1-e6ceafa5a15b', '990980e5-2bc7-5759-b14b-44a188ad2300', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences.","translation":"Два СМИ использовали одни и те же цифры, но по-разному представили вопрос, подчёркивая различные причины и последствия.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Comparing Viewpoints"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd4cab19-7b25-5c6b-8a68-7cbf9f65a39f', '990980e5-2bc7-5759-b14b-44a188ad2300', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“eyewitness account” means a description by someone who observed an event.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D11","is_correct":true,"text":"a description by someone who observed an event"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D12","is_correct":false,"text":"support a statement with independent evidence"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D13","is_correct":false,"text":"present a topic from a particular perspective"}],"word":"eyewitness account"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eedea2c3-3cbc-544c-b4ba-73a19d0b5c96', '990980e5-2bc7-5759-b14b-44a188ad2300', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences.","explanation":"The missing expression in the recording is “eyewitness account”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"eyewitness account","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D14","is_correct":true},{"audio_text":"frame an issue","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D15","is_correct":false},{"audio_text":"balanced coverage","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D16","is_correct":false}],"sentence_template":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26dae28f-c138-5048-8c6c-a91452001c71', '990980e5-2bc7-5759-b14b-44a188ad2300', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"eyewitness account","explanation":"The recording uses “eyewitness account” to convey the intended B2 meaning.","hint_prefix":"eyew","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c383a558-8b47-5109-bd79-bcb1070c7556', '990980e5-2bc7-5759-b14b-44a188ad2300', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"editorial comment","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D17","text":"editorial comment"},{"audio_text":"eyewitness account","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D18","text":"eyewitness account"},{"audio_text":"corroborate","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D19","text":"corroborate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bf7a804-1002-56bf-87e9-ebc3f1f6eef2', '990980e5-2bc7-5759-b14b-44a188ad2300', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Comparing Viewpoints”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D20","is_correct":true,"text":"Two outlets used the same figures but framed the issue differently by emphasising contrasting causes and consequences."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L2_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c317151b-9a65-5c95-bdb7-788aaaad85de', '990980e5-2bc7-5759-b14b-44a188ad2300', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2254b923-55f6-5795-9450-eb297bdac618', NULL, 'Свободное воспроизведение', 'Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение.', '{"en":"Shadowing a Balanced Report","ru":"Свободное воспроизведение"}'::jsonb, '{"en":"Understand extended B2 speech, recognise attitude and implied meaning, and reproduce natural rhythm, linking, and focus stress.","ru":"Понимать развёрнутую речь уровня B2, распознавать отношение и неявный смысл и воспроизводить естественный ритм, связность и смысловое ударение."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68ddd7e8-4adb-5919-b6af-abb707074459', '2254b923-55f6-5795-9450-eb297bdac618', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D01","left":"editorial comment","right":"редакционный комментарий"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D02","left":"eyewitness account","right":"рассказ очевидца"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D03","left":"corroborate","right":"подтверждать"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D04","left":"frame an issue","right":"представлять вопрос"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D05","left":"speculation","right":"предположение"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D06","left":"balanced coverage","right":"взвешенное освещение"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D07","left":"source attribution","right":"указание источника"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a383263-256b-5d95-8baa-05ce36448f0b', '2254b923-55f6-5795-9450-eb297bdac618', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option preserves the qualification, relationship, and implied stance expressed in the B2 recording.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D08","is_correct":true,"text":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D09","is_correct":false,"text":"The speaker expresses complete certainty and rejects every alternative interpretation."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D10","is_correct":false,"text":"The speaker lists unrelated facts without indicating any attitude or logical connection."}],"question":"Which interpretation best captures the speaker’s intended meaning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d1d721a-99cf-5459-a88d-eaaa24bd7e5c', '2254b923-55f6-5795-9450-eb297bdac618', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Взвешенное освещение отделяет проверенную информацию от предположений и чётко указывает источники спорных утверждений.","target_language":"en","word_bank":["Balanced","coverage","distinguishes","verified","information","from","speculation","and","provides","clear","source","attribution","for","disputed","claims","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b157e091-82f6-55fc-a81c-7b7fee943f71', '2254b923-55f6-5795-9450-eb297bdac618', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"corroborate","instruction":"Выберите подходящее слово.","options":["corroborate","balanced coverage","editorial comment"],"sentence_template":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('444e5e6d-8090-5686-8c77-d648f46e36a5', '2254b923-55f6-5795-9450-eb297bdac618', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Balanced","coverage","distinguishes","verified","information","from","speculation","and","provides","clear","source","attribution","for","disputed","claims","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","claims","disputed","for","attribution","source","clear","provides","and","speculation","from","information","verified","distinguishes","coverage","Balanced"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fca5e180-ece7-5f42-9a93-24b53795e1dc', '2254b923-55f6-5795-9450-eb297bdac618', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6da5e32-10c9-57d4-b6d8-2fc3cb427683', '2254b923-55f6-5795-9450-eb297bdac618', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims. Notice how the speaker signals the relationship between the ideas rather than stating every connection directly. Although the alternative view is reasonable, the final judgement remains deliberately qualified.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.82,"translation_hint":"Взвешенное освещение отделяет проверенную информацию от предположений и чётко указывает источники спорных утверждений. Обратите внимание, как говорящий обозначает связь между идеями, не формулируя каждую связь напрямую. Хотя альтернативная точка зрения разумна, окончательное суждение намеренно остаётся осторожным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4be4b4a0-3fba-51a7-a223-5af745676740', '2254b923-55f6-5795-9450-eb297bdac618', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims.","translation":"Взвешенное освещение отделяет проверенную информацию от предположений и чётко указывает источники спорных утверждений.","type":"dialogue"},{"character":"Listener","text":"So the conclusion is qualified rather than completely certain, is that right?","translation":"Значит, вывод сделан с оговоркой, а не с полной уверенностью, верно?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Tone, stress, and qualification reveal how strongly the speaker supports the conclusion."},{"is_correct":false,"text":"Only individual words matter; intonation never affects interpretation."}],"text":"Which listening inference is justified?","type":"choice"}],"title":"Shadowing a Balanced Report"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('862ed1d0-5448-5f30-ba94-49de20e1af43', '2254b923-55f6-5795-9450-eb297bdac618', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“corroborate” means support a statement with independent evidence.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D11","is_correct":true,"text":"support a statement with independent evidence"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D12","is_correct":false,"text":"present a topic from a particular perspective"},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D13","is_correct":false,"text":"an idea formed without sufficient evidence"}],"word":"corroborate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f855b55-420b-5413-bc7f-e0577f5252b8', '2254b923-55f6-5795-9450-eb297bdac618', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims.","explanation":"The missing expression in the recording is “corroborate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"corroborate","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D14","is_correct":true},{"audio_text":"speculation","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D15","is_correct":false},{"audio_text":"source attribution","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D16","is_correct":false}],"sentence_template":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06b9a307-5690-58e1-9ecc-748df597f6cc', '2254b923-55f6-5795-9450-eb297bdac618', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"corroborate","explanation":"The recording uses “corroborate” to convey the intended B2 meaning.","hint_prefix":"corr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67243466-afa7-5cc5-9fc9-f446079e76bc', '2254b923-55f6-5795-9450-eb297bdac618', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"editorial comment","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D17","text":"editorial comment"},{"audio_text":"eyewitness account","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D18","text":"eyewitness account"},{"audio_text":"corroborate","id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D19","text":"corroborate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e98eb5e-deb6-510d-accf-55aa0379c76a', '2254b923-55f6-5795-9450-eb297bdac618', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Coach","text":"What did the speaker communicate in “Shadowing a Balanced Report”?"}],"explanation":"The correct response reproduces the detailed meaning, qualification, and stance of the B2 passage.","instruction":"Ответьте.","options":[{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D20","is_correct":true,"text":"Balanced coverage distinguishes verified information from speculation and provides clear source attribution for disputed claims."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D21","is_correct":false,"text":"The message was completely certain and contained no contrast or qualification."},{"id":"B2_LISTENING_SHADOWING_NEWS_PODCASTS_AND_COMPETING_VIEWPOINTS_L3_D22","is_correct":false,"text":"I recognised isolated sounds, but the speaker communicated no coherent idea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c317151b-9a65-5c95-bdb7-788aaaad85de', '2254b923-55f6-5795-9450-eb297bdac618', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fbe3f96-e9fa-5717-9bbc-e409bba4e4be', 'en', 'editorial comment', 'редакционный комментарий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7c2f2c1-fa95-5336-b6f9-87b5411bd7f8', 'en', 'eyewitness account', 'рассказ очевидца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9a8cff9-cda0-52d5-bc23-d358572f1468', 'en', 'corroborate', 'подтверждать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7131cfe-658b-5114-89bc-fab8eb576332', 'en', 'frame an issue', 'представлять вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79362377-1491-5a11-832f-5903270dbabe', 'en', 'speculation', 'предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dab863b3-4e9b-5bfd-93e5-0d468fdfe70b', 'en', 'balanced coverage', 'взвешенное освещение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f8970e5-fa39-5164-a791-1b764a8cc217', 'en', 'source attribution', 'указание источника', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fbe3f96-e9fa-5717-9bbc-e409bba4e4be', 'en', 'editorial comment', 'редакционный комментарий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7c2f2c1-fa95-5336-b6f9-87b5411bd7f8', 'en', 'eyewitness account', 'рассказ очевидца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9a8cff9-cda0-52d5-bc23-d358572f1468', 'en', 'corroborate', 'подтверждать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7131cfe-658b-5114-89bc-fab8eb576332', 'en', 'frame an issue', 'представлять вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79362377-1491-5a11-832f-5903270dbabe', 'en', 'speculation', 'предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dab863b3-4e9b-5bfd-93e5-0d468fdfe70b', 'en', 'balanced coverage', 'взвешенное освещение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f8970e5-fa39-5164-a791-1b764a8cc217', 'en', 'source attribution', 'указание источника', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fbe3f96-e9fa-5717-9bbc-e409bba4e4be', 'en', 'editorial comment', 'редакционный комментарий', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7c2f2c1-fa95-5336-b6f9-87b5411bd7f8', 'en', 'eyewitness account', 'рассказ очевидца', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9a8cff9-cda0-52d5-bc23-d358572f1468', 'en', 'corroborate', 'подтверждать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7131cfe-658b-5114-89bc-fab8eb576332', 'en', 'frame an issue', 'представлять вопрос', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79362377-1491-5a11-832f-5903270dbabe', 'en', 'speculation', 'предположение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dab863b3-4e9b-5bfd-93e5-0d468fdfe70b', 'en', 'balanced coverage', 'взвешенное освещение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f8970e5-fa39-5164-a791-1b764a8cc217', 'en', 'source attribution', 'указание источника', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'editorial comment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'eyewitness account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'corroborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'frame an issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced coverage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, 'cf9212f7-9626-5ecb-857d-ac5a8273f8d0', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'source attribution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '990980e5-2bc7-5759-b14b-44a188ad2300', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'editorial comment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '990980e5-2bc7-5759-b14b-44a188ad2300', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'eyewitness account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '990980e5-2bc7-5759-b14b-44a188ad2300', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'corroborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '990980e5-2bc7-5759-b14b-44a188ad2300', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'frame an issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '990980e5-2bc7-5759-b14b-44a188ad2300', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '990980e5-2bc7-5759-b14b-44a188ad2300', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced coverage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '990980e5-2bc7-5759-b14b-44a188ad2300', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'source attribution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '2254b923-55f6-5795-9450-eb297bdac618', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'editorial comment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '2254b923-55f6-5795-9450-eb297bdac618', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'eyewitness account' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '2254b923-55f6-5795-9450-eb297bdac618', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'corroborate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '2254b923-55f6-5795-9450-eb297bdac618', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'frame an issue' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '2254b923-55f6-5795-9450-eb297bdac618', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'speculation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '2254b923-55f6-5795-9450-eb297bdac618', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'balanced coverage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c317151b-9a65-5c95-bdb7-788aaaad85de', id, '2254b923-55f6-5795-9450-eb297bdac618', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'source attribution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
