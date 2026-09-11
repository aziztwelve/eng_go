-- Track: A2_SPEAKING_SHARING_EXPERIENCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', 'A2_SPEAKING_SHARING_EXPERIENCES', 'Личный опыт', 'Развивайте разговорные навыки уровня A2 по теме «Личный опыт».', '{"en":"Sharing Experiences","ru":"Личный опыт"}'::jsonb, '{"en":"Develop A2 speaking skills for sharing experiences.","ru":"Развивайте разговорные навыки уровня A2 по теме «Личный опыт»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('baebb092-3888-547c-8a81-2dbb6b3d64d5', NULL, 'Никогда не забуду', 'Поделиться ярким опытом, используя past simple и present perfect.', '{"en":"I Will Never Forget","ru":"Никогда не забуду"}'::jsonb, '{"en":"Share a memorable experience using past simple and present perfect.","ru":"Поделиться ярким опытом, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e604c62-3ac0-573e-bb16-00d77bd338e4', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"memorable","right":"запоминающийся"},{"id":"P2","left":"for the first time","right":"впервые"},{"id":"P3","left":"to try","right":"попробовать"},{"id":"P4","left":"abroad","right":"за границей"},{"id":"P5","left":"the best ... ever","right":"лучший ... когда-либо"},{"id":"P6","left":"to recommend","right":"порекомендовать"},{"id":"P7","left":"exciting","right":"захватывающий"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('668e0c6a-e148-5531-a192-be72250478c3', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “It is the most exciting thing I have ever done.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"It is the most exciting thing I have ever done."},{"id":"Q_B","is_correct":false,"text":"It is the most exciting thing I did ever it."},{"id":"Q_C","is_correct":false,"text":"It is exciting the most thing I do already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d525517-d70c-5d12-8b13-8e3be82cfb02', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I tried surfing for the first time, and it was the best day of the summer.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я впервые попробовал серфинг, и это был лучший день лета.","target_language":"en","word_bank":["tried","it","did","I","the","best","summer.","of","day","the","tomorrow","try","surfing","for","time,","the","first","and","was"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e08b7920-fd46-56b7-8d30-69f294effcda', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"for","instruction":"Выберите подходящее слово.","options":["for","since","at"],"sentence_template":"She saw the northern lights ___ the first time in Norway.","translation_hint":"Она впервые увидела северное сияние в Норвегии."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fff22f9b-d472-5f12-be78-be76f47684c9', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","has","never","travelled","abroad","before","this","trip."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","abroad","never","this","before","He","did","was","trip.","travelled"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('883c5450-f1b3-5f5c-a2fe-7e3b67538d6d', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have just come back from the mountains, and the sunrise above the clouds was unforgettable.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a65f47a7-cef1-5121-96e2-1fc0c67a7514', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have just come back from the mountains, and the sunrise above the clouds was unforgettable.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я только что вернулся из гор, и рассвет над облаками был незабываемым."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00038ef7-4ae3-5eeb-9098-e12d3bf900a2', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"You look excited. Did something happen?","translation":"Ты выглядишь взволнованным. Что-то случилось?","type":"dialogue"},{"character":"Tom","text":"Yes! I have just passed my driving test — on the second attempt.","translation":"Да! Я только что сдал экзамен на вождение — со второй попытки.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Congratulations! Have you already told your parents?"},{"is_correct":false,"text":"Congrats! Did you told them tomorrow?"},{"is_correct":false,"text":"Is the test driving you again?"}],"text":"What does Anna say?","type":"choice"}],"title":"The Story"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4934ddd0-8204-5f57-a7c9-12c3174c399c', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“memorable” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Worth remembering for a long time"},{"id":"D_B","is_correct":false,"text":"Boring and easy to forget"},{"id":"D_C","is_correct":false,"text":"Too difficult to talk about"}],"word":"memorable"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ce2a0eb-bd37-5c70-bfd8-28941d6c4a72', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have tried scuba diving in Egypt.","explanation":"The missing word is “tried”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"tried","id":"LW_A","is_correct":true},{"audio_text":"try","id":"LW_B","is_correct":false},{"audio_text":"trying","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ scuba diving in Egypt."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef0965d3-07f5-5447-85da-ebd86c82bf6f', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"best","explanation":"The complete sentence is “It was the best meal I have ever had.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"It was the ___ meal I have ever had."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89019558-866e-5557-a2aa-9855d77214a7', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"memorable","id":"V1","text":"memorable"},{"audio_text":"for the first time","id":"V2","text":"for the first time"},{"audio_text":"to try","id":"V3","text":"to try"},{"audio_text":"abroad","id":"V4","text":"abroad"},{"audio_text":"the best ... ever","id":"V5","text":"the best ... ever"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61b2eaaf-889f-554c-9aaf-0777d53d6f3a', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Have you ever been to Japan?"}],"explanation":"“Yes, twice — the second trip was even more memorable than the first.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, twice — the second trip was even more memorable than the first."},{"id":"C_B","is_correct":false,"text":"I go there yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Japan is being me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('efb6ee17-b5f7-50f4-9095-334c0d19e262', NULL, 'Куда я бы вернулся', 'Сравнить впечатления от мест и рассказать о желании вернуться.', '{"en":"Where I Would Return","ru":"Куда я бы вернулся"}'::jsonb, '{"en":"Compare experiences of places and talk about returning.","ru":"Сравнить впечатления от мест и рассказать о желании вернуться."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec896000-4720-5c1a-bb06-4d073480763b', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to come back to","right":"вернуться в"},{"id":"P2","left":"more impressive","right":"впечатляющий (более)"},{"id":"P3","left":"crowded","right":"многолюдный"},{"id":"P4","left":"authentic","right":"аутентичный"},{"id":"P5","left":"next time","right":"в следующий раз"},{"id":"P6","left":"to explore","right":"исследовать"},{"id":"P7","left":"off the beaten path","right":"вдали от туристических троп"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('362d47d6-7f67-526f-96f2-2ad22f4ff3aa', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The small town was more authentic than the capital.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The small town was more authentic than the capital."},{"id":"Q_B","is_correct":false,"text":"The town was authenticer than the capital."},{"id":"Q_C","is_correct":false,"text":"The town was most authentic than capital."}],"question":"Which sentence compares two places correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85f0a375-9184-519d-9cfa-e9d96961e5f0', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Next time we are going to explore places off the beaten path.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В следующий раз мы собираемся поехать в места вдали от туристических троп.","target_language":"en","word_bank":["path.","did","explored","to","the","are","explore","yesterday","off","time","beaten","Next","going","places","we"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0ebdd8b-f2ae-56fd-89a7-5f61f6ea6d57', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"The local market felt ___ authentic than the mall.","translation_hint":"Местный рынок показался аутентичнее торгового центра."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3751aaee-7d75-52f3-82bf-6d7eea71a739', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","come","back","to","this","country","for","sure."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["back","am","for","to","come","country","this","going","was","to","I","sure.","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44362720-3e78-533d-80de-d697b2e638dc', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The mountains were less crowded than the coast, and the food was more impressive.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b6ed1e3-6f93-5777-85cc-15bb69ca713c', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The mountains were less crowded than the coast, and the food was more impressive.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"В горах было меньше людей, чем на побережье, а еда впечатляла сильнее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1aa1fce-2258-5cad-96be-53a87d9378fe', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Which did you like more — Lisbon or Porto?","translation":"Что понравилось больше — Лиссабон или Порту?","type":"dialogue"},{"character":"Tom","text":"Porto is smaller, but it felt more authentic.","translation":"Порту меньше, но ощущался более аутентичным.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Would you go back there next spring?"},{"is_correct":false,"text":"Did you go back tomorrow yesterday?"},{"is_correct":false,"text":"Is Porto liking you more already?"}],"text":"What does Anna ask?","type":"choice"}],"title":"Trip Comparison"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18d83a02-26ec-5827-a16b-0a59ba6072a3', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“off the beaten path” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Far from the places most tourists visit"},{"id":"D_B","is_correct":false,"text":"In the very centre of the old town"},{"id":"D_C","is_correct":false,"text":"Next to the most famous museum"}],"word":"off the beaten path"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c0cf26e-76bc-5e80-a074-56c7521bbcba', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to explore the north coast.","explanation":"The missing word is “explore”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"explore","id":"LW_A","is_correct":true},{"audio_text":"explored","id":"LW_B","is_correct":false},{"audio_text":"exploring","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ the north coast."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97caf0d9-f0ca-5bbb-b54b-3508445855bf', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “This cafe is less touristy than the one online.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This cafe is ___ touristy than the one online."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c57ac6b4-5c46-5199-be24-c723372299b5', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to come back to","id":"V1","text":"to come back to"},{"audio_text":"more impressive","id":"V2","text":"more impressive"},{"audio_text":"crowded","id":"V3","text":"crowded"},{"audio_text":"authentic","id":"V4","text":"authentic"},{"audio_text":"next time","id":"V5","text":"next time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8614db90-8c34-5ac6-a34d-ea9e3f060a68', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Was the festival worth the trip?"}],"explanation":"“Absolutely — we are going to return next year, and this time we will book earlier.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Absolutely — we are going to return next year, and this time we will book earlier."},{"id":"C_B","is_correct":false,"text":"It was worth it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The festival is tripping us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1757b7e2-df25-5c70-b3e7-784aba339558', NULL, 'Расскажи так, чтобы поверили', 'Дать советы о рассказах об опыте, используя should и первое условное.', '{"en":"Tell It So People Believe You","ru":"Расскажи так, чтобы поверили"}'::jsonb, '{"en":"Give advice about storytelling using should and the first conditional.","ru":"Дать советы о рассказах об опыте, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c02c9a78-7ef4-5661-9da9-5a2056e6e1c5', '1757b7e2-df25-5c70-b3e7-784aba339558', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"detail","right":"деталь"},{"id":"P2","left":"to keep it short","right":"говорить кратко"},{"id":"P3","left":"to exaggerate","right":"преувеличивать"},{"id":"P4","left":"listener","right":"слушатель"},{"id":"P5","left":"to pause","right":"сделать паузу"},{"id":"P6","left":"question","right":"вопрос"},{"id":"P7","left":"to involve the listener","right":"вовлечь слушателя"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fcac6b7-7f4a-5c51-ad17-0ce5f1c6145a', '1757b7e2-df25-5c70-b3e7-784aba339558', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should add one or two vivid details.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should add one or two vivid details."},{"id":"Q_B","is_correct":false,"text":"You should to add details yesterday."},{"id":"Q_C","is_correct":false,"text":"You must adding details last time."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0d21d08-b762-5ea0-adc6-5f432fce44ef', '1757b7e2-df25-5c70-b3e7-784aba339558', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you add one or two vivid details, the story will come alive.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если добавить пару ярких деталей, история станет живее.","target_language":"en","word_bank":["one","story","will","yesterday","come","two","did","the","add","added","If","details,","or","alive.","vivid","you"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f7cfe5d-c820-548d-a268-d40e14873a95', '1757b7e2-df25-5c70-b3e7-784aba339558', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"is","instruction":"Выберите подходящее слово.","options":["is","will be","was"],"sentence_template":"If your story ___ too long, people will lose interest.","translation_hint":"Если история слишком длинная, люди потеряют интерес."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e24b6125-12f2-580e-8b5c-10cf340174c6', '1757b7e2-df25-5c70-b3e7-784aba339558', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","sometimes","pause","for","effect."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","sometimes","effect.","pause","went","for","should","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6458c15-ccd2-5193-9e85-3da865c12994', '1757b7e2-df25-5c70-b3e7-784aba339558', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you ask the listener a question, they will stay with you until the end.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7864a1b-ccf4-5714-b4e9-5abcce53d805', '1757b7e2-df25-5c70-b3e7-784aba339558', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you ask the listener a question, they will stay with you until the end.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если задать слушателю вопрос, он останется с тобой до конца."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b3c2de5-abb3-58a7-9ff3-53b9d6287766', '1757b7e2-df25-5c70-b3e7-784aba339558', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I told the team about my trip, but everyone looked bored.","translation":"Я рассказала команде о поездке, но все выглядели скучающими.","type":"dialogue"},{"character":"Tom","text":"How did you tell it — with all the flight details?","translation":"Как ты рассказывала — со всеми деталями перелёта?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Next time you should start with the most surprising moment."},{"is_correct":false,"text":"Next time you must starting with the end."},{"is_correct":false,"text":"The story is boring the team itself."}],"text":"What is Tom''s advice?","type":"choice"}],"title":"The Boring Story"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8e10136-7699-58de-a707-64c693c76a15', '1757b7e2-df25-5c70-b3e7-784aba339558', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to exaggerate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To make things sound bigger than they were"},{"id":"D_B","is_correct":false,"text":"To describe things exactly as they happened"},{"id":"D_C","is_correct":false,"text":"To refuse to tell a story at all"}],"word":"to exaggerate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2abb6a3-9861-5e93-a662-634154712958', '1757b7e2-df25-5c70-b3e7-784aba339558', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you keep it short, it will work better.","explanation":"The missing word is “keep”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"keep","id":"LW_A","is_correct":true},{"audio_text":"will keep","id":"LW_B","is_correct":false},{"audio_text":"kept","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ it short, it will work better."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db783ebe-6603-5f50-919d-368042f0233f', '1757b7e2-df25-5c70-b3e7-784aba339558', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “You should not exaggerate in every story.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should not exaggerate ___ every story."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2e49e33-abb3-5ec0-9acf-2e16d53e0712', '1757b7e2-df25-5c70-b3e7-784aba339558', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"detail","id":"V1","text":"detail"},{"audio_text":"to keep it short","id":"V2","text":"to keep it short"},{"audio_text":"to exaggerate","id":"V3","text":"to exaggerate"},{"audio_text":"listener","id":"V4","text":"listener"},{"audio_text":"to pause","id":"V5","text":"to pause"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e0eea00-baeb-5d2e-b1db-07d1d2d99327', '1757b7e2-df25-5c70-b3e7-784aba339558', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Nobody listens when I tell stories."}],"explanation":"“Try asking them a question at the start — if they answer, they will listen further.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Try asking them a question at the start — if they answer, they will listen further."},{"id":"C_B","is_correct":false,"text":"They listened yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The stories are listening to me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', '1757b7e2-df25-5c70-b3e7-784aba339558', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bf947abe-c348-5835-a752-c0d38417e697', 'en', 'memorable', 'запоминающийся', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('34ca965e-b699-509d-89c5-994cbae1a91e', 'en', 'for the first time', 'впервые', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46c221e4-af4e-5842-bfe7-6e176277f946', 'en', 'to try', 'попробовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efb21a54-6581-5499-b454-4ccdadbc1eaa', 'en', 'abroad', 'за границей', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e370fb9f-3656-50b1-8796-5a1b9def9d2b', 'en', 'the best ... ever', 'лучший ... когда-либо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a9c7-ccb0-5bbe-bc59-8df91202fb08', 'en', 'to recommend', 'порекомендовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21560f27-c6ad-5c45-b207-99ef1cab3278', 'en', 'exciting', 'захватывающий', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('012ca189-b941-59dd-a090-2869b1547057', 'en', 'to come back to', 'вернуться в', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e498457-4fc2-515d-abe0-b2cd9cdebf1c', 'en', 'more impressive', 'впечатляющий (более)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('525ba250-964b-57fb-8c44-b7afbb53b30a', 'en', 'crowded', 'многолюдный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5545cdce-eef8-5113-aa36-399dec649fb4', 'en', 'authentic', 'аутентичный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aaf672a9-9fd3-5888-92f1-c98bf713ecbb', 'en', 'next time', 'в следующий раз', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e08b76d-6855-5356-88e1-4c000101924e', 'en', 'to explore', 'исследовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76166e2-f304-55fd-bc9f-98a3d35e1c43', 'en', 'off the beaten path', 'вдали от туристических троп', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('782ece6c-01d6-5f48-9142-360a91cab81b', 'en', 'detail', 'деталь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04e65ca8-e859-5c07-856d-417059e55ca0', 'en', 'to keep it short', 'говорить кратко', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65ad4639-ed76-5c75-ad11-4a08db7e9ee2', 'en', 'to exaggerate', 'преувеличивать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05cd0620-4a90-5283-abfd-43aef883844b', 'en', 'listener', 'слушатель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39dd1a58-3523-5d97-8895-4c5dc955dcef', 'en', 'to pause', 'сделать паузу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9432c21-0eda-5a57-ba61-f04226b77803', 'en', 'question', 'вопрос', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4173ce80-965e-58c9-a1ec-1213ad9b9a7b', 'en', 'to involve the listener', 'вовлечь слушателя', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'memorable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'for the first time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to try' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'abroad' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'the best ... ever' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'baebb092-3888-547c-8a81-2dbb6b3d64d5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'exciting' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to come back to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more impressive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'crowded' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'authentic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'next time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to explore' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, 'efb6ee17-b5f7-50f4-9095-334c0d19e262', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'off the beaten path' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, '1757b7e2-df25-5c70-b3e7-784aba339558', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'detail' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, '1757b7e2-df25-5c70-b3e7-784aba339558', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep it short' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, '1757b7e2-df25-5c70-b3e7-784aba339558', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to exaggerate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, '1757b7e2-df25-5c70-b3e7-784aba339558', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'listener' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, '1757b7e2-df25-5c70-b3e7-784aba339558', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to pause' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, '1757b7e2-df25-5c70-b3e7-784aba339558', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '61bcf67d-8c0f-5b67-a22f-d8ad187a0ee9', id, '1757b7e2-df25-5c70-b3e7-784aba339558', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to involve the listener' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
