-- Track: B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('9c17c9c7-87a8-5d21-8c66-a9fff718645f', 'B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS', 'Подробные инструкции и маршруты', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Подробные инструкции и маршруты».', '{"en":"Detailed Instructions and Directions","ru":"Подробные инструкции и маршруты"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for detailed instructions and directions.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Подробные инструкции и маршруты»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c4afdd0a-fce4-596c-bbd1-6e8025209d65', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Multi-step Instructions","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18f75b08-29c0-5f98-8e30-bcaffe823a0c', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N01","left":"landmark","right":"ориентир"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N02","left":"junction","right":"перекрёсток"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N03","left":"procedure","right":"процедура"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N04","left":"sequence","right":"последовательность"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N05","left":"make sure","right":"убедиться"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N06","left":"otherwise","right":"иначе"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N07","left":"clarify","right":"уточнять"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3682392d-07d0-511f-a0e4-64bf08e91324', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N08","is_correct":true,"text":"After the second junction, continue until you see a glass building that serves as the main landmark."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac833072-87e4-5f01-9bed-d45998e17403', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"After the second junction, continue until you see a glass building that serves as the main landmark.","instruction":"Соберите перевод.","source_language":"ru","source_text":"После второго перекрёстка продолжайте путь, пока не увидите стеклянное здание, которое служит главным ориентиром.","target_language":"en","word_bank":["After","the","second","junction,","continue","until","you","see","a","glass","building","that","serves","as","the","main","landmark."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96a86aef-35d3-5eff-950a-ec1d83afc083', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"landmark","instruction":"Выберите подходящее слово.","options":["landmark","sequence","otherwise"],"sentence_template":"After the second junction, continue until you see a glass building that serves as the main ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e3f78e7-4764-5b67-ace3-1fc4f4748871', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["After","the","second","junction,","continue","until","you","see","a","glass","building","that","serves","as","the","main","landmark."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["landmark.","main","the","as","serves","that","building","glass","a","see","you","until","continue","junction,","second","the","After"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('baa67385-8c15-5580-aa9c-d9a2e2dbb35b', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"After the second junction, continue until you see a glass building that serves as the main landmark. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24f30db5-2312-5de1-826e-56ed60d1427f', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"After the second junction, continue until you see a glass building that serves as the main landmark. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"После второго перекрёстка продолжайте путь, пока не увидите стеклянное здание, которое служит главным ориентиром. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e841c5c2-1712-51f1-a90f-5a8a245623d8', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"After the second junction, continue until you see a glass building that serves as the main landmark.","translation":"После второго перекрёстка продолжайте путь, пока не увидите стеклянное здание, которое служит главным ориентиром.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Multi-step Instructions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4249ad96-f71a-551f-8678-a9e436f63a91', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“landmark” means a recognisable place used for navigation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N11","is_correct":true,"text":"a recognisable place used for navigation"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N12","is_correct":false,"text":"a place where roads meet"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N13","is_correct":false,"text":"an established series of actions"}],"word":"landmark"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd7df6bf-bc89-52dd-b917-788b055b07fb', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"After the second junction, continue until you see a glass building that serves as the main landmark.","explanation":"The missing expression is “landmark”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"landmark","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N14","is_correct":true},{"audio_text":"procedure","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N15","is_correct":false},{"audio_text":"make sure","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N16","is_correct":false}],"sentence_template":"After the second junction, continue until you see a glass building that serves as the main ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f0e7ba9-d22a-5903-97d7-a1abe90664cd', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"landmark","explanation":"The recording uses “landmark” in this position.","hint_prefix":"lan","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"After the second junction, continue until you see a glass building that serves as the main ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb8d8a79-be6e-590f-8073-ed598fb03bb6', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"landmark","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N17","text":"landmark"},{"audio_text":"junction","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N18","text":"junction"},{"audio_text":"procedure","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N19","text":"procedure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6275c1b4-ff25-5e4d-86e5-6d2588d1ec89', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N20","is_correct":true,"text":"After the second junction, continue until you see a glass building that serves as the main landmark."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9c17c9c7-87a8-5d21-8c66-a9fff718645f', 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Routes and Landmarks","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('895a85b2-5fd3-5c56-82ac-bd679170c62a', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N01","left":"landmark","right":"ориентир"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N02","left":"junction","right":"перекрёсток"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N03","left":"procedure","right":"процедура"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N04","left":"sequence","right":"последовательность"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N05","left":"make sure","right":"убедиться"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N06","left":"otherwise","right":"иначе"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N07","left":"clarify","right":"уточнять"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7755def7-02ae-5530-b271-ad906e6f6950', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N08","is_correct":true,"text":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2980814-1469-5ead-83ee-9379ef67c7fc', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедитесь, что выполняете процедуру в правильной последовательности; иначе система может отклонить запрос.","target_language":"en","word_bank":["Make","sure","you","complete","the","procedure","in","the","correct","sequence;","otherwise,","the","system","may","reject","the","request."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6598b65e-17f5-522e-b5c3-c962e51b6326', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"junction","instruction":"Выберите подходящее слово.","options":["junction","make sure","clarify"],"sentence_template":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4fc406f-c6d6-52ed-96d5-e50f97ea2fa7', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Make","sure","you","complete","the","procedure","in","the","correct","sequence;","otherwise,","the","system","may","reject","the","request."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["request.","the","reject","may","system","the","otherwise,","sequence;","correct","the","in","procedure","the","complete","you","sure","Make"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b77673c8-2ae7-580e-9dc8-ba0db49839af', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4da8f540-c9f3-54da-a0b3-f9d657087ef1', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Убедитесь, что выполняете процедуру в правильной последовательности; иначе система может отклонить запрос. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d9c0182-4cc0-57c0-ab0a-0bc3f83c654f', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request.","translation":"Убедитесь, что выполняете процедуру в правильной последовательности; иначе система может отклонить запрос.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Routes and Landmarks"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('059c4417-8f7a-58b6-917c-75194f367417', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“junction” means a place where roads meet.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N11","is_correct":true,"text":"a place where roads meet"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N12","is_correct":false,"text":"an established series of actions"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N13","is_correct":false,"text":"the correct order of steps"}],"word":"junction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c2d500e3-6015-5708-9dc1-598fd82c0f3f', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request.","explanation":"The missing expression is “junction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"junction","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N14","is_correct":true},{"audio_text":"sequence","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N15","is_correct":false},{"audio_text":"otherwise","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N16","is_correct":false}],"sentence_template":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('162e898d-fffc-54f4-9f65-2604d8d25f2e', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"junction","explanation":"The recording uses “junction” in this position.","hint_prefix":"jun","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c57c5c2-8107-5332-986e-6b2598ee9001', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"landmark","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N17","text":"landmark"},{"audio_text":"junction","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N18","text":"junction"},{"audio_text":"procedure","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N19","text":"procedure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2270ea1-a9eb-5cef-92bf-07b37cf6c0cc', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N20","is_correct":true,"text":"Make sure you complete the procedure in the correct sequence; otherwise, the system may reject the request."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9c17c9c7-87a8-5d21-8c66-a9fff718645f', 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('047d3188-5711-5363-9721-1da3db2a74ee', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Checking Understanding","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fe7ecf7-d2da-56c0-9c82-9063762eeb08', '047d3188-5711-5363-9721-1da3db2a74ee', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N01","left":"landmark","right":"ориентир"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N02","left":"junction","right":"перекрёсток"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N03","left":"procedure","right":"процедура"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N04","left":"sequence","right":"последовательность"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N05","left":"make sure","right":"убедиться"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N06","left":"otherwise","right":"иначе"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N07","left":"clarify","right":"уточнять"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18351585-4cf8-5768-9864-142efc03bba6', '047d3188-5711-5363-9721-1da3db2a74ee', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N08","is_correct":true,"text":"If the final step is unclear, ask the speaker to clarify it before taking action."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d354d52-188a-55ea-b56f-949f7f86fb84', '047d3188-5711-5363-9721-1da3db2a74ee', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the final step is unclear, ask the speaker to clarify it before taking action.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Если последний шаг неясен, попросите говорящего уточнить его, прежде чем действовать.","target_language":"en","word_bank":["If","the","final","step","is","unclear,","ask","the","speaker","to","clarify","it","before","taking","action."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ca8548f-c874-5ad7-afbc-387ea241c7a9', '047d3188-5711-5363-9721-1da3db2a74ee', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"procedure","instruction":"Выберите подходящее слово.","options":["procedure","otherwise","landmark"],"sentence_template":"If the final step is unclear, ask the speaker to clarify it before taking action."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36be4444-7e61-5b68-a629-064ad5239523', '047d3188-5711-5363-9721-1da3db2a74ee', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["If","the","final","step","is","unclear,","ask","the","speaker","to","clarify","it","before","taking","action."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["action.","taking","before","it","clarify","to","speaker","the","ask","unclear,","is","step","final","the","If"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f65a212-39a3-5fc1-8d32-2945e85f88c4', '047d3188-5711-5363-9721-1da3db2a74ee', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the final step is unclear, ask the speaker to clarify it before taking action. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('251d1122-51e0-52f6-bd71-ecb59214a787', '047d3188-5711-5363-9721-1da3db2a74ee', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the final step is unclear, ask the speaker to clarify it before taking action. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Если последний шаг неясен, попросите говорящего уточнить его, прежде чем действовать. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c191572c-1b33-5eb3-8aae-a01575b2c1a8', '047d3188-5711-5363-9721-1da3db2a74ee', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"If the final step is unclear, ask the speaker to clarify it before taking action.","translation":"Если последний шаг неясен, попросите говорящего уточнить его, прежде чем действовать.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Checking Understanding"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbe3434c-cd90-54a8-b49f-7262272d94ee', '047d3188-5711-5363-9721-1da3db2a74ee', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“procedure” means an established series of actions.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N11","is_correct":true,"text":"an established series of actions"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N12","is_correct":false,"text":"the correct order of steps"},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N13","is_correct":false,"text":"check that something is true"}],"word":"procedure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39d544b8-20e3-5328-abac-fe4a8f9ee405', '047d3188-5711-5363-9721-1da3db2a74ee', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the final step is unclear, ask the speaker to clarify it before taking action.","explanation":"The missing expression is “procedure”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"procedure","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N14","is_correct":true},{"audio_text":"make sure","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N15","is_correct":false},{"audio_text":"clarify","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N16","is_correct":false}],"sentence_template":"If the final step is unclear, ask the speaker to clarify it before taking action."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a02afddd-8d26-5f9f-bc68-e96bbbe2ac25', '047d3188-5711-5363-9721-1da3db2a74ee', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"procedure","explanation":"The recording uses “procedure” in this position.","hint_prefix":"pro","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"If the final step is unclear, ask the speaker to clarify it before taking action."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0de8ba7-5a6d-50b8-944b-8f82fd89afe3', '047d3188-5711-5363-9721-1da3db2a74ee', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"landmark","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N17","text":"landmark"},{"audio_text":"junction","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N18","text":"junction"},{"audio_text":"procedure","id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N19","text":"procedure"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b51ee769-effb-5e5f-a9cc-253fa5fd802c', '047d3188-5711-5363-9721-1da3db2a74ee', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N20","is_correct":true,"text":"If the final step is unclear, ask the speaker to clarify it before taking action."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_DETAILED_INSTRUCTIONS_AND_DIRECTIONS_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9c17c9c7-87a8-5d21-8c66-a9fff718645f', '047d3188-5711-5363-9721-1da3db2a74ee', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e96910a-2d9a-5efb-bbe5-4ed103bcfcfe', 'en', 'junction', 'перекрёсток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f356ec4e-5884-5644-a1ad-2ff300f44333', 'en', 'procedure', 'процедура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('230de635-1334-5bf9-8734-60ff35b8bcc9', 'en', 'make sure', 'убедиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b52e0d9e-39d1-522f-a02e-4c96f21a8f38', 'en', 'otherwise', 'иначе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e96910a-2d9a-5efb-bbe5-4ed103bcfcfe', 'en', 'junction', 'перекрёсток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f356ec4e-5884-5644-a1ad-2ff300f44333', 'en', 'procedure', 'процедура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('230de635-1334-5bf9-8734-60ff35b8bcc9', 'en', 'make sure', 'убедиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b52e0d9e-39d1-522f-a02e-4c96f21a8f38', 'en', 'otherwise', 'иначе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e96910a-2d9a-5efb-bbe5-4ed103bcfcfe', 'en', 'junction', 'перекрёсток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f356ec4e-5884-5644-a1ad-2ff300f44333', 'en', 'procedure', 'процедура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a96db0-d415-5944-9e90-b75160dc78b5', 'en', 'sequence', 'последовательность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('230de635-1334-5bf9-8734-60ff35b8bcc9', 'en', 'make sure', 'убедиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b52e0d9e-39d1-522f-a02e-4c96f21a8f38', 'en', 'otherwise', 'иначе', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('076f2a6e-d040-58e4-b99b-6c8f8b0e8b7c', 'en', 'clarify', 'уточнять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'junction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'make sure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'otherwise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c4afdd0a-fce4-596c-bbd1-6e8025209d65', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'junction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'make sure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'otherwise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, 'c0f6bf39-0ae1-5732-9e6c-2a3f020aaa02', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, '047d3188-5711-5363-9721-1da3db2a74ee', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, '047d3188-5711-5363-9721-1da3db2a74ee', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'junction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, '047d3188-5711-5363-9721-1da3db2a74ee', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'procedure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, '047d3188-5711-5363-9721-1da3db2a74ee', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, '047d3188-5711-5363-9721-1da3db2a74ee', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'make sure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, '047d3188-5711-5363-9721-1da3db2a74ee', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'otherwise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9c17c9c7-87a8-5d21-8c66-a9fff718645f', id, '047d3188-5711-5363-9721-1da3db2a74ee', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'clarify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
