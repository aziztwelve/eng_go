-- Track: A2_SPEAKING_SHOPPING_CONVERSATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ddd6e4dc-4899-539e-9ce3-36e27090a1b0', 'A2_SPEAKING_SHOPPING_CONVERSATIONS', 'Разговоры в магазине', 'Развивайте разговорные навыки уровня A2 по теме «Разговоры в магазине».', '{"en":"Shopping Conversations","ru":"Разговоры в магазине"}'::jsonb, '{"en":"Develop A2 speaking skills for shopping conversations.","ru":"Развивайте разговорные навыки уровня A2 по теме «Разговоры в магазине»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b37c5a26-70b4-5bbb-9950-5ebc64a11227', NULL, 'Удачная покупка', 'Рассказать о покупках, используя past simple и present perfect.', '{"en":"A Successful Purchase","ru":"Удачная покупка"}'::jsonb, '{"en":"Talk about shopping using past simple and present perfect.","ru":"Рассказать о покупках, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ed56d4e-3dac-5c8e-8a2d-c5d8888faa55', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"bargain","right":"выгодная покупка"},{"id":"P2","left":"to try on","right":"примерить"},{"id":"P3","left":"fitting room","right":"примерочная"},{"id":"P4","left":"to fit","right":"подходить по размеру"},{"id":"P5","left":"receipt","right":"чек"},{"id":"P6","left":"to order online","right":"заказать онлайн"},{"id":"P7","left":"in the end","right":"в итоге"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b253be3b-1338-552c-884f-b702b9515694', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have already spent my monthly clothes budget.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have already spent my monthly clothes budget."},{"id":"Q_B","is_correct":false,"text":"I have spent it last month."},{"id":"Q_C","is_correct":false,"text":"I spend the budget already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab4cc6cb-e520-55cb-8bc4-3e938533434c', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I tried on five jackets and in the end bought the cheapest one.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я примерил пять курток и в итоге купил самую дешёвую.","target_language":"en","word_bank":["end","I","did","and","five","bought","try","jackets","cheapest","tried","the","on","the","one.","tomorrow","in"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fdc32fc-fa8f-5b41-90ac-f76aec1e9839', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"fit","instruction":"Выберите подходящее слово.","options":["fit","fits","fitting"],"sentence_template":"The shoes did not ___ , so I took a bigger size.","translation_hint":"Туфли не подошли, и я взял размер побольше."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ef245a5-1092-5a66-9abf-3550224206a7', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","just","ordered","a","new","phone","online."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","a","just","online.","She","has","phone","did","ordered","new"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7e3d525-15e3-5059-ba34-520566b0507a', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I found a real bargain at the market — a wool coat for twenty euros, and it fits perfectly.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a42435d-b440-5540-b6dc-772dda74c2fe', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I found a real bargain at the market — a wool coat for twenty euros, and it fits perfectly.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я нашёл реальную выгоду на рынке — шерстяное пальто за двадцать евро, и оно идеально сидит."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1027900d-a604-54ed-a84e-a15c4f3ec217', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Assistant","text":"How does the dress fit?","translation":"Как сидит платье?","type":"dialogue"},{"character":"Customer","text":"The top is fine, but the skirt is a bit tight.","translation":"Верх в порядке, но юбка немного тесновата.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will bring one size up — the colour has been very popular this week."},{"is_correct":false,"text":"I brought it yesterday tomorrow."},{"is_correct":false,"text":"The dress is fitting one size up."}],"text":"What does the assistant offer?","type":"choice"}],"title":"In the Fitting Room"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3f5f736-e5c5-592b-881e-4b2ffffb09f7', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“bargain” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something bought for a lower price than usual"},{"id":"D_B","is_correct":false,"text":"The most expensive item in the shop"},{"id":"D_C","is_correct":false,"text":"Something you return the next day"}],"word":"bargain"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11d33b11-3c17-5ed9-b287-f7f95a0e03b4', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have lost the receipt, unfortunately.","explanation":"The missing word is “lost”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"lost","id":"LW_A","is_correct":true},{"audio_text":"lose","id":"LW_B","is_correct":false},{"audio_text":"losing","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ the receipt, unfortunately."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3b33b4e-e31c-519f-a2ed-b2228760ba71', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"by","explanation":"The complete sentence is “She has paid by card.”.","hint_prefix":"by","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has paid ___ card."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce147e5c-54b8-5012-a380-ec3b6399b0e2', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"bargain","id":"V1","text":"bargain"},{"audio_text":"to try on","id":"V2","text":"to try on"},{"audio_text":"fitting room","id":"V3","text":"fitting room"},{"audio_text":"to fit","id":"V4","text":"to fit"},{"audio_text":"receipt","id":"V5","text":"receipt"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4af13a9-5e9a-552b-8dc5-3a3f2674635b', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Assistant","text":"Would you like to try it on?"}],"explanation":"“Yes, please — where is the fitting room? I have never shopped here before.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, please — where is the fitting room? I have never shopped here before."},{"id":"C_B","is_correct":false,"text":"I tried it on yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The shop is trying me on."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ddd6e4dc-4899-539e-9ce3-36e27090a1b0', 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('07196a15-06b8-5ad4-b26d-4b243e822f6b', NULL, 'Что купить дальше', 'Спланировать покупку и сравнить варианты.', '{"en":"What to Buy Next","ru":"Что купить дальше"}'::jsonb, '{"en":"Plan a purchase and compare options.","ru":"Спланировать покупку и сравнить варианты."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a95c9d93-b897-5805-a989-393644c30a6c', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to compare prices","right":"сравнить цены"},{"id":"P2","left":"second-hand","right":"вторичка / б/у"},{"id":"P3","left":"brand new","right":"совершенно новый"},{"id":"P4","left":"more durable","right":"прочнее"},{"id":"P5","left":"customer reviews","right":"отзывы покупателей"},{"id":"P6","left":"to wait for a sale","right":"дождаться распродажи"},{"id":"P7","left":"value for money","right":"соответствие цене"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a464327-a2cf-59a2-80ef-82c48ab25a18', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “This rucksack is more durable than the cheaper one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"This rucksack is more durable than the cheaper one."},{"id":"Q_B","is_correct":false,"text":"This rucksack is durabler than that one."},{"id":"Q_C","is_correct":false,"text":"This rucksack is most durable than that."}],"question":"Which sentence compares two products correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18583da6-86ff-5891-ad5e-292d3cebc896', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to wait for a sale and buy the jacket at a discount.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь дождаться распродажи и купить куртку со скидкой.","target_language":"en","word_bank":["a","to","going","wait","I","a","and","the","discount.","jacket","am","did","at","sale","yesterday","waited","for","buy"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccaf5d45-858b-5681-8f49-de5bbdd6446f', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"better","instruction":"Выберите подходящее слово.","options":["better","best","more good"],"sentence_template":"A second-hand bike is often ___ value for money than a new one.","translation_hint":"Б/у велосипед часто выгоднее нового."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f99f5d29-d9bf-52db-bd32-6839d87d842f', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","compare","prices","in","three","shops."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["are","We","was","three","to","compare","going","did","prices","shops.","in"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24652445-f33b-55f0-b736-ec00c1e10c38', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you read the customer reviews first, you will avoid the models that break quickly.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d423bc01-f4fa-5e31-93e3-d56b8e93b345', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you read the customer reviews first, you will avoid the models that break quickly.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сначала почитать отзывы, вы избежите моделей, которые быстро ломаются."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c8b5ae0-677e-53c9-984b-c64e35fc7ae6', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I need a new bike. Should I buy second-hand?","translation":"Мне нужен велосипед. Взять б/у?","type":"dialogue"},{"character":"Tom","text":"A second-hand one is cheaper, but this brand is more durable new.","translation":"Б/у дешевле, но эта марка прочнее новой.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am going to look at both and compare the prices."},{"is_correct":false,"text":"I looked at them yesterday tomorrow."},{"is_correct":false,"text":"The bike is buying me second-hand."}],"text":"What does Anna decide?","type":"choice"}],"title":"New or Second-hand?"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eeee8eec-0c13-51d5-b147-e8c6e4cf561b', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“second-hand” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Not new; owned by someone before"},{"id":"D_B","is_correct":false,"text":"Fresh from the factory this month"},{"id":"D_C","is_correct":false,"text":"Reserved in the shop yesterday"}],"word":"second-hand"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b32d30f-6f72-52cb-b54d-f54d201c1eb1', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to compare prices online.","explanation":"The missing word is “compare”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"compare","id":"LW_A","is_correct":true},{"audio_text":"compared","id":"LW_B","is_correct":false},{"audio_text":"comparing","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ prices online."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16c404e9-7690-5160-9f2a-a9a6fdeaeaa6', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “The reviews are more helpful than the ads.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The reviews are ___ helpful than the ads."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff1ba457-77df-5537-8a2f-edd60beaa29c', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to compare prices","id":"V1","text":"to compare prices"},{"audio_text":"second-hand","id":"V2","text":"second-hand"},{"audio_text":"brand new","id":"V3","text":"brand new"},{"audio_text":"more durable","id":"V4","text":"more durable"},{"audio_text":"customer reviews","id":"V5","text":"customer reviews"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('148f1ee4-d7de-5120-b400-f5a38bf820ab', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Is this brand worth the money?"}],"explanation":"“Check the reviews — if it lasts five years, it will be good value for money.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Check the reviews — if it lasts five years, it will be good value for money."},{"id":"C_B","is_correct":false,"text":"It was worth it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The brand is moneying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ddd6e4dc-4899-539e-9ce3-36e27090a1b0', '07196a15-06b8-5ad4-b26d-4b243e822f6b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0e9749b7-d42c-5db3-a9d8-9d84943afff2', NULL, 'Если покупка не подошла', 'Объяснить возврат и обмен, используя should и первое условное.', '{"en":"If the Purchase Does Not Fit","ru":"Если покупка не подошла"}'::jsonb, '{"en":"Explain returns and exchanges using should and the first conditional.","ru":"Объяснить возврат и обмен, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a35c3f4-ace7-5e33-9d3e-8994ebf7d6ac', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to return","right":"вернуть (товар)"},{"id":"P2","left":"exchange","right":"обмен"},{"id":"P3","left":"warranty","right":"гарантия"},{"id":"P4","left":"to keep the receipt","right":"хранить чек"},{"id":"P5","left":"to complain politely","right":"вежливо пожаловаться"},{"id":"P6","left":"faulty","right":"бракованный"},{"id":"P7","left":"within the period","right":"в течение срока"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ca9a713-8e19-5023-9a8d-d2ccdf7e411c', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should keep the receipt until you are sure the item works.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should keep the receipt until you are sure the item works."},{"id":"Q_B","is_correct":false,"text":"You should to keep it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must keeping it last purchase."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7b78740-e9c0-5f8d-8933-74992ce87237', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the item is faulty, the shop must refund you or exchange it.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если товар бракованный, магазин обязан вернуть деньги или обменять его.","target_language":"en","word_bank":["If","the","is","you","must","it.","faulty,","the","item","yesterday","did","exchange","was","or","refund","shop"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bef945c4-2d59-583d-b519-5d43a8fd5d29', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"show","instruction":"Выберите подходящее слово.","options":["show","will show","showed"],"sentence_template":"If you ___ the receipt, the exchange will take two minutes.","translation_hint":"Если показать чек, обмен займёт две минуты."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93084fa8-bee4-5eec-a312-8bf817e3285c', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","the","warranty","period."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","check","should","period.","You","warranty","went","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a433cc4d-a074-59f5-a742-831112bbb63a', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you complain politely but firmly, most shops will solve the problem quickly.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c65f2859-de98-59c2-a9b8-4cef22df5396', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you complain politely but firmly, most shops will solve the problem quickly.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если жаловаться вежливо, но твёрдо, большинство магазинов быстро решит проблему."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d87e5941-efd9-5452-8edf-684a32393691', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Customer","text":"This kettle has stopped working after two weeks.","translation":"Этот чайник перестал работать через две недели.","type":"dialogue"},{"character":"Shop assistant","text":"Do you have the receipt and the box?","translation":"У вас есть чек и коробка?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, both — I would like an exchange rather than a refund."},{"is_correct":false,"text":"Yes, I have them tomorrow yesterday."},{"is_correct":false,"text":"The kettle is refunding the receipt."}],"text":"What does the customer say?","type":"choice"}],"title":"The Faulty Kettle"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf26965e-1e34-5003-b62a-516573f252a9', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“warranty” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A promise to repair or replace something that breaks"},{"id":"D_B","is_correct":false,"text":"A discount for the next purchase"},{"id":"D_C","is_correct":false,"text":"A free delivery to your home"}],"word":"warranty"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01672cb0-b67e-58b8-9db3-ca4a7327a181', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the item is faulty, bring it back.","explanation":"The missing word is “faulty”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"faulty","id":"LW_A","is_correct":true},{"audio_text":"fault","id":"LW_B","is_correct":false},{"audio_text":"falsely","id":"LW_C","is_correct":false}],"sentence_template":"If the item is ___ , bring it back."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72eb1a94-2b6f-5f31-949b-33265e086194', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"within","explanation":"The complete sentence is “You should return it within thirty days.”.","hint_prefix":"wi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should return it ___ thirty days."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b389be0-5fc1-51d4-bec0-607e4086595d', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to return","id":"V1","text":"to return"},{"audio_text":"exchange","id":"V2","text":"exchange"},{"audio_text":"warranty","id":"V3","text":"warranty"},{"audio_text":"to keep the receipt","id":"V4","text":"to keep the receipt"},{"audio_text":"to complain politely","id":"V5","text":"to complain politely"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a489c7a-1cd7-5f42-9a18-4d17227fc785', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The online order arrived damaged."}],"explanation":"“Take photos — if you show them the damage, they will send a replacement for free.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Take photos — if you show them the damage, they will send a replacement for free."},{"id":"C_B","is_correct":false,"text":"I photographed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The order is damaging me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ddd6e4dc-4899-539e-9ce3-36e27090a1b0', '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e915c4c9-32ee-5758-90ce-b1fe96d34490', 'en', 'bargain', 'выгодная покупка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7f6975d-f318-50e3-8154-e73fc21e858b', 'en', 'to try on', 'примерить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffc2a4dc-474b-5b6a-867b-8eca1b1b6679', 'en', 'fitting room', 'примерочная', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09b85cef-867f-5bc9-9572-640bb98d39a0', 'en', 'to fit', 'подходить по размеру', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('94b16fa6-127a-52f9-9146-d573ccded2c9', 'en', 'to order online', 'заказать онлайн', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfd21cb8-33ff-5145-8a57-540e4eaad035', 'en', 'in the end', 'в итоге', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f43991e-9e4f-5e49-9126-208ea191356a', 'en', 'to compare prices', 'сравнить цены', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3063ec55-6f63-5108-a217-89edc5edf5ea', 'en', 'second-hand', 'вторичка / б/у', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1676bc96-6944-5fb6-a1fa-f642f57006f8', 'en', 'brand new', 'совершенно новый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e18ee0e2-1b7f-57b1-acf0-26ca9f693cfb', 'en', 'more durable', 'прочнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('81ecab88-f55e-5156-98df-905ab8ed7fab', 'en', 'customer reviews', 'отзывы покупателей', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fa0bf3d-e3c9-5113-9bd8-ec5745dd2478', 'en', 'to wait for a sale', 'дождаться распродажи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a3618635-9292-5084-b30c-1fb1394df7c4', 'en', 'value for money', 'соответствие цене', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1ae74e46-09fb-5609-9b10-131fca73e44f', 'en', 'to return', 'вернуть (товар)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1d37f8-e3e0-54f9-b81d-9effb30531a1', 'en', 'exchange', 'обмен', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58940b75-c50a-5169-a314-de44fce66924', 'en', 'warranty', 'гарантия', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0c94b53-6b0d-5c0e-b600-17a57a2d955a', 'en', 'to keep the receipt', 'хранить чек', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('783aeba9-db15-58d9-ac72-9a49221bf324', 'en', 'to complain politely', 'вежливо пожаловаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07d1c350-d989-58a2-88e2-0b39b2760547', 'en', 'faulty', 'бракованный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2f609689-3dad-52ca-bc1a-d9659140a57f', 'en', 'within the period', 'в течение срока', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'bargain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to try on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'fitting room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to order online' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, 'b37c5a26-70b4-5bbb-9950-5ebc64a11227', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'in the end' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '07196a15-06b8-5ad4-b26d-4b243e822f6b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to compare prices' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '07196a15-06b8-5ad4-b26d-4b243e822f6b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'second-hand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '07196a15-06b8-5ad4-b26d-4b243e822f6b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'brand new' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '07196a15-06b8-5ad4-b26d-4b243e822f6b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'more durable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '07196a15-06b8-5ad4-b26d-4b243e822f6b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer reviews' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '07196a15-06b8-5ad4-b26d-4b243e822f6b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to wait for a sale' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '07196a15-06b8-5ad4-b26d-4b243e822f6b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'value for money' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to return' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'warranty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep the receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to complain politely' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'faulty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ddd6e4dc-4899-539e-9ce3-36e27090a1b0', id, '0e9749b7-d42c-5db3-a9d8-9d84943afff2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'within the period' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
