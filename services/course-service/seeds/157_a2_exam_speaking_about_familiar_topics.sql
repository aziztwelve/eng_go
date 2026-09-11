-- Track: A2_EXAM_SPEAKING_ABOUT_FAMILIAR_TOPICS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a5ba98c3-a3a2-555d-b42e-56366f929a05', 'A2_EXAM_SPEAKING_ABOUT_FAMILIAR_TOPICS', 'Устная речь на знакомые темы', 'Развивайте экзаменационные навыки уровня A2 по теме «Устная речь на знакомые темы».', '{"en":"Speaking About Familiar Topics","ru":"Устная речь на знакомые темы"}'::jsonb, '{"en":"Develop A2 exam skills for speaking about familiar topics.","ru":"Развивайте экзаменационные навыки уровня A2 по теме «Устная речь на знакомые темы»."}'::jsonb, 'en', 'A2', '', ARRAY['exam']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8341381f-e3ff-50c8-a7ad-05fc3358363d', NULL, 'Рассказываю о себе', 'Готовить монолог о себе, используя past simple и present perfect.', '{"en":"Talking About Myself","ru":"Рассказываю о себе"}'::jsonb, '{"en":"Prepare a monologue about yourself using past simple and present perfect.","ru":"Готовить монолог о себе, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf031fb6-92ca-56ec-8756-6ceae0cdf0d5', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to introduce oneself","right":"представиться"},{"id":"P2","left":"hometown","right":"родной город"},{"id":"P3","left":"to major in","right":"учиться по специальности"},{"id":"P4","left":"leisure","right":"досуг"},{"id":"P5","left":"for ... years","right":"в течение ... лет"},{"id":"P6","left":"to give reasons","right":"привести причины"},{"id":"P7","left":"fluently","right":"бегло"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0010dcbf-1bb8-5ddc-b06d-f066b8ae1692', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have studied English for six years.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have studied English for six years."},{"id":"Q_B","is_correct":false,"text":"I have studied English six years ago."},{"id":"Q_C","is_correct":false,"text":"I study English for six years already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d7a510c-6ee4-5839-affb-f02d6de04652', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I have done photography for five years and have already won two contests.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я занимаюсь фотографией пять лет и уже выиграл два конкурса.","target_language":"en","word_bank":["and","five","tomorrow","already","photography","do","for","done","I","have","years","did","two","have","won","contests."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06c636f0-8159-5621-9dbb-e7bc0b82a49b', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"started","instruction":"Выберите подходящее слово.","options":["started","has start","starting"],"sentence_template":"Two years ago I ___ my studies and moved to the capital.","translation_hint":"Два года назад я начал учёбу и переехал в столицу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ded06795-7b5c-524c-910d-1e86e712cbdf', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","spoken","about","her","hometown","twice","already."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","She","hometown","twice","did","her","was","spoken","about","already."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35dfc513-4a88-56ff-b9ae-59bf4d36f0b0', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I grew up in a small town, I have lived in the capital for three years, and I am going to become a designer.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dfa6bca-31c1-5735-b73f-9409098131f2', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I grew up in a small town, I have lived in the capital for three years, and I am going to become a designer.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я вырос в маленьком городе, три года живу в столице и собираюсь стать дизайнером."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36b0bf47-39d9-55c5-8a53-371a802a9a17', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Examiner","text":"Tell me about your hobbies and how long you have done them.","translation":"Расскажите о хобби и как долго вы ими занимаетесь.","type":"dialogue"},{"character":"Candidate","text":"I started climbing at university and have done it for four years now.","translation":"Я начал скалолазание в университете и занимаюсь им уже четыре года.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Why do you enjoy it so much?"},{"is_correct":false,"text":"Why did you enjoying it tomorrow?"},{"is_correct":false,"text":"Is the climbing speaking about you?"}],"text":"What does the examiner ask next?","type":"choice"}],"title":"The Speaking Card"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da36584f-6ad4-5979-a70c-3dbfd93fc41d', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to major in” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To study a main subject at university"},{"id":"D_B","is_correct":false,"text":"To work in several jobs at once"},{"id":"D_C","is_correct":false,"text":"To teach younger students"}],"word":"to major in"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a6aa1db-e73e-5b11-ae09-878e5b08c61e', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have learned English since childhood.","explanation":"The missing word is “learned”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"learned","id":"LW_A","is_correct":true},{"audio_text":"learn","id":"LW_B","is_correct":false},{"audio_text":"learning","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ English since childhood."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9567aafc-f311-52d5-9f82-773c34ac3c95', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"for","explanation":"The complete sentence is “I have lived here for five years.”.","hint_prefix":"fo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have lived here ___ five years."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5409bb56-1dee-5c97-9160-5e6d7861a83e', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to introduce oneself","id":"V1","text":"to introduce oneself"},{"audio_text":"hometown","id":"V2","text":"hometown"},{"audio_text":"to major in","id":"V3","text":"to major in"},{"audio_text":"leisure","id":"V4","text":"leisure"},{"audio_text":"for ... years","id":"V5","text":"for ... years"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3a70c75-64e7-5bdd-b0e7-da0b753c55c1', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Examiner","text":"Where are you from?"}],"explanation":"“A small town in the south — I moved to the city for university and have stayed since.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"A small town in the south — I moved to the city for university and have stayed since."},{"id":"C_B","is_correct":false,"text":"I am from it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The town is being me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a5ba98c3-a3a2-555d-b42e-56366f929a05', '8341381f-e3ff-50c8-a7ad-05fc3358363d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9beb5ecd-ecb5-5719-91c7-653191a408b4', NULL, 'Вопросы и ответы по темам', 'Отвечать на вопросы по знакомым темам, сравнивая варианты ответов.', '{"en":"Topic Questions and Answers","ru":"Вопросы и ответы по темам"}'::jsonb, '{"en":"Answer familiar-topic questions, comparing answer options.","ru":"Отвечать на вопросы по знакомым темам, сравнивая варианты ответов."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f23fb303-fe04-5e55-970b-6af03bb416e9', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to give an example","right":"привести пример"},{"id":"P2","left":"longer answer","right":"более развёрнутый ответ"},{"id":"P3","left":"reason + example","right":"причина + пример"},{"id":"P4","left":"to stick to the point","right":"не отходить от темы"},{"id":"P5","left":"more confident","right":"увереннее"},{"id":"P6","left":"to hesitate","right":"запинаться"},{"id":"P7","left":"linking phrases","right":"связующие фразы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9602bf5-dec5-54f0-b76d-ef95119af496', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Yes, I do — because it helps me relax. For example, I walk every evening.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Yes, I do — because it helps me relax. For example, I walk every evening."},{"id":"Q_B","is_correct":false,"text":"Yes."},{"id":"Q_C","is_correct":false,"text":"Yes, I do walk, yes, walking, yes."}],"question":"Which answer is better in a speaking exam?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a408f081-9a15-58af-b807-1edc968d4192', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to give longer answers: reason plus example.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь давать развёрнутые ответы: причина плюс пример.","target_language":"en","word_bank":["answers:","gave","example.","am","did","plus","longer","yesterday","to","reason","going","give","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76b1cc6b-831a-5ba2-a536-d357616cad75', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"weaker","instruction":"Выберите подходящее слово.","options":["weaker","weakest","more weak"],"sentence_template":"A short ''yes'' sounds ___ than a developed answer.","translation_hint":"Короткое «да» звучит слабее развёрнутого ответа."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68df16e6-9119-5172-ad63-81a385e9e83c', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Linking","phrases","make","the","speech","smoother."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["smoother.","make","Linking","phrases","the","did","speech","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18c73d58-587a-5e41-8a0b-71cc2423a6c4', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you add a reason and one example to every answer, your minute of speaking will feel too short.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cca7e0c-8183-52db-8ead-52cae4812e4f', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you add a reason and one example to every answer, your minute of speaking will feel too short.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если добавлять причину и один пример к каждому ответу, минуты речи покажется слишком мало."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7a64293-8274-5815-bcf4-0907964e1fff', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Examiner","text":"Do you like cooking?","translation":"Вы любите готовить?","type":"dialogue"},{"character":"Candidate","text":"Yes... a little.","translation":"Да... немного.","type":"dialogue"},{"options":[{"is_correct":true,"text":"A reason and an example — ''because it relaxes me; last weekend I made borscht''."},{"is_correct":false,"text":"Only ''yes'' repeated more confidently."},{"is_correct":false,"text":"A question back to the examiner about cooking."}],"text":"What should the candidate add?","type":"choice"}],"title":"The One-Word Answer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7889158-0e43-55fc-afa8-e1feab7ed6d8', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to hesitate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To pause often because you are not sure"},{"id":"D_B","is_correct":false,"text":"To speak without any stops"},{"id":"D_C","is_correct":false,"text":"To answer before the question ends"}],"word":"to hesitate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e7dcaf8-fb01-5359-b8e0-fad7210c5f62', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to add an example to each answer.","explanation":"The missing word is “add”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"add","id":"LW_A","is_correct":true},{"audio_text":"added","id":"LW_B","is_correct":false},{"audio_text":"adding","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ an example to each answer."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a320616-67a3-5e7a-8a42-b744e896913d', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"longer","explanation":"The complete sentence is “Reason plus example makes answers longer .”.","hint_prefix":"lo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Reason plus example makes answers ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('248f7033-5034-53fa-9983-03a7bc97ab2f', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to give an example","id":"V1","text":"to give an example"},{"audio_text":"longer answer","id":"V2","text":"longer answer"},{"audio_text":"reason + example","id":"V3","text":"reason + example"},{"audio_text":"to stick to the point","id":"V4","text":"to stick to the point"},{"audio_text":"more confident","id":"V5","text":"more confident"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edcff903-fc08-5406-9c7e-6985ede7f44e', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I run out of things to say quickly."}],"explanation":"“Use reason-plus-example — if you build answers this way, forty seconds will fill themselves.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Use reason-plus-example — if you build answers this way, forty seconds will fill themselves."},{"id":"C_B","is_correct":false,"text":"I used it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The seconds are running out of me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a5ba98c3-a3a2-555d-b42e-56366f929a05', '9beb5ecd-ecb5-5719-91c7-653191a408b4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('dee03d4c-eba7-5d07-bf4d-97176f55b5a6', NULL, 'Если забыл слово', 'Справляться с паузами, используя should и первое условное.', '{"en":"If You Forget a Word","ru":"Если забыл слово"}'::jsonb, '{"en":"Handle pauses using should and the first conditional.","ru":"Справляться с паузами, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edf672e7-c15c-50a6-9b48-2e2415857806', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to paraphrase around","right":"объяснить по-другому"},{"id":"P2","left":"to describe the function","right":"описать функцию"},{"id":"P3","left":"filler phrase","right":"фраза-заполнитель"},{"id":"P4","left":"silence","right":"молчание"},{"id":"P5","left":"to keep talking","right":"продолжать говорить"},{"id":"P6","left":"calm","right":"спокойный"},{"id":"P7","left":"to come back to mind","right":"вспомниться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f990b24e-ec45-5aff-b5d0-2aa8a6588ef0', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should paraphrase the word instead of going silent.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should paraphrase the word instead of going silent."},{"id":"Q_B","is_correct":false,"text":"You should to paraphrase it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must paraphrasing words last exam."}],"question":"Which sentence gives correct speaking advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31431298-a42f-5d0c-93e5-e5cdb6ae696a', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you go silent, it is worse than an imperfect answer.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если замолчишь, это хуже, чем неидеальный ответ.","target_language":"en","word_bank":["silent,","answer.","went","did","is","go","it","worse","yesterday","imperfect","than","an","If","you"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4628f7b-b828-5253-af24-e67e35ece640', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"describe","instruction":"Выберите подходящее слово.","options":["describe","will describe","described"],"sentence_template":"If a word does not come, ___ its function: ''a thing for opening bottles''.","translation_hint":"Если слово не приходит, опиши его функцию: «штука для открывания бутылок»."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db7e774b-6fc6-530d-8d0d-a9e0b1ec59f8', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","keep","talking","—","never","stop."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["went","—","talking","keep","You","mustn''t","stop.","never","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('327b02c7-c3f1-5c72-8f07-8040c568c695', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you use fillers like ''well, let me think'', the examiner will hear fluency instead of silence.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('759e42de-396a-5ada-bd10-eb312a7aacfd', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you use fillers like ''well, let me think'', the examiner will hear fluency instead of silence.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если использовать фразы-заполнители вроде ''well, let me think'', экзаменатор услышит беглость вместо молчания."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa77436f-7fe3-5f8f-a413-15221c8307a6', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"I forgot the word ''wallet'' in the practice exam and just stopped.","translation":"Я забыл слово ''wallet'' на тренировочном экзамене и просто замолчал.","type":"dialogue"},{"character":"Voice 2","text":"What did the teacher say to do in such moments?","translation":"Что преподаватель советует в такие моменты?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Describe it — ''the small thing where I keep money and cards''."},{"is_correct":false,"text":"Say the Russian word louder and continue."},{"is_correct":false,"text":"Wait silently until the word returns."}],"text":"What is the technique?","type":"choice"}],"title":"The Missing Word"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8575de28-dbc6-525a-8d46-822c1ab21ac3', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“filler phrase” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A phrase like ''you know'' that fills a pause"},{"id":"D_B","is_correct":false,"text":"A long academic definition"},{"id":"D_C","is_correct":false,"text":"The final sentence of your monologue"}],"word":"filler phrase"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dce33057-8345-56da-8e02-1fd62cc2a76e', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you forget a word, talk around it.","explanation":"The missing word is “talk”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"talk","id":"LW_A","is_correct":true},{"audio_text":"will talk","id":"LW_B","is_correct":false},{"audio_text":"talked","id":"LW_C","is_correct":false}],"sentence_template":"If you forget a word, ___ around it."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69515a38-ac2f-5df0-bb45-46e13dfb2b51', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"talking","explanation":"The complete sentence is “Keep talking , even without the perfect word.”.","hint_prefix":"ta","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Keep ___ , even without the perfect word."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f155b1b3-fc78-51a8-bfe3-71907f9ef63b', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to paraphrase around","id":"V1","text":"to paraphrase around"},{"audio_text":"to describe the function","id":"V2","text":"to describe the function"},{"audio_text":"filler phrase","id":"V3","text":"filler phrase"},{"audio_text":"silence","id":"V4","text":"silence"},{"audio_text":"to keep talking","id":"V5","text":"to keep talking"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7cf6c6c-2b3e-5bb1-81fd-1563ec080283', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I panic when words disappear."}],"explanation":"“Train paraphrasing daily — if it becomes a habit, a lost word will not break your flow.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Train paraphrasing daily — if it becomes a habit, a lost word will not break your flow."},{"id":"C_B","is_correct":false,"text":"I trained it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The words are panicking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a5ba98c3-a3a2-555d-b42e-56366f929a05', 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa80084f-8fb9-5b7b-88c0-88ce2382b3d8', 'en', 'to introduce oneself', 'представиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f68851e6-359c-5eec-8fbe-b4674f4b3a36', 'en', 'hometown', 'родной город', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('757bdc73-d925-58bf-bb84-4aad38e75ae1', 'en', 'to major in', 'учиться по специальности', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21849e63-68e9-5b6b-b916-447dfadc22d6', 'en', 'leisure', 'досуг', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dd4ac6da-f237-58ea-9db1-08c4594bb3e1', 'en', 'for ... years', 'в течение ... лет', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d05e5559-785b-5713-8d27-b583123ed7b0', 'en', 'to give reasons', 'привести причины', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c424681-4f29-5e65-bae5-7238160f914f', 'en', 'fluently', 'бегло', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cb96e19-57da-5841-ba4f-2526aec8ef31', 'en', 'to give an example', 'привести пример', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d03d727-4416-569a-bb61-182e85412da0', 'en', 'longer answer', 'более развёрнутый ответ', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d94789c-89ae-50bb-b41d-ba6bdd8f7833', 'en', 'reason + example', 'причина + пример', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f625f244-8996-5921-93ab-5cca65c7c663', 'en', 'to stick to the point', 'не отходить от темы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f6dd3d6-f207-5639-81c8-3142d505b4bb', 'en', 'more confident', 'увереннее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fdca227-7ef1-52af-bc6f-1e1c20bcf1b3', 'en', 'to hesitate', 'запинаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4c1b65b1-82e8-546a-9911-5932544886f6', 'en', 'linking phrases', 'связующие фразы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2e9d995-a921-5a6d-82a0-e200d6fdbbb6', 'en', 'to paraphrase around', 'объяснить по-другому', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9bde647-47b1-5d04-a311-186c87312ef4', 'en', 'to describe the function', 'описать функцию', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09784b2e-9e14-5b9a-8a41-9771896ce62d', 'en', 'filler phrase', 'фраза-заполнитель', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('43bdaa79-c0ce-5a2e-be9d-cd3da4220130', 'en', 'silence', 'молчание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f95c328a-1243-56bc-8a9e-46f5d7db7347', 'en', 'to keep talking', 'продолжать говорить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7db7b0b8-6d59-556e-a323-a487fd6e5a05', 'en', 'calm', 'спокойный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fad3fcb0-732d-533a-9d53-ae3fd7fa76ae', 'en', 'to come back to mind', 'вспомниться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '8341381f-e3ff-50c8-a7ad-05fc3358363d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to introduce oneself' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '8341381f-e3ff-50c8-a7ad-05fc3358363d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'hometown' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '8341381f-e3ff-50c8-a7ad-05fc3358363d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to major in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '8341381f-e3ff-50c8-a7ad-05fc3358363d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'leisure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '8341381f-e3ff-50c8-a7ad-05fc3358363d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'for ... years' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '8341381f-e3ff-50c8-a7ad-05fc3358363d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give reasons' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '8341381f-e3ff-50c8-a7ad-05fc3358363d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'fluently' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '9beb5ecd-ecb5-5719-91c7-653191a408b4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give an example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '9beb5ecd-ecb5-5719-91c7-653191a408b4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'longer answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '9beb5ecd-ecb5-5719-91c7-653191a408b4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'reason + example' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '9beb5ecd-ecb5-5719-91c7-653191a408b4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to stick to the point' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '9beb5ecd-ecb5-5719-91c7-653191a408b4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'more confident' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '9beb5ecd-ecb5-5719-91c7-653191a408b4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to hesitate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, '9beb5ecd-ecb5-5719-91c7-653191a408b4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'linking phrases' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to paraphrase around' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to describe the function' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'filler phrase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'silence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep talking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'calm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a5ba98c3-a3a2-555d-b42e-56366f929a05', id, 'dee03d4c-eba7-5d07-bf4d-97176f55b5a6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to come back to mind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
