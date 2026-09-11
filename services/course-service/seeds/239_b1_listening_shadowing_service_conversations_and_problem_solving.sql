-- Track: B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', 'B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING', 'Обслуживание и решение проблем', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Обслуживание и решение проблем».', '{"en":"Service Conversations and Problem-Solving","ru":"Обслуживание и решение проблем"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for service conversations and problem-solving.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Обслуживание и решение проблем»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6d525735-c79f-5408-bb83-c9b18196e307', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Explaining a Request","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43fe99d1-cc09-52d1-9ed2-ce698aea3964', '6d525735-c79f-5408-bb83-c9b18196e307', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N01","left":"complaint","right":"жалоба"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N02","left":"resolve","right":"решить"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N03","left":"replacement","right":"замена"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N04","left":"refund","right":"возврат денег"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N05","left":"inconvenience","right":"неудобство"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N06","left":"policy","right":"правило компании"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N07","left":"compromise","right":"компромисс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b36ebabc-01ce-58d9-af26-5eff94f41d6f', '6d525735-c79f-5408-bb83-c9b18196e307', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N08","is_correct":true,"text":"The customer’s complaint concerned a repeated fault that the first repair had failed to resolve."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e0db386-a9a2-5ce8-bfbf-732a914902d0', '6d525735-c79f-5408-bb83-c9b18196e307', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The customer’s complaint concerned a repeated fault that the first repair had failed to resolve.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Жалоба клиента касалась повторяющейся неисправности, которую первый ремонт не устранил.","target_language":"en","word_bank":["The","customer’s","complaint","concerned","a","repeated","fault","that","the","first","repair","had","failed","to","resolve."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0712981a-49f1-5782-af0e-9eb81a495c4b', '6d525735-c79f-5408-bb83-c9b18196e307', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"complaint","instruction":"Выберите подходящее слово.","options":["complaint","refund","policy"],"sentence_template":"The customer’s ___ concerned a repeated fault that the first repair had failed to resolve."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf095e0c-c822-52a2-ac3b-b92ab1f08f4e', '6d525735-c79f-5408-bb83-c9b18196e307', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","customer’s","complaint","concerned","a","repeated","fault","that","the","first","repair","had","failed","to","resolve."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["resolve.","to","failed","had","repair","first","the","that","fault","repeated","a","concerned","complaint","customer’s","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa25c77d-6c2b-5c57-a2be-f0a1edf7a6b8', '6d525735-c79f-5408-bb83-c9b18196e307', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The customer’s complaint concerned a repeated fault that the first repair had failed to resolve. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5d84072-5183-5143-a87d-0e3f72f9d62a', '6d525735-c79f-5408-bb83-c9b18196e307', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The customer’s complaint concerned a repeated fault that the first repair had failed to resolve. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Жалоба клиента касалась повторяющейся неисправности, которую первый ремонт не устранил. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca2073f5-df02-506d-a1df-e119dc266ac3', '6d525735-c79f-5408-bb83-c9b18196e307', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The customer’s complaint concerned a repeated fault that the first repair had failed to resolve.","translation":"Жалоба клиента касалась повторяющейся неисправности, которую первый ремонт не устранил.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Explaining a Request"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4799bbb0-3a47-5493-863d-043e39213aea', '6d525735-c79f-5408-bb83-c9b18196e307', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“complaint” means a statement of dissatisfaction.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N11","is_correct":true,"text":"a statement of dissatisfaction"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N12","is_correct":false,"text":"find a successful answer"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N13","is_correct":false,"text":"an item provided instead of another"}],"word":"complaint"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d46a4d78-bafe-50ae-ad5f-b4c63260e678', '6d525735-c79f-5408-bb83-c9b18196e307', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The customer’s complaint concerned a repeated fault that the first repair had failed to resolve.","explanation":"The missing expression is “complaint”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"complaint","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N14","is_correct":true},{"audio_text":"replacement","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N15","is_correct":false},{"audio_text":"inconvenience","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N16","is_correct":false}],"sentence_template":"The customer’s ___ concerned a repeated fault that the first repair had failed to resolve."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('870747a4-8b66-566c-8fab-5542c7cb30a9', '6d525735-c79f-5408-bb83-c9b18196e307', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"complaint","explanation":"The recording uses “complaint” in this position.","hint_prefix":"com","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The customer’s ___ concerned a repeated fault that the first repair had failed to resolve."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe1bd7ed-da05-58ea-b9d9-7cf549acefff', '6d525735-c79f-5408-bb83-c9b18196e307', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"complaint","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N17","text":"complaint"},{"audio_text":"resolve","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N18","text":"resolve"},{"audio_text":"replacement","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N19","text":"replacement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24b4d6f8-38cf-5011-8ea2-0d7c36fa1957', '6d525735-c79f-5408-bb83-c9b18196e307', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N20","is_correct":true,"text":"The customer’s complaint concerned a repeated fault that the first repair had failed to resolve."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', '6d525735-c79f-5408-bb83-c9b18196e307', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fe1a2cf9-92e9-5157-b704-b51ea58d9a54', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Handling a Problem","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d88ba884-72e7-5f96-bd77-13e4317bf492', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N01","left":"complaint","right":"жалоба"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N02","left":"resolve","right":"решить"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N03","left":"replacement","right":"замена"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N04","left":"refund","right":"возврат денег"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N05","left":"inconvenience","right":"неудобство"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N06","left":"policy","right":"правило компании"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N07","left":"compromise","right":"компромисс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04a30e97-de7d-5d76-bcd1-2a8155e36d9a', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N08","is_correct":true,"text":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9bf241e-fdc1-5632-907a-ad0e07031ca8', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хотя правила не позволяли полный возврат денег, менеджер предложил замену и извинился за неудобство.","target_language":"en","word_bank":["Although","the","policy","did","not","allow","a","full","refund,","the","manager","offered","a","replacement","and","apologised","for","the","inconvenience."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d81eaf7a-cd0f-518a-a933-a41dabac07fc', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"resolve","instruction":"Выберите подходящее слово.","options":["resolve","inconvenience","compromise"],"sentence_template":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('045ea8bd-b95c-58b1-86c6-91c162d10afd', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Although","the","policy","did","not","allow","a","full","refund,","the","manager","offered","a","replacement","and","apologised","for","the","inconvenience."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["inconvenience.","the","for","apologised","and","replacement","a","offered","manager","the","refund,","full","a","allow","not","did","policy","the","Although"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a63ad4f7-1406-5217-bb79-d5f5cb436643', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3faea3d-7ace-5474-bb01-e8469c4877de', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Хотя правила не позволяли полный возврат денег, менеджер предложил замену и извинился за неудобство. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bbb2e07-2bbf-5a13-a0df-60c6463df265', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience.","translation":"Хотя правила не позволяли полный возврат денег, менеджер предложил замену и извинился за неудобство.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Handling a Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('995f3ccb-5182-51d5-a45c-a8f396c55a0b', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“resolve” means find a successful answer.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N11","is_correct":true,"text":"find a successful answer"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N12","is_correct":false,"text":"an item provided instead of another"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N13","is_correct":false,"text":"money returned to a customer"}],"word":"resolve"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d945275-03fb-568e-bf5c-172a1a04e477', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience.","explanation":"The missing expression is “resolve”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"resolve","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N14","is_correct":true},{"audio_text":"refund","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N15","is_correct":false},{"audio_text":"policy","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N16","is_correct":false}],"sentence_template":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('039fd87d-a9b7-5be3-9512-b423d1092d5c', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"resolve","explanation":"The recording uses “resolve” in this position.","hint_prefix":"res","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e64aa1b2-179b-521e-8405-48b7e6b1c5f8', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"complaint","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N17","text":"complaint"},{"audio_text":"resolve","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N18","text":"resolve"},{"audio_text":"replacement","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N19","text":"replacement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b43561da-8c15-5616-9d47-6612551ddaac', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N20","is_correct":true,"text":"Although the policy did not allow a full refund, the manager offered a replacement and apologised for the inconvenience."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Agreeing on a Solution","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55d2edfb-5ea1-55de-9c1b-03687d95e36b', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N01","left":"complaint","right":"жалоба"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N02","left":"resolve","right":"решить"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N03","left":"replacement","right":"замена"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N04","left":"refund","right":"возврат денег"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N05","left":"inconvenience","right":"неудобство"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N06","left":"policy","right":"правило компании"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N07","left":"compromise","right":"компромисс"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c93a8ad7-ba1e-5443-84a6-21b96872339d', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N08","is_correct":true,"text":"Both sides accepted the compromise because it addressed the main problem without causing further delay."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ffecd13-b0aa-5414-872e-6b36a894baba', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Both sides accepted the compromise because it addressed the main problem without causing further delay.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обе стороны приняли компромисс, потому что он решал основную проблему без дополнительной задержки.","target_language":"en","word_bank":["Both","sides","accepted","the","compromise","because","it","addressed","the","main","problem","without","causing","further","delay."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb0230ff-6b78-57ea-8381-5174c2229b01', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"replacement","instruction":"Выберите подходящее слово.","options":["replacement","policy","complaint"],"sentence_template":"Both sides accepted the compromise because it addressed the main problem without causing further delay."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a94cbac9-92e5-5f36-97af-863a1c957477', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Both","sides","accepted","the","compromise","because","it","addressed","the","main","problem","without","causing","further","delay."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["delay.","further","causing","without","problem","main","the","addressed","it","because","compromise","the","accepted","sides","Both"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4d29f12-3069-5874-8cb4-467c0b482514', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Both sides accepted the compromise because it addressed the main problem without causing further delay. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('839d8529-773b-5a09-9d96-859a962b1cee', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Both sides accepted the compromise because it addressed the main problem without causing further delay. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Обе стороны приняли компромисс, потому что он решал основную проблему без дополнительной задержки. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25261356-76fc-511c-81fa-150af6aa58c2', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Both sides accepted the compromise because it addressed the main problem without causing further delay.","translation":"Обе стороны приняли компромисс, потому что он решал основную проблему без дополнительной задержки.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Agreeing on a Solution"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8599c564-03fc-5f51-9032-ea771d0d97b9', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“replacement” means an item provided instead of another.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N11","is_correct":true,"text":"an item provided instead of another"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N12","is_correct":false,"text":"money returned to a customer"},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N13","is_correct":false,"text":"trouble caused to someone"}],"word":"replacement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f62797af-46df-56e5-a3a0-e49b63aa6528', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Both sides accepted the compromise because it addressed the main problem without causing further delay.","explanation":"The missing expression is “replacement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"replacement","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N14","is_correct":true},{"audio_text":"inconvenience","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N15","is_correct":false},{"audio_text":"compromise","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N16","is_correct":false}],"sentence_template":"Both sides accepted the compromise because it addressed the main problem without causing further delay."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4f987ee-1af5-57ce-8d15-d397d2799896', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"replacement","explanation":"The recording uses “replacement” in this position.","hint_prefix":"rep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Both sides accepted the compromise because it addressed the main problem without causing further delay."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc466cca-9039-54cf-84b4-b147041ceb7a', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"complaint","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N17","text":"complaint"},{"audio_text":"resolve","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N18","text":"resolve"},{"audio_text":"replacement","id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N19","text":"replacement"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53147de1-763a-5c11-a672-4f669b22effb', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N20","is_correct":true,"text":"Both sides accepted the compromise because it addressed the main problem without causing further delay."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_SERVICE_CONVERSATIONS_AND_PROBLEM_SOLVING_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148311d0-3a80-52e1-a425-c4572d6f437d', 'en', 'replacement', 'замена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('625f1b79-b527-5de7-a628-9bfa3c50c17b', 'en', 'inconvenience', 'неудобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9506d732-b719-57e6-8102-035bc70bdf98', 'en', 'policy', 'правило компании', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148311d0-3a80-52e1-a425-c4572d6f437d', 'en', 'replacement', 'замена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('625f1b79-b527-5de7-a628-9bfa3c50c17b', 'en', 'inconvenience', 'неудобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9506d732-b719-57e6-8102-035bc70bdf98', 'en', 'policy', 'правило компании', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82532f1e-51ed-52a1-89fe-22b82ccb80e3', 'en', 'resolve', 'решить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('148311d0-3a80-52e1-a425-c4572d6f437d', 'en', 'replacement', 'замена', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат денег', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('625f1b79-b527-5de7-a628-9bfa3c50c17b', 'en', 'inconvenience', 'неудобство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9506d732-b719-57e6-8102-035bc70bdf98', 'en', 'policy', 'правило компании', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('35db5830-e5b4-560a-9d02-624f8ba64c82', 'en', 'compromise', 'компромисс', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, '6d525735-c79f-5408-bb83-c9b18196e307', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, '6d525735-c79f-5408-bb83-c9b18196e307', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, '6d525735-c79f-5408-bb83-c9b18196e307', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, '6d525735-c79f-5408-bb83-c9b18196e307', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, '6d525735-c79f-5408-bb83-c9b18196e307', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'inconvenience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, '6d525735-c79f-5408-bb83-c9b18196e307', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, '6d525735-c79f-5408-bb83-c9b18196e307', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inconvenience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'fe1a2cf9-92e9-5157-b704-b51ea58d9a54', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'resolve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'inconvenience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'policy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6acf2cd1-566b-5304-9a93-cf38cbb8f1e0', id, 'a50d2fcc-6533-5aa1-8fd7-41d6e4efffb6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'compromise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
