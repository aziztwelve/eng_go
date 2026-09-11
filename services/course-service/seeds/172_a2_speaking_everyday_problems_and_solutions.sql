-- Track: A2_SPEAKING_EVERYDAY_PROBLEMS_AND_SOLUTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('bc35bb9f-eeef-5c00-8e56-26e877b0f853', 'A2_SPEAKING_EVERYDAY_PROBLEMS_AND_SOLUTIONS', 'Повседневные проблемы и решения', 'Развивайте разговорные навыки уровня A2 по теме «Повседневные проблемы и решения».', '{"en":"Everyday Problems and Solutions","ru":"Повседневные проблемы и решения"}'::jsonb, '{"en":"Develop A2 speaking skills for everyday problems and solutions.","ru":"Развивайте разговорные навыки уровня A2 по теме «Повседневные проблемы и решения»."}'::jsonb, 'en', 'A2', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4e9f7128-9bc8-5a46-b803-598b5e581742', NULL, 'Мелкие беды недели', 'Рассказать о бытовых проблемах, используя past simple и present perfect.', '{"en":"This Week''s Small Disasters","ru":"Мелкие беды недели"}'::jsonb, '{"en":"Talk about everyday problems using past simple and present perfect.","ru":"Рассказать о бытовых проблемах, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d894c978-f053-57cd-a880-0b149338bad5', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to leak","right":"протекать"},{"id":"P2","left":"to flood","right":"залить (водой)"},{"id":"P3","left":"to break","right":"сломаться"},{"id":"P4","left":"plumber","right":"сантехник"},{"id":"P5","left":"to solve","right":"решить (проблему)"},{"id":"P6","left":"handyman","right":"мастер на все руки"},{"id":"P7","left":"in the end","right":"в итоге"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('256b3572-fc66-5c03-a0df-ea8192c5cb4b', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The washing machine has broken down again.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The washing machine has broken down again."},{"id":"Q_B","is_correct":false,"text":"The washing machine has broke yesterday."},{"id":"Q_C","is_correct":false,"text":"The machine break down already again."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89cc3532-bd02-52e9-ac49-ada9c9efc19f', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The tap leaked all night, and by morning we had called a plumber.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Кран протекал всю ночь, и к утру мы вызвали сантехника.","target_language":"en","word_bank":["The","we","a","by","plumber.","all","called","did","morning","night,","and","tap","leaked","leaks","had","tomorrow"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6af64c73-a920-5599-9ca0-da0bfb903b73', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"froze","instruction":"Выберите подходящее слово.","options":["froze","has frozen","freezing"],"sentence_template":"Last winter the pipes ___ and the kitchen floor was wet.","translation_hint":"Прошлой зимой трубы замёрзли, и пол на кухне был мокрым."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68400bdc-339e-5965-bba8-27826025e2ad', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","just","fixed","the","lamp","myself."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","lamp","the","was","myself.","just","fixed","I","have"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('373533ed-c1bc-50ad-9f4c-5bb2288cbe36', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The neighbour''s washing machine has flooded our bathroom, and the handyman has already come twice.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb19a527-ce78-51f4-821f-f1a87322f819', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The neighbour''s washing machine has flooded our bathroom, and the handyman has already come twice.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Стиральная машина соседей затопила нашу ванную, и мастер уже приходил дважды."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0e59507-813c-5cdc-9da1-6bcb2dad5e43', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"There is water under the fridge again.","translation":"Под холодильником снова вода.","type":"dialogue"},{"character":"Tom","text":"The technician came on Monday, didn''t he?","translation":"Техник же приходил в понедельник?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, but the problem has not gone away — we should call the shop."},{"is_correct":false,"text":"Yes, but it will gone away tomorrow yesterday."},{"is_correct":false,"text":"The fridge is calling the technician itself."}],"text":"What does Anna say?","type":"choice"}],"title":"The Leaking Fridge"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('561c8b47-27be-5dea-8af4-a21f45506ea2', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“plumber” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A person whose job is fixing water pipes"},{"id":"D_B","is_correct":false,"text":"A person who repairs cars in a garage"},{"id":"D_C","is_correct":false,"text":"A person who paints house walls"}],"word":"plumber"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('143e94df-f771-52bf-b6fc-1d82d6c81627', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The pipe has leaked again.","explanation":"The missing word is “leaked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"leaked","id":"LW_A","is_correct":true},{"audio_text":"leak","id":"LW_B","is_correct":false},{"audio_text":"leaking","id":"LW_C","is_correct":false}],"sentence_template":"The pipe has ___ again."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7bb4759-dfc9-5d4f-a89e-a30fb6b78d50', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"handyman","explanation":"The complete sentence is “We have called a handyman twice this month.”.","hint_prefix":"ha","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We have called a ___ twice this month."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee929eef-8011-5e81-96e5-22efdb9be969', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to leak","id":"V1","text":"to leak"},{"audio_text":"to flood","id":"V2","text":"to flood"},{"audio_text":"to break","id":"V3","text":"to break"},{"audio_text":"plumber","id":"V4","text":"plumber"},{"audio_text":"to solve","id":"V5","text":"to solve"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9057f27-77e2-504b-b29b-5d7ca0f195e5', '4e9f7128-9bc8-5a46-b803-598b5e581742', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"My laptop screen went black yesterday."}],"explanation":"“That happened to me too — I have found a cheap repair shop near the station.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That happened to me too — I have found a cheap repair shop near the station."},{"id":"C_B","is_correct":false,"text":"It happens me tomorrow yesterday."},{"id":"C_C","is_correct":false,"text":"The screen is calling the shop."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc35bb9f-eeef-5c00-8e56-26e877b0f853', '4e9f7128-9bc8-5a46-b803-598b5e581742', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('38fc7a6c-6a72-5983-8110-519ec6d371f7', NULL, 'Куда обратиться', 'Сравнить способы решения бытовых проблем и спланировать действия.', '{"en":"Where to Turn","ru":"Куда обратиться"}'::jsonb, '{"en":"Compare ways of solving household problems and plan actions.","ru":"Сравнить способы решения бытовых проблем и спланировать действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9d6cb2c-3a94-5a82-9e01-647c50c6abfa', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"cheaper","right":"дешевле"},{"id":"P2","left":"to repair yourself","right":"починить самому"},{"id":"P3","left":"to call a professional","right":"вызвать специалиста"},{"id":"P4","left":"to watch a tutorial","right":"посмотреть обучающее видео"},{"id":"P5","left":"more dangerous","right":"опаснее"},{"id":"P6","left":"instruction manual","right":"инструкция"},{"id":"P7","left":"to save money","right":"сэкономить деньги"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5564f4e-1060-5f9f-a84d-f27c898e30e2', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Fixing it yourself is cheaper than calling a professional.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Fixing it yourself is cheaper than calling a professional."},{"id":"Q_B","is_correct":false,"text":"Fixing yourself is more cheap than a professional."},{"id":"Q_C","is_correct":false,"text":"Fixing yourself is cheapest than calling."}],"question":"Which sentence compares two ways correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('702c6c0d-3b19-52c9-a705-a5aa6f63f9ac', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am going to watch a tutorial and try to fix it myself.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я собираюсь посмотреть видео-инструкцию и попробовать починить сам.","target_language":"en","word_bank":["going","I","fix","myself.","watched","to","and","yesterday","try","it","did","tutorial","a","to","watch","am"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('db4bd382-b1a5-5572-9067-909643da8774', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more dangerous","instruction":"Выберите подходящее слово.","options":["more dangerous","dangerousest","much"],"sentence_template":"Repairing electricity yourself is ___ than calling an electrician.","translation_hint":"Чинить электричество самому опаснее, чем вызывать электрика."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93d1b093-ebb2-59b2-b897-6e1a0fcd4c71', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","read","the","instruction","manual","first."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["are","the","manual","first.","going","read","was","to","did","instruction","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bdb990f8-d4f6-5abe-8e19-d88a46e32488', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you watch a good tutorial first, you will save fifty euros on a simple repair.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e9c86ff-288e-5989-a9a1-d70c16fa8d30', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you watch a good tutorial first, you will save fifty euros on a simple repair.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сначала посмотреть хорошее обучающее видео, сэкономишь пятьдесят евро на простом ремонте."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0d81573-bb04-5c97-bdf9-3149d366f333', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"The door handle is broken. Should we call someone?","translation":"Ручка двери сломана. Вызвать кого-то?","type":"dialogue"},{"character":"Tom","text":"A professional is expensive, and the handle is a simple part.","translation":"Специалист дорогой, а ручка — простая деталь.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we are going to watch a tutorial and try it ourselves."},{"is_correct":false,"text":"Then we watched a tutorial yesterday tomorrow."},{"is_correct":false,"text":"The handle is repairing the door."}],"text":"What does Anna decide?","type":"choice"}],"title":"DIY or Not?"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ada55ec-f554-5ac3-99e2-bfd89c8c4f0c', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“tutorial” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A video that shows you how to do something"},{"id":"D_B","is_correct":false,"text":"A film about old houses"},{"id":"D_C","is_correct":false,"text":"An advertisement for repair services"}],"word":"tutorial"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('737ec3a1-8838-5295-a89d-477c3177fc76', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to repair it myself.","explanation":"The missing word is “repair”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"repair","id":"LW_A","is_correct":true},{"audio_text":"repaired","id":"LW_B","is_correct":false},{"audio_text":"repairing","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ it myself."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('927a479f-4e3a-56ef-aa88-839c83ab3258', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"safer","explanation":"The complete sentence is “Calling a professional is safer for gas problems.”.","hint_prefix":"sa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Calling a professional is ___ for gas problems."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3567ad78-6099-5746-9c2e-be481d292077', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"cheaper","id":"V1","text":"cheaper"},{"audio_text":"to repair yourself","id":"V2","text":"to repair yourself"},{"audio_text":"to call a professional","id":"V3","text":"to call a professional"},{"audio_text":"to watch a tutorial","id":"V4","text":"to watch a tutorial"},{"audio_text":"more dangerous","id":"V5","text":"more dangerous"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2012c32-80d6-5c24-9632-27598385fda5', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The tap is dripping — is it hard to fix?"}],"explanation":"“Usually no — if you watch a five-minute tutorial, you will manage it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Usually no — if you watch a five-minute tutorial, you will manage it."},{"id":"C_B","is_correct":false,"text":"I fixed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The tap is dripping me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc35bb9f-eeef-5c00-8e56-26e877b0f853', '38fc7a6c-6a72-5983-8110-519ec6d371f7', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', NULL, 'Если проблема не решается', 'Обсудить затяжные проблемы, используя should и первое условное.', '{"en":"If the Problem Will Not Go Away","ru":"Если проблема не решается"}'::jsonb, '{"en":"Discuss stubborn problems using should and the first conditional.","ru":"Обсудить затяжные проблемы, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d43fc5e8-d8a8-59f2-94cf-cc2e5fdeba12', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to give up","right":"сдаваться"},{"id":"P2","left":"to ask for help","right":"попросить помощи"},{"id":"P3","left":"neighbour","right":"сосед"},{"id":"P4","left":"to make worse","right":"усугубить"},{"id":"P5","left":"patient","right":"терпеливый"},{"id":"P6","left":"temporary solution","right":"временное решение"},{"id":"P7","left":"properly","right":"как следует"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41f1cde1-89c5-5e3e-aff1-c468e05a5250', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should ask for help before the problem gets worse.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should ask for help before the problem gets worse."},{"id":"Q_B","is_correct":false,"text":"You should to ask yesterday before."},{"id":"Q_C","is_correct":false,"text":"You must asking help last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd3a51e2-5f5e-51f9-9a34-e904f45002f3', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If we just tape the pipe, the problem will come back in a week.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если мы просто заклеим трубу изолентой, проблема вернётся через неделю.","target_language":"en","word_bank":["the","did","we","a","back","pipe,","in","will","come","yesterday","the","If","week.","tape","problem","just","taped"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ee02b43-528f-5a4c-92b2-96c4c142e367', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ignore","instruction":"Выберите подходящее слово.","options":["ignore","will ignore","ignored"],"sentence_template":"If you ___ the machine now, the repair will cost more later.","translation_hint":"Если игнорировать поломку сейчас, ремонт позже обойдётся дороже."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ee8a09f-b450-5347-94f1-4bf4926d4cad', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","fix","the","cause,","not","the","symptom."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["not","went","the","cause,","You","symptom.","the","fix","mustn''t","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9aa4c204-a622-5b9b-ac3d-eb6111f8e738', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the temporary solution has not worked for a month, you should call a professional properly.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f5cf0b4-8fc0-5bbb-a6bc-ad32c59be312', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the temporary solution has not worked for a month, you should call a professional properly.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если временное решение не сработало за месяц, стоит как следует вызвать специалиста."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67dc7cec-8ab4-53ba-9fd7-1dadb2f82bb7', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"This is the third time the lock has stuck this month.","translation":"Это третий раз за месяц, когда замок заедает.","type":"dialogue"},{"character":"Tom","text":"The oil is only a temporary solution.","translation":"Масло — лишь временное решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should change the lock completely before winter."},{"is_correct":false,"text":"We must changed it yesterday already."},{"is_correct":false,"text":"The lock is oiling itself monthly."}],"text":"What should they do?","type":"choice"}],"title":"The Third Visit"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea41d36c-dcc1-51af-9a29-4f230708e7a2', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“temporary” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Lasting only for a short time"},{"id":"D_B","is_correct":false,"text":"Working well for many years"},{"id":"D_C","is_correct":false,"text":"Bought with a lifetime guarantee"}],"word":"temporary"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04739ac9-94d6-5c2e-aef1-6f3335d2ef30', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the noise continues, we will talk to the neighbours.","explanation":"The missing word is “continues”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"continues","id":"LW_A","is_correct":true},{"audio_text":"will continue","id":"LW_B","is_correct":false},{"audio_text":"continued","id":"LW_C","is_correct":false}],"sentence_template":"If the noise ___ , we will talk to the neighbours."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2811bca9-6dfc-52a5-b712-c157b5daf3f9', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"neighbour","explanation":"The complete sentence is “You should ask your neighbour for help.”.","hint_prefix":"ne","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should ask your ___ for help."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a91d97c-d746-5aeb-adf2-d21e251527d2', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to give up","id":"V1","text":"to give up"},{"audio_text":"to ask for help","id":"V2","text":"to ask for help"},{"audio_text":"neighbour","id":"V3","text":"neighbour"},{"audio_text":"to make worse","id":"V4","text":"to make worse"},{"audio_text":"patient","id":"V5","text":"patient"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45663ecf-3eaa-5413-8ddb-c111f49b2301', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The radiator is cold again this winter."}],"explanation":"“Bleed it once — if it stays cold after that, we should call the building service.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Bleed it once — if it stays cold after that, we should call the building service."},{"id":"C_B","is_correct":false,"text":"I bled it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The radiator is wintering us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc35bb9f-eeef-5c00-8e56-26e877b0f853', '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('996bf974-bbdc-5064-8a2b-c092cd5ff285', 'en', 'to leak', 'протекать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7d4a3fd1-5edc-52e4-b528-f64ff598a1d3', 'en', 'to flood', 'залить (водой)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6094fca8-c93f-54e0-aa2a-ff1c174dac36', 'en', 'to break', 'сломаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7b35735-ac74-5323-89a9-81499ddd7c21', 'en', 'plumber', 'сантехник', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('807f815e-0f12-53c8-8097-e912ea31f97b', 'en', 'to solve', 'решить (проблему)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7c2b160-62dc-50b3-b54b-96c76aa1adc8', 'en', 'handyman', 'мастер на все руки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cfd21cb8-33ff-5145-8a57-540e4eaad035', 'en', 'in the end', 'в итоге', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78da3fe7-3d59-578d-b0b1-d93d182f0655', 'en', 'cheaper', 'дешевле', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('498a7d05-ee7a-5c4f-acd5-15e33defaceb', 'en', 'to repair yourself', 'починить самому', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('74407e44-a628-5f5e-a156-582f5ab350a6', 'en', 'to call a professional', 'вызвать специалиста', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ff54707-78aa-541c-9db4-e957cfd2018b', 'en', 'to watch a tutorial', 'посмотреть обучающее видео', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9bb3d4d-3af6-571f-a3e3-ea2f6c969abb', 'en', 'more dangerous', 'опаснее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44443b16-d1db-52d1-b6fe-8fa888022048', 'en', 'instruction manual', 'инструкция', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('de6e1362-1c05-5797-b1d1-bb91fbbe949c', 'en', 'to save money', 'сэкономить деньги', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89c7cda6-468f-56ac-a7c3-7417df662dca', 'en', 'to give up', 'сдаваться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5447cbfa-4c92-5a3a-81e9-3b568ca7729f', 'en', 'to ask for help', 'попросить помощи', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b7fcdae-f760-5886-a42c-4b84b019e3f3', 'en', 'neighbour', 'сосед', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4c9baf5-3c53-5e48-9fd4-329bd359634f', 'en', 'to make worse', 'усугубить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5e052ce-ed23-591c-b848-192c95a6f67b', 'en', 'patient', 'терпеливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6af4a2b-f593-5e33-9801-fdd236553690', 'en', 'temporary solution', 'временное решение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a9d8da6-bb0c-5811-b122-3652830b9bda', 'en', 'properly', 'как следует', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '4e9f7128-9bc8-5a46-b803-598b5e581742', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to leak' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '4e9f7128-9bc8-5a46-b803-598b5e581742', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to flood' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '4e9f7128-9bc8-5a46-b803-598b5e581742', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '4e9f7128-9bc8-5a46-b803-598b5e581742', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'plumber' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '4e9f7128-9bc8-5a46-b803-598b5e581742', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to solve' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '4e9f7128-9bc8-5a46-b803-598b5e581742', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'handyman' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '4e9f7128-9bc8-5a46-b803-598b5e581742', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'in the end' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '38fc7a6c-6a72-5983-8110-519ec6d371f7', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cheaper' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '38fc7a6c-6a72-5983-8110-519ec6d371f7', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to repair yourself' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '38fc7a6c-6a72-5983-8110-519ec6d371f7', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to call a professional' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '38fc7a6c-6a72-5983-8110-519ec6d371f7', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to watch a tutorial' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '38fc7a6c-6a72-5983-8110-519ec6d371f7', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'more dangerous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '38fc7a6c-6a72-5983-8110-519ec6d371f7', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'instruction manual' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '38fc7a6c-6a72-5983-8110-519ec6d371f7', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to save money' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to give up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to ask for help' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'neighbour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make worse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'patient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'temporary solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc35bb9f-eeef-5c00-8e56-26e877b0f853', id, '0bd3e0b4-846a-50a2-b0b6-5b00bfa2c7db', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'properly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
