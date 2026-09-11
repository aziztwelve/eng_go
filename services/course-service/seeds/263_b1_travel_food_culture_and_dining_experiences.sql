-- Track: B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('1b132e76-fc01-52cb-9be7-9ee1dd172475', 'B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES', 'Культура питания и ресторанный опыт', 'Развивайте английский для путешествий уровня B1 по теме «Культура питания и ресторанный опыт».', '{"en":"Food Culture and Dining Experiences","ru":"Культура питания и ресторанный опыт"}'::jsonb, '{"en":"Develop B1 travel English for food culture and dining experiences.","ru":"Развивайте английский для путешествий уровня B1 по теме «Культура питания и ресторанный опыт»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5f325a91-b1cf-537c-9ae3-06b750ee4b5a', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Understanding Menus and Customs","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08099159-94b4-589a-9076-733557585993', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T01","left":"local speciality","right":"местное блюдо"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T02","left":"ingredient","right":"ингредиент"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T03","left":"dietary requirement","right":"требование к питанию"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T04","left":"service charge","right":"плата за обслуживание"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T05","left":"recommend","right":"рекомендовать"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T06","left":"portion","right":"порция"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T07","left":"custom","right":"обычай"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9923324f-23d9-547f-9f92-f5cf391784e1', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T08","is_correct":true,"text":"The waiter recommended a local speciality and explained every ingredient because I had a dietary requirement."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('204a2cb8-3e0f-580d-b992-1eb521f3259b', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The waiter recommended a local speciality and explained every ingredient because I had a dietary requirement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Официант порекомендовал местное блюдо и объяснил каждый ингредиент, потому что у меня были требования к питанию.","target_language":"en","word_bank":["The","waiter","recommended","a","local","speciality","and","explained","every","ingredient","because","I","had","a","dietary","requirement."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c61c4b2-abe4-5b6c-ba95-3f3e0f6887b3', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"local speciality","instruction":"Выберите подходящее слово.","options":["local speciality","service charge","portion"],"sentence_template":"The waiter recommended a ___ and explained every ingredient because I had a dietary requirement."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c7f292d-e0de-520e-827b-7ead0657777c', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","waiter","recommended","a","local","speciality","and","explained","every","ingredient","because","I","had","a","dietary","requirement."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["requirement.","dietary","a","had","I","because","ingredient","every","explained","and","speciality","local","a","recommended","waiter","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a3d5138-c7b5-5561-9ca2-0d78c3299a01', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The waiter recommended a local speciality and explained every ingredient because I had a dietary requirement. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('921e2ca5-0567-5985-8306-23d24a256d17', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The waiter recommended a local speciality and explained every ingredient because I had a dietary requirement. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Официант порекомендовал местное блюдо и объяснил каждый ингредиент, потому что у меня были требования к питанию. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3438a367-2d4f-5c56-af21-620e5f9d03cc', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The waiter recommended a local speciality and explained every ingredient because I had a dietary requirement.","translation":"Официант порекомендовал местное блюдо и объяснил каждый ингредиент, потому что у меня были требования к питанию.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Understanding Menus and Customs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48d2ad67-d445-50f9-9636-419c4a1a5e3c', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“local speciality” means food strongly associated with an area.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T11","is_correct":true,"text":"food strongly associated with an area"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T12","is_correct":false,"text":"one item used to make food"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T13","is_correct":false,"text":"a restriction on what someone can eat"}],"word":"local speciality"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb52a71d-306d-5c43-99d8-fe7995fcc59e', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The waiter recommended a local speciality and explained every ingredient because I had a dietary requirement.","explanation":"The missing travel expression is “local speciality”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"local speciality","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T14","is_correct":true},{"audio_text":"dietary requirement","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T15","is_correct":false},{"audio_text":"recommend","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T16","is_correct":false}],"sentence_template":"The waiter recommended a ___ and explained every ingredient because I had a dietary requirement."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('576820bc-f531-518b-9178-24cad7f15a40', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"local speciality","explanation":"The sentence requires “local speciality” to express the intended travel meaning.","hint_prefix":"loc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The waiter recommended a ___ and explained every ingredient because I had a dietary requirement."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a3977c3-35c9-50cb-bbc9-f374825666d6', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"local speciality","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T17","text":"local speciality"},{"audio_text":"ingredient","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T18","text":"ingredient"},{"audio_text":"dietary requirement","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T19","text":"dietary requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23e30a6d-403b-55e6-bcf1-5d5fc0faedf9', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Understanding Menus and Customs”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T20","is_correct":true,"text":"The waiter recommended a local speciality and explained every ingredient because I had a dietary requirement."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1b132e76-fc01-52cb-9be7-9ee1dd172475', '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a13a99f5-1b95-56c9-a5ce-f39488a19840', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Special Requirements","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3152420-438f-5ed0-9793-ac06335dc91f', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T01","left":"local speciality","right":"местное блюдо"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T02","left":"ingredient","right":"ингредиент"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T03","left":"dietary requirement","right":"требование к питанию"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T04","left":"service charge","right":"плата за обслуживание"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T05","left":"recommend","right":"рекомендовать"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T06","left":"portion","right":"порция"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T07","left":"custom","right":"обычай"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c81a07c-9438-529e-9d0c-3ae716200c70', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T08","is_correct":true,"text":"The portion was smaller than expected, although the quality and presentation were excellent."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0ad58eb-1259-51de-8760-f48148757c16', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The portion was smaller than expected, although the quality and presentation were excellent.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Порция была меньше ожидаемой, хотя качество и подача были превосходными.","target_language":"en","word_bank":["The","portion","was","smaller","than","expected,","although","the","quality","and","presentation","were","excellent."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a7bf772-d7a0-5906-a217-1588b81e1fe2', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ingredient","instruction":"Выберите подходящее слово.","options":["ingredient","recommend","custom"],"sentence_template":"The portion was smaller than expected, although the quality and presentation were excellent."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c12b325-3c5d-528c-a883-eb84186aef19', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","portion","was","smaller","than","expected,","although","the","quality","and","presentation","were","excellent."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["excellent.","were","presentation","and","quality","the","although","expected,","than","smaller","was","portion","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('718dbccc-2ca1-5741-ab25-88ae3a6a086a', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The portion was smaller than expected, although the quality and presentation were excellent. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40f196d5-ba7e-5d7b-88ec-84fd3001e563', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The portion was smaller than expected, although the quality and presentation were excellent. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Порция была меньше ожидаемой, хотя качество и подача были превосходными. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a49851a-c978-50bb-92dd-46e2a99a91a3', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The portion was smaller than expected, although the quality and presentation were excellent.","translation":"Порция была меньше ожидаемой, хотя качество и подача были превосходными.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Special Requirements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5c37d9c-1a7c-506e-8680-cbcc5ba8f539', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“ingredient” means one item used to make food.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T11","is_correct":true,"text":"one item used to make food"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T12","is_correct":false,"text":"a restriction on what someone can eat"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T13","is_correct":false,"text":"an extra restaurant fee"}],"word":"ingredient"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ede9aeab-bd66-5e5a-9cf2-a9112a5e5314', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The portion was smaller than expected, although the quality and presentation were excellent.","explanation":"The missing travel expression is “ingredient”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"ingredient","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T14","is_correct":true},{"audio_text":"service charge","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T15","is_correct":false},{"audio_text":"portion","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T16","is_correct":false}],"sentence_template":"The portion was smaller than expected, although the quality and presentation were excellent."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a538e39-0e04-5936-b353-2a6efea5d976', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ingredient","explanation":"The sentence requires “ingredient” to express the intended travel meaning.","hint_prefix":"ing","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The portion was smaller than expected, although the quality and presentation were excellent."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25fa564f-43f7-5213-aab5-889ec095fc8f', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"local speciality","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T17","text":"local speciality"},{"audio_text":"ingredient","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T18","text":"ingredient"},{"audio_text":"dietary requirement","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T19","text":"dietary requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27cd3d85-0911-5aac-8f89-2bb28f51ab38', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Special Requirements”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T20","is_correct":true,"text":"The portion was smaller than expected, although the quality and presentation were excellent."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1b132e76-fc01-52cb-9be7-9ee1dd172475', 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('570ffbc4-5556-5f81-9f5d-c458b7f23f29', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Reviewing a Dining Experience","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dce8b18-84f5-5b04-a12c-defa780565ae', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T01","left":"local speciality","right":"местное блюдо"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T02","left":"ingredient","right":"ингредиент"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T03","left":"dietary requirement","right":"требование к питанию"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T04","left":"service charge","right":"плата за обслуживание"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T05","left":"recommend","right":"рекомендовать"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T06","left":"portion","right":"порция"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T07","left":"custom","right":"обычай"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('766c8daf-878d-5ef8-b3bb-427a372c0110', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T08","is_correct":true,"text":"We checked whether the service charge was included and followed the local custom when leaving a tip."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8befe79d-8f9b-53bc-9ced-e34a02dc9b91', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We checked whether the service charge was included and followed the local custom when leaving a tip.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы проверили, включена ли плата за обслуживание, и последовали местному обычаю, оставляя чаевые.","target_language":"en","word_bank":["We","checked","whether","the","service","charge","was","included","and","followed","the","local","custom","when","leaving","a","tip."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89260a40-700f-5b03-b517-6fb60ec176fb', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"dietary requirement","instruction":"Выберите подходящее слово.","options":["dietary requirement","portion","local speciality"],"sentence_template":"We checked whether the service charge was included and followed the local custom when leaving a tip."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02bdc8ad-13fa-5d7c-9f0f-9ca59dd632e0', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","checked","whether","the","service","charge","was","included","and","followed","the","local","custom","when","leaving","a","tip."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["tip.","a","leaving","when","custom","local","the","followed","and","included","was","charge","service","the","whether","checked","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75620b9c-7acf-5322-a087-29065c13017e', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We checked whether the service charge was included and followed the local custom when leaving a tip. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f752283e-d123-563a-a946-b2522f187d81', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We checked whether the service charge was included and followed the local custom when leaving a tip. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы проверили, включена ли плата за обслуживание, и последовали местному обычаю, оставляя чаевые. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6ba2cb8-efbf-542d-a47a-06650202c6c6', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"We checked whether the service charge was included and followed the local custom when leaving a tip.","translation":"Мы проверили, включена ли плата за обслуживание, и последовали местному обычаю, оставляя чаевые.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Reviewing a Dining Experience"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e783a3ca-eb3a-51ef-a6fe-10c9a3b19082', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“dietary requirement” means a restriction on what someone can eat.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T11","is_correct":true,"text":"a restriction on what someone can eat"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T12","is_correct":false,"text":"an extra restaurant fee"},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T13","is_correct":false,"text":"suggest as a good choice"}],"word":"dietary requirement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3f7e3e5-f360-5640-a410-f78b5a48d921', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We checked whether the service charge was included and followed the local custom when leaving a tip.","explanation":"The missing travel expression is “dietary requirement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"dietary requirement","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T14","is_correct":true},{"audio_text":"recommend","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T15","is_correct":false},{"audio_text":"custom","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T16","is_correct":false}],"sentence_template":"We checked whether the service charge was included and followed the local custom when leaving a tip."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1322951-08fd-57a2-9fde-ab61ae15c2fe', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"dietary requirement","explanation":"The sentence requires “dietary requirement” to express the intended travel meaning.","hint_prefix":"die","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We checked whether the service charge was included and followed the local custom when leaving a tip."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f7fbe38-e4ad-5de2-ac1b-dc288da3ac8d', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"local speciality","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T17","text":"local speciality"},{"audio_text":"ingredient","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T18","text":"ingredient"},{"audio_text":"dietary requirement","id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T19","text":"dietary requirement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8dd76d7-d0fb-5e9a-b8c6-e28917c0ec3e', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Reviewing a Dining Experience”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T20","is_correct":true,"text":"We checked whether the service charge was included and followed the local custom when leaving a tip."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_FOOD_CULTURE_AND_DINING_EXPERIENCES_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('1b132e76-fc01-52cb-9be7-9ee1dd172475', '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('183df563-f33c-5e6d-b895-78f505157379', 'en', 'local speciality', 'местное блюдо', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcd36842-22fd-5292-a988-5d11602a8e22', 'en', 'ingredient', 'ингредиент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('834ca113-80e0-534d-a90f-888bfdcbebd3', 'en', 'dietary requirement', 'требование к питанию', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c68421-aa8d-5e51-bfb5-ccaee6a64f62', 'en', 'service charge', 'плата за обслуживание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53627892-a2b2-54d3-b0e8-3501ed52a48f', 'en', 'recommend', 'рекомендовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42c4721f-4963-5856-a409-b17ca7b5fa45', 'en', 'portion', 'порция', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05ed7ec1-fabc-52a7-a64c-fd4f99cac01d', 'en', 'custom', 'обычай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('183df563-f33c-5e6d-b895-78f505157379', 'en', 'local speciality', 'местное блюдо', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcd36842-22fd-5292-a988-5d11602a8e22', 'en', 'ingredient', 'ингредиент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('834ca113-80e0-534d-a90f-888bfdcbebd3', 'en', 'dietary requirement', 'требование к питанию', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c68421-aa8d-5e51-bfb5-ccaee6a64f62', 'en', 'service charge', 'плата за обслуживание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53627892-a2b2-54d3-b0e8-3501ed52a48f', 'en', 'recommend', 'рекомендовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42c4721f-4963-5856-a409-b17ca7b5fa45', 'en', 'portion', 'порция', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05ed7ec1-fabc-52a7-a64c-fd4f99cac01d', 'en', 'custom', 'обычай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('183df563-f33c-5e6d-b895-78f505157379', 'en', 'local speciality', 'местное блюдо', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fcd36842-22fd-5292-a988-5d11602a8e22', 'en', 'ingredient', 'ингредиент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('834ca113-80e0-534d-a90f-888bfdcbebd3', 'en', 'dietary requirement', 'требование к питанию', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1c68421-aa8d-5e51-bfb5-ccaee6a64f62', 'en', 'service charge', 'плата за обслуживание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53627892-a2b2-54d3-b0e8-3501ed52a48f', 'en', 'recommend', 'рекомендовать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42c4721f-4963-5856-a409-b17ca7b5fa45', 'en', 'portion', 'порция', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05ed7ec1-fabc-52a7-a64c-fd4f99cac01d', 'en', 'custom', 'обычай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'local speciality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'dietary requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'service charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'portion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '5f325a91-b1cf-537c-9ae3-06b750ee4b5a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'custom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'local speciality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'dietary requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'service charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'portion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, 'a13a99f5-1b95-56c9-a5ce-f39488a19840', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'custom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'local speciality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'dietary requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'service charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'portion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '1b132e76-fc01-52cb-9be7-9ee1dd172475', id, '570ffbc4-5556-5f81-9f5d-c458b7f23f29', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'custom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
