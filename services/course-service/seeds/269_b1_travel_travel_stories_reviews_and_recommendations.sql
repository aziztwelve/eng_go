-- Track: B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8ce93af8-cc0c-5952-847a-3f6654ae6f38', 'B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS', 'Рассказы, отзывы и рекомендации о путешествиях', 'Развивайте английский для путешествий уровня B1 по теме «Рассказы, отзывы и рекомендации о путешествиях».', '{"en":"Travel Stories, Reviews and Recommendations","ru":"Рассказы, отзывы и рекомендации о путешествиях"}'::jsonb, '{"en":"Develop B1 travel English for travel stories, reviews and recommendations.","ru":"Развивайте английский для путешествий уровня B1 по теме «Рассказы, отзывы и рекомендации о путешествиях»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4c4e01ae-88ed-5441-adc1-4a0478ca07f5', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Telling a Travel Story","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2eb41f95-f82a-575e-ae48-41b6061f9d94', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T01","left":"memorable","right":"запоминающийся"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T02","left":"expectation","right":"ожидание"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T03","left":"highlight","right":"главное впечатление"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T04","left":"drawback","right":"недостаток"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T05","left":"recommend","right":"рекомендовать"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T06","left":"review","right":"отзыв"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T07","left":"look back on","right":"вспоминать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('971302a8-b559-5d33-8745-3a881d38f13c', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T08","is_correct":true,"text":"The most memorable part of the trip was an unplanned boat journey that exceeded every expectation."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('099ed28d-f6c7-5438-a10a-dc1329c5b6bc', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The most memorable part of the trip was an unplanned boat journey that exceeded every expectation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Самой запоминающейся частью поездки стала незапланированная прогулка на лодке, превзошедшая все ожидания.","target_language":"en","word_bank":["The","most","memorable","part","of","the","trip","was","an","unplanned","boat","journey","that","exceeded","every","expectation."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9d828c1-db73-5f82-ad55-066d05ade920', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"memorable","instruction":"Выберите подходящее слово.","options":["memorable","drawback","review"],"sentence_template":"The most ___ part of the trip was an unplanned boat journey that exceeded every expectation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89d3b798-90b2-55d2-bfb8-115e1a640376', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","most","memorable","part","of","the","trip","was","an","unplanned","boat","journey","that","exceeded","every","expectation."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["expectation.","every","exceeded","that","journey","boat","unplanned","an","was","trip","the","of","part","memorable","most","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4495c00-6fe9-5ce3-91e6-e9fc55a9cef0', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The most memorable part of the trip was an unplanned boat journey that exceeded every expectation. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bce2ca3-e4c2-570c-9a71-22054b44ca12', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The most memorable part of the trip was an unplanned boat journey that exceeded every expectation. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Самой запоминающейся частью поездки стала незапланированная прогулка на лодке, превзошедшая все ожидания. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a84ab6c-5f16-54e5-ac4a-8ae8eaf62b67', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The most memorable part of the trip was an unplanned boat journey that exceeded every expectation.","translation":"Самой запоминающейся частью поездки стала незапланированная прогулка на лодке, превзошедшая все ожидания.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Telling a Travel Story"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c9b3d65-be1e-550d-ac18-1d11716b9495', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“memorable” means worth remembering.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T11","is_correct":true,"text":"worth remembering"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T12","is_correct":false,"text":"a belief about what will happen"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T13","is_correct":false,"text":"the best or most notable part"}],"word":"memorable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65a457a0-b341-57e6-9449-7d4ac74752bc', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The most memorable part of the trip was an unplanned boat journey that exceeded every expectation.","explanation":"The missing travel expression is “memorable”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"memorable","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T14","is_correct":true},{"audio_text":"highlight","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T15","is_correct":false},{"audio_text":"recommend","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T16","is_correct":false}],"sentence_template":"The most ___ part of the trip was an unplanned boat journey that exceeded every expectation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3184fba-2304-5c8c-884f-a89ebd4c736d', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"memorable","explanation":"The sentence requires “memorable” to express the intended travel meaning.","hint_prefix":"mem","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The most ___ part of the trip was an unplanned boat journey that exceeded every expectation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bb6f38e-9c7f-5501-a1df-dc9777b865c0', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"memorable","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T17","text":"memorable"},{"audio_text":"expectation","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T18","text":"expectation"},{"audio_text":"highlight","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T19","text":"highlight"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94272cfe-7c2e-5cdd-97ce-a2ee2d66006c', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Telling a Travel Story”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T20","is_correct":true,"text":"The most memorable part of the trip was an unplanned boat journey that exceeded every expectation."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8ce93af8-cc0c-5952-847a-3f6654ae6f38', '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5b692877-384a-575a-9203-bb5c628fcc10', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Writing and Discussing Reviews","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b2ecab2-771e-5858-b0db-f927277d3773', '5b692877-384a-575a-9203-bb5c628fcc10', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T01","left":"memorable","right":"запоминающийся"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T02","left":"expectation","right":"ожидание"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T03","left":"highlight","right":"главное впечатление"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T04","left":"drawback","right":"недостаток"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T05","left":"recommend","right":"рекомендовать"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T06","left":"review","right":"отзыв"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T07","left":"look back on","right":"вспоминать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a268d49d-f213-51ba-8632-edb21d026878', '5b692877-384a-575a-9203-bb5c628fcc10', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T08","is_correct":true,"text":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5f12ea7-a093-572d-b145-7cc4da68d706', '5b692877-384a-575a-9203-bb5c628fcc10', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Главным преимуществом отеля было его расположение, хотя ненадёжный интернет оказался существенным недостатком.","target_language":"en","word_bank":["The","hotel’s","main","highlight","was","its","location,","although","unreliable","internet","was","a","significant","drawback."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('367a6e54-ad95-532a-9654-8781800fb2f1', '5b692877-384a-575a-9203-bb5c628fcc10', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"expectation","instruction":"Выберите подходящее слово.","options":["expectation","recommend","look back on"],"sentence_template":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3afc7ef-6c3c-541a-8ed9-9d7bb92d6b95', '5b692877-384a-575a-9203-bb5c628fcc10', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","hotel’s","main","highlight","was","its","location,","although","unreliable","internet","was","a","significant","drawback."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["drawback.","significant","a","was","internet","unreliable","although","location,","its","was","highlight","main","hotel’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d52e5503-b754-5c90-b7ab-8c64246f3e67', '5b692877-384a-575a-9203-bb5c628fcc10', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62a1f4c6-b479-5bb8-be51-a07467d20a29', '5b692877-384a-575a-9203-bb5c628fcc10', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Главным преимуществом отеля было его расположение, хотя ненадёжный интернет оказался существенным недостатком. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e984efee-7890-5af5-b767-9bce9e0aeb80', '5b692877-384a-575a-9203-bb5c628fcc10', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback.","translation":"Главным преимуществом отеля было его расположение, хотя ненадёжный интернет оказался существенным недостатком.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Writing and Discussing Reviews"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c01e30f5-fe3d-5b3e-be29-d7b9d65952d0', '5b692877-384a-575a-9203-bb5c628fcc10', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“expectation” means a belief about what will happen.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T11","is_correct":true,"text":"a belief about what will happen"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T12","is_correct":false,"text":"the best or most notable part"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T13","is_correct":false,"text":"a negative feature"}],"word":"expectation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c520c3f-06a0-5224-9576-b077b05ad2a3', '5b692877-384a-575a-9203-bb5c628fcc10', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback.","explanation":"The missing travel expression is “expectation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"expectation","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T14","is_correct":true},{"audio_text":"drawback","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T15","is_correct":false},{"audio_text":"review","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T16","is_correct":false}],"sentence_template":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35811684-730e-5546-abf3-8377dd4d30da', '5b692877-384a-575a-9203-bb5c628fcc10', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"expectation","explanation":"The sentence requires “expectation” to express the intended travel meaning.","hint_prefix":"exp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4891537-cb7d-5e4c-959d-bd4d1db08659', '5b692877-384a-575a-9203-bb5c628fcc10', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"memorable","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T17","text":"memorable"},{"audio_text":"expectation","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T18","text":"expectation"},{"audio_text":"highlight","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T19","text":"highlight"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b184d69-df78-5c01-b31d-b006bdedb8a2', '5b692877-384a-575a-9203-bb5c628fcc10', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Writing and Discussing Reviews”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T20","is_correct":true,"text":"The hotel’s main highlight was its location, although unreliable internet was a significant drawback."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8ce93af8-cc0c-5952-847a-3f6654ae6f38', '5b692877-384a-575a-9203-bb5c628fcc10', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e615143e-1ec5-5d72-8fdc-5b7a270aab8e', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Making Recommendations","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4d1d558-920c-5d59-8435-c3ec81a85f54', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T01","left":"memorable","right":"запоминающийся"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T02","left":"expectation","right":"ожидание"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T03","left":"highlight","right":"главное впечатление"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T04","left":"drawback","right":"недостаток"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T05","left":"recommend","right":"рекомендовать"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T06","left":"review","right":"отзыв"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T07","left":"look back on","right":"вспоминать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('085e78ef-7ea2-5473-a8a3-c2a38280ac48', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T08","is_correct":true,"text":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc865266-fcb3-5b04-b069-53bda402ec2e', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вспоминая этот опыт, я бы рекомендовал регион, но посоветовал посетителям путешествовать вне самого загруженного сезона.","target_language":"en","word_bank":["Looking","back","on","the","experience,","I","would","recommend","the","region","but","advise","visitors","to","travel","outside","the","busiest","season."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fd48e98-43dd-54d9-a3cf-2e67dee4450b', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"highlight","instruction":"Выберите подходящее слово.","options":["highlight","review","memorable"],"sentence_template":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47b74820-63a8-5b9e-a7a4-c2c6ff789074', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Looking","back","on","the","experience,","I","would","recommend","the","region","but","advise","visitors","to","travel","outside","the","busiest","season."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["season.","busiest","the","outside","travel","to","visitors","advise","but","region","the","recommend","would","I","experience,","the","on","back","Looking"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f6e6e31-7636-5a2b-812a-927570c15a6c', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('464329f7-7990-5b75-942a-88f596c50915', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Вспоминая этот опыт, я бы рекомендовал регион, но посоветовал посетителям путешествовать вне самого загруженного сезона. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bf7ca7b-a2de-54ca-aefe-5687f7436d06', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season.","translation":"Вспоминая этот опыт, я бы рекомендовал регион, но посоветовал посетителям путешествовать вне самого загруженного сезона.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Making Recommendations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbf8baca-351d-5a22-9aaf-74eaca4ca010', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“highlight” means the best or most notable part.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T11","is_correct":true,"text":"the best or most notable part"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T12","is_correct":false,"text":"a negative feature"},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T13","is_correct":false,"text":"suggest as a good choice"}],"word":"highlight"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c4d2447-dc5a-5c9b-a6c2-dfdca0f33712', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season.","explanation":"The missing travel expression is “highlight”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"highlight","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T14","is_correct":true},{"audio_text":"recommend","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T15","is_correct":false},{"audio_text":"look back on","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T16","is_correct":false}],"sentence_template":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac743b1b-afbf-529f-a6f7-59ec315c6afd', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"highlight","explanation":"The sentence requires “highlight” to express the intended travel meaning.","hint_prefix":"hig","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a99b9cbc-9959-51cf-a8f8-6bb51c28cb32', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"memorable","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T17","text":"memorable"},{"audio_text":"expectation","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T18","text":"expectation"},{"audio_text":"highlight","id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T19","text":"highlight"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c53dc8ec-6f40-5f30-97cd-28db4853ec7a', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Making Recommendations”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T20","is_correct":true,"text":"Looking back on the experience, I would recommend the region but advise visitors to travel outside the busiest season."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_TRAVEL_STORIES_REVIEWS_AND_RECOMMENDATIONS_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8ce93af8-cc0c-5952-847a-3f6654ae6f38', 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf947abe-c348-5835-a752-c0d38417e697', 'en', 'memorable', 'запоминающийся', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e3f9e65-e794-5cac-8202-c34acb61e83e', 'en', 'expectation', 'ожидание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76652d1-82fd-5406-8610-06677fc3f562', 'en', 'highlight', 'главное впечатление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f05aa0b-98a4-5bf1-b76e-25df263e1299', 'en', 'drawback', 'недостаток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53627892-a2b2-54d3-b0e8-3501ed52a48f', 'en', 'recommend', 'рекомендовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d24d23d-005c-50bd-88d4-197138ab6d8e', 'en', 'review', 'отзыв', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d773ce89-f212-5ef5-b9ca-23140b753be2', 'en', 'look back on', 'вспоминать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf947abe-c348-5835-a752-c0d38417e697', 'en', 'memorable', 'запоминающийся', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e3f9e65-e794-5cac-8202-c34acb61e83e', 'en', 'expectation', 'ожидание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76652d1-82fd-5406-8610-06677fc3f562', 'en', 'highlight', 'главное впечатление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f05aa0b-98a4-5bf1-b76e-25df263e1299', 'en', 'drawback', 'недостаток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53627892-a2b2-54d3-b0e8-3501ed52a48f', 'en', 'recommend', 'рекомендовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d24d23d-005c-50bd-88d4-197138ab6d8e', 'en', 'review', 'отзыв', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d773ce89-f212-5ef5-b9ca-23140b753be2', 'en', 'look back on', 'вспоминать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf947abe-c348-5835-a752-c0d38417e697', 'en', 'memorable', 'запоминающийся', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e3f9e65-e794-5cac-8202-c34acb61e83e', 'en', 'expectation', 'ожидание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76652d1-82fd-5406-8610-06677fc3f562', 'en', 'highlight', 'главное впечатление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f05aa0b-98a4-5bf1-b76e-25df263e1299', 'en', 'drawback', 'недостаток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53627892-a2b2-54d3-b0e8-3501ed52a48f', 'en', 'recommend', 'рекомендовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d24d23d-005c-50bd-88d4-197138ab6d8e', 'en', 'review', 'отзыв', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d773ce89-f212-5ef5-b9ca-23140b753be2', 'en', 'look back on', 'вспоминать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'memorable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'highlight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'drawback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '4c4e01ae-88ed-5441-adc1-4a0478ca07f5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'look back on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '5b692877-384a-575a-9203-bb5c628fcc10', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'memorable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '5b692877-384a-575a-9203-bb5c628fcc10', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '5b692877-384a-575a-9203-bb5c628fcc10', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'highlight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '5b692877-384a-575a-9203-bb5c628fcc10', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'drawback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '5b692877-384a-575a-9203-bb5c628fcc10', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '5b692877-384a-575a-9203-bb5c628fcc10', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, '5b692877-384a-575a-9203-bb5c628fcc10', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'look back on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'memorable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'expectation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'highlight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'drawback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8ce93af8-cc0c-5952-847a-3f6654ae6f38', id, 'e615143e-1ec5-5d72-8fdc-5b7a270aab8e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'look back on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
