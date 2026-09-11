-- Track: A2_TRAVEL_HOTEL_STAYS_AND_REQUESTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('ebcb7335-1b6e-5141-a2f3-b712dccca11b', 'A2_TRAVEL_HOTEL_STAYS_AND_REQUESTS', 'Проживание в отеле и просьбы', 'Развивайте английский для путешествий уровня A2 по теме «Проживание в отеле и просьбы».', '{"en":"Hotel Stays and Requests","ru":"Проживание в отеле и просьбы"}'::jsonb, '{"en":"Develop A2 travel English for hotel stays and requests.","ru":"Развивайте английский для путешествий уровня A2 по теме «Проживание в отеле и просьбы»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('189d9c93-a9c2-588b-b70c-6f4df407bcc1', NULL, 'Заселение и первые впечатления', 'Рассказать о заселении в отель, используя past simple и present perfect.', '{"en":"Check-in and First Impressions","ru":"Заселение и первые впечатления"}'::jsonb, '{"en":"Talk about hotel check-in using past simple and present perfect.","ru":"Рассказать о заселении в отель, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbc0503f-5db8-5929-b68b-009d1c5666c8', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"reception","right":"стойка приёма"},{"id":"P2","left":"room key","right":"ключ от номера"},{"id":"P3","left":"to book","right":"забронировать"},{"id":"P4","left":"spacious","right":"просторный"},{"id":"P5","left":"view","right":"вид (из окна)"},{"id":"P6","left":"towels","right":"полотенца"},{"id":"P7","left":"since morning","right":"с утра"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('573d9d5b-70aa-5c1f-89fc-dfa91689bdcb', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The room has not been cleaned yet today.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The room has not been cleaned yet today."},{"id":"Q_B","is_correct":false,"text":"The room has not cleaned yesterday."},{"id":"Q_C","is_correct":false,"text":"The room not cleaned already today."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c89bce74-bb52-5c56-b961-4562e2bc5a9e', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I booked the room for a week, but the view turned out to be different from the photos.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я забронировал номер на неделю, но вид из окна оказался не такой, как на фото.","target_language":"en","word_bank":["view","a","from","but","out","photos.","the","room","I","the","did","tomorrow","different","turned","be","week,","book","for","the","to","booked"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d802522-99e7-5d18-9aaa-e9a6c53c14f7', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"checked","instruction":"Выберите подходящее слово.","options":["checked","has check","checking"],"sentence_template":"We ___ in at three o''clock yesterday afternoon.","translation_hint":"Мы заселились вчера в три часа дня."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('260ab8d6-049f-5a6b-9299-86623e40f03d', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","receptionist","has","already","brought","extra","towels."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","The","was","did","extra","brought","towels.","already","receptionist"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2711bf83-bc96-55f0-b5a1-543480e5a9b7', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We have stayed at this hotel twice, and the rooms have always been clean and spacious.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bf7fb19-244e-5634-ab61-3e7d874b9e05', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We have stayed at this hotel twice, and the rooms have always been clean and spacious.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мы дважды останавливались в этом отеле, и номера всегда были чистыми и просторными."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88924c06-10bb-5993-99d8-78a2f3207993', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Guest","text":"Excuse me, I booked a room with a sea view, but my window faces the car park.","translation":"Извините, я бронировал номер с видом на море, а моё окно выходит на парковку.","type":"dialogue"},{"character":"Receptionist","text":"Let me check. You are right — I''m sorry about that.","translation":"Сейчас проверю. Вы правы — извините за это.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We have a sea-view room free from tomorrow morning."},{"is_correct":false,"text":"We has a free room yesterday already."},{"is_correct":false,"text":"The car park is booking the room itself."}],"text":"What does the receptionist offer?","type":"choice"}],"title":"The Other View"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ea637d5-a10c-5069-b24b-f20f59c56948', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“reception” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The place in a hotel where you check in and ask questions"},{"id":"D_B","is_correct":false,"text":"A restaurant on the top floor"},{"id":"D_C","is_correct":false,"text":"The car park behind the hotel"}],"word":"reception"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb4f3dbe-d0d4-5177-97a9-ffd244ecedcb', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She has taken our passports at reception.","explanation":"The missing word is “taken”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"taken","id":"LW_A","is_correct":true},{"audio_text":"take","id":"LW_B","is_correct":false},{"audio_text":"taking","id":"LW_C","is_correct":false}],"sentence_template":"She has ___ our passports at reception."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb728c35-dadb-5dec-814e-d3a929b66e5f', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"since","explanation":"The complete sentence is “The room has been ready since ten o''clock.”.","hint_prefix":"si","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The room has been ready ___ ten o''clock."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b45cffbf-2aff-559c-8170-576e17d84aef', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"reception","id":"V1","text":"reception"},{"audio_text":"room key","id":"V2","text":"room key"},{"audio_text":"to book","id":"V3","text":"to book"},{"audio_text":"spacious","id":"V4","text":"spacious"},{"audio_text":"view","id":"V5","text":"view"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e3f55fc-49f0-58f0-b9c5-61bcbddb469c', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Receptionist","text":"How was your first night?"}],"explanation":"“Very good, thank you — the room is more spacious than the one we had last year.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Very good, thank you — the room is more spacious than the one we had last year."},{"id":"C_B","is_correct":false,"text":"It was good yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The night is sleeping us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ebcb7335-1b6e-5141-a2f3-b712dccca11b', '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('fc777f8d-0f16-56bc-8342-2cb7831bd3b1', NULL, 'Просьбы в отеле', 'Вежливо просить об услугах и сравнивать номера.', '{"en":"Requests at the Hotel","ru":"Просьбы в отеле"}'::jsonb, '{"en":"Make polite requests and compare rooms.","ru":"Вежливо просить об услугах и сравнивать номера."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95223716-3dca-5f96-af22-e160aa1d5ea3', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to request","right":"попросить (об услуге)"},{"id":"P2","left":"wake-up call","right":"звонок-будильник"},{"id":"P3","left":"quieter","right":"тише"},{"id":"P4","left":"to move rooms","right":"переехать в другой номер"},{"id":"P5","left":"extra pillow","right":"дополнительная подушка"},{"id":"P6","left":"more comfortable","right":"удобнее"},{"id":"P7","left":"to charge","right":"списать (деньги)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee946088-b3ba-55de-9fcd-ccdd27a01073', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Could I have an extra pillow, please?”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Could I have an extra pillow, please?"},{"id":"Q_B","is_correct":false,"text":"Send a pillow to room 12 now."},{"id":"Q_C","is_correct":false,"text":"You will bring me a pillow."}],"question":"Which request is the most polite?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06850b21-88ab-5bd3-a9a0-96a1079162b4', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you give us a wake-up call at six? We have an early train.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Не могли бы вы разбудить нас в шесть утра? У нас ранний поезд.","target_language":"en","word_bank":["have","did","at","can","you","six?","call","We","give","an","yesterday","us","early","Could","train.","a","wake-up"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b315c52-1ee9-5c8f-8a09-44c94c8c962e', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quieter","instruction":"Выберите подходящее слово.","options":["quieter","quietest","more quiet"],"sentence_template":"A room away from the lift is ___ .","translation_hint":"Номер подальше от лифта тише."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78be9078-8f66-5407-bf24-30ce1dff4fb9', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","request","a","late","check-out","tomorrow."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["going","check-out","tomorrow.","a","did","was","am","to","request","late","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78782955-f142-56fd-aada-33b04086b36a', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you ask at reception the evening before, a late check-out will often cost less.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a02be14c-ad60-5bd3-8d72-05f8c9b3baf6', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you ask at reception the evening before, a late check-out will often cost less.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если попросить на стойке накануне вечером, поздний выезд часто стоит дешевле."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbdc1aae-d48d-529c-a510-92876eef0c67', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Guest","text":"I''m afraid room 405 is very noisy — I hear the street all night.","translation":"Боюсь, номер 405 очень шумный — улицу слышно всю ночь.","type":"dialogue"},{"character":"Receptionist","text":"I''m sorry. We can move you to a quieter room on the courtyard side.","translation":"Извините. Мы можем переселить вас в более тихий номер во двор.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That would be great. Could you also send an extra pillow?"},{"is_correct":false,"text":"Great. You sent a pillow yesterday tomorrow."},{"is_correct":false,"text":"The room is moving itself to the courtyard."}],"text":"What does the guest ask?","type":"choice"}],"title":"The Noisy Room"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf98b3ba-d88d-55c7-802f-19402d61a6cb', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“wake-up call” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A phone call from reception to wake you up"},{"id":"D_B","is_correct":false,"text":"A loud alarm clock you bring from home"},{"id":"D_C","is_correct":false,"text":"A morning newspaper left at your door"}],"word":"wake-up call"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5c521ec-6a36-5961-a060-46df6a3e85d7', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could I request a late check-out?","explanation":"The missing word is “request”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"request","id":"LW_A","is_correct":true},{"audio_text":"requested","id":"LW_B","is_correct":false},{"audio_text":"requesting","id":"LW_C","is_correct":false}],"sentence_template":"Could I ___ a late check-out?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70d147a2-39fd-59c3-954b-d49118110a2f', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “The twin room is more comfortable for two friends.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The twin room is ___ comfortable for two friends."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94ef66f9-c00c-52c9-89fc-95f3b7f86482', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to request","id":"V1","text":"to request"},{"audio_text":"wake-up call","id":"V2","text":"wake-up call"},{"audio_text":"quieter","id":"V3","text":"quieter"},{"audio_text":"to move rooms","id":"V4","text":"to move rooms"},{"audio_text":"extra pillow","id":"V5","text":"extra pillow"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f56745bf-46f0-58e0-96e5-6a78eb76905a', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Receptionist","text":"Is everything all right with your room?"}],"explanation":"“Almost — could you send one more blanket? The nights are colder than we expected.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Almost — could you send one more blanket? The nights are colder than we expected."},{"id":"C_B","is_correct":false,"text":"Yes, you sent it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The room is asking about me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ebcb7335-1b6e-5141-a2f3-b712dccca11b', 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', NULL, 'Если что-то не так', 'Решить проблемы в отеле, используя should и первое условное.', '{"en":"When Something Is Wrong","ru":"Если что-то не так"}'::jsonb, '{"en":"Solve hotel problems using should and the first conditional.","ru":"Решить проблемы в отеле, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e47f31f7-2899-57a9-8f3f-b6933ec9d256', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"broken","right":"сломанный"},{"id":"P2","left":"to complain","right":"пожаловаться"},{"id":"P3","left":"to fix","right":"починить"},{"id":"P4","left":"maintenance","right":"техобслуживание"},{"id":"P5","left":"immediately","right":"немедленно"},{"id":"P6","left":"apology","right":"извинение"},{"id":"P7","left":"to offer","right":"предложить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d192b97f-750f-558d-87b3-aaae1e3ab1cf', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should report problems at reception immediately.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should report problems at reception immediately."},{"id":"Q_B","is_correct":false,"text":"You should to report them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must reporting them last night."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3b04ab1-82f9-5566-ad17-25e142aa8589', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If they do not fix the air conditioning today, we will ask for another room.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если кондиционер не починят сегодня, мы попросим другой номер.","target_language":"en","word_bank":["the","do","fix","will","they","fixed","another","not","today,","ask","air","If","yesterday","we","room.","for","conditioning","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acbc3a8b-1461-5266-b496-0c11895b375b', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"does","instruction":"Выберите подходящее слово.","options":["does","will","do"],"sentence_template":"If the shower ___ not work, call reception.","translation_hint":"Если душ не работает, позвоните на стойку."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0dbeda74-ec9d-5116-ad94-5052d3b3d849', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","the","room","before","you","unpack."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["check","the","you","should","went","unpack.","room","You","mustn''t","before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b54f5ae-553c-5787-b51f-cd1e5b2489eb', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you complain politely, the hotel will usually offer a discount or a better room.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a57ebf31-47ad-5c60-8f84-fa3182032bbf', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you complain politely, the hotel will usually offer a discount or a better room.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если пожаловаться вежливо, отель обычно предложит скидку или номер получше."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec02f3a5-fbcd-5aa5-b094-13b1e88954bb', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Guest","text":"The shower in room 302 has not worked since we arrived.","translation":"Душ в номере 302 не работает с нашего приезда.","type":"dialogue"},{"character":"Receptionist","text":"I''m very sorry. Our technician has looked at two rooms already today.","translation":"Очень извиняюсь. Наш техник сегодня уже посмотрел два номера.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Could he fix it before dinner, or should we change rooms?"},{"is_correct":false,"text":"Did he fix it tomorrow before dinner?"},{"is_correct":false,"text":"Is the shower complaining about us?"}],"text":"What does the guest ask?","type":"choice"}],"title":"The Broken Shower"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2d78180-888e-580b-9e9f-a85d7bf93b1f', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to complain” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To say clearly that something is not good enough"},{"id":"D_B","is_correct":false,"text":"To thank the staff for good service"},{"id":"D_C","is_correct":false,"text":"To book a table for dinner quietly"}],"word":"to complain"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46e76d81-61e8-5cdc-8ac5-9efb73491360', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the TV breaks, we will call you again.","explanation":"The missing word is “breaks”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"breaks","id":"LW_A","is_correct":true},{"audio_text":"will break","id":"LW_B","is_correct":false},{"audio_text":"broke","id":"LW_C","is_correct":false}],"sentence_template":"If the TV ___ , we will call you again."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90f9ebdb-34e7-551f-ae16-d617bac10d0b', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"at","explanation":"The complete sentence is “You should report it at once.”.","hint_prefix":"at","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should report it ___ once."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c357e426-8b9c-5a1f-8b71-a38eb7ef057a', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"broken","id":"V1","text":"broken"},{"audio_text":"to complain","id":"V2","text":"to complain"},{"audio_text":"to fix","id":"V3","text":"to fix"},{"audio_text":"maintenance","id":"V4","text":"maintenance"},{"audio_text":"immediately","id":"V5","text":"immediately"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26ffa7f5-a8fd-5978-ac5b-dee762ecd147', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The wifi in our room is very slow."}],"explanation":"“Tell reception — if enough guests complain, they will fix the router today.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Tell reception — if enough guests complain, they will fix the router today."},{"id":"C_B","is_correct":false,"text":"I told them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The wifi is complaining to us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('ebcb7335-1b6e-5141-a2f3-b712dccca11b', 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc239625-9be5-54cd-a1c3-15c3a99f6539', 'en', 'reception', 'стойка приёма', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9d355d0-9890-5624-b192-9aedb7fd815e', 'en', 'room key', 'ключ от номера', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4169b2fb-d187-56fc-82c4-f87dcc0c2913', 'en', 'to book', 'забронировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('98d46316-31df-59cd-9272-e60bb46db14c', 'en', 'spacious', 'просторный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec23e9bd-d81c-571e-83e3-85a5d09b5653', 'en', 'view', 'вид (из окна)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4c4d6bde-3a0c-548c-80d2-d18440405d33', 'en', 'towels', 'полотенца', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9205f38a-eda8-581d-a795-f93a4fe47af8', 'en', 'since morning', 'с утра', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('019a499c-b4e6-5a53-a7d5-d23230489efe', 'en', 'to request', 'попросить (об услуге)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58b02356-0e3d-5c07-ab3b-888bf97a40fb', 'en', 'wake-up call', 'звонок-будильник', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6b48ef6-8e68-55c0-af34-fee291907be6', 'en', 'quieter', 'тише', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d45e8bd-c344-53c0-8da5-73c8723a3cc1', 'en', 'to move rooms', 'переехать в другой номер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d2c0ce05-b517-523b-a3fd-8c4ab8fbcfaf', 'en', 'extra pillow', 'дополнительная подушка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27ca08c0-fc41-58a5-8ea2-9950fad968fc', 'en', 'more comfortable', 'удобнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3024a932-6a66-56be-9ae8-4105c2013420', 'en', 'to charge', 'списать (деньги)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76be4cd9-87db-5841-9357-d483baf1c4bd', 'en', 'broken', 'сломанный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('016ed52a-4126-5b70-97fd-2772291d4fdc', 'en', 'to complain', 'пожаловаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('901ff791-b3d0-55f9-9ae1-cf93d89e38c7', 'en', 'to fix', 'починить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('defa20dc-ad6d-509b-bb8b-b97ce2fa0e20', 'en', 'maintenance', 'техобслуживание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fba5a64-d89d-5856-83ab-bef60d051ba3', 'en', 'immediately', 'немедленно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3cc91fe-0117-57ab-bffb-577a1e6374c6', 'en', 'apology', 'извинение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4606c31-a982-54d2-bf79-d1722ca4710c', 'en', 'to offer', 'предложить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'reception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'room key' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'spacious' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'view' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'towels' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, '189d9c93-a9c2-588b-b70c-6f4df407bcc1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'since morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'wake-up call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'quieter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to move rooms' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'extra pillow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more comfortable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'fc777f8d-0f16-56bc-8342-2cb7831bd3b1', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'broken' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to complain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to fix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'maintenance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'immediately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'apology' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'ebcb7335-1b6e-5141-a2f3-b712dccca11b', id, 'efb2bcb1-abc9-52b2-b145-7967a3bd6ca5', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to offer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
