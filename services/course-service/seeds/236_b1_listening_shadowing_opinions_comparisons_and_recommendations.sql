-- Track: B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('dc116a2f-b76d-5a72-b91c-39c730680744', 'B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS', 'Мнения, сравнения и рекомендации', 'Развивайте навыки аудирования и повторения уровня B1 по теме «Мнения, сравнения и рекомендации».', '{"en":"Opinions, Comparisons and Recommendations","ru":"Мнения, сравнения и рекомендации"}'::jsonb, '{"en":"Develop B1 listening and shadowing skills for opinions, comparisons and recommendations.","ru":"Развивайте навыки аудирования и повторения уровня B1 по теме «Мнения, сравнения и рекомендации»."}'::jsonb, 'en', 'B1', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7e763f55-6881-58e4-9515-513693c5f479', NULL, 'Основная мысль и детали', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Comparing Choices","ru":"Основная мысль и детали"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4b721f6-5377-5af5-a4ab-36e210a9aad7', '7e763f55-6881-58e4-9515-513693c5f479', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N01","left":"recommendation","right":"рекомендация"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N02","left":"advantage","right":"преимущество"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N03","left":"drawback","right":"недостаток"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N04","left":"whereas","right":"тогда как"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N05","left":"suitable","right":"подходящий"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N06","left":"evidence","right":"доказательство"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N07","left":"preference","right":"предпочтение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20889eb5-0e33-5f24-befa-f9021fb07a52', '7e763f55-6881-58e4-9515-513693c5f479', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N08","is_correct":true,"text":"The first option is cheaper, whereas the second offers an important advantage in reliability."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06181da4-1d3f-5417-af0b-d294284d1824', '7e763f55-6881-58e4-9515-513693c5f479', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The first option is cheaper, whereas the second offers an important advantage in reliability.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Первый вариант дешевле, тогда как второй имеет важное преимущество в надёжности.","target_language":"en","word_bank":["The","first","option","is","cheaper,","whereas","the","second","offers","an","important","advantage","in","reliability."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0caef807-ae32-5470-a4c0-1aaec2e0b333', '7e763f55-6881-58e4-9515-513693c5f479', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"recommendation","instruction":"Выберите подходящее слово.","options":["recommendation","whereas","evidence"],"sentence_template":"The first option is cheaper, whereas the second offers an important advantage in reliability."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02dfb628-d1b5-5d4a-b10b-fe4a819f370f', '7e763f55-6881-58e4-9515-513693c5f479', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","first","option","is","cheaper,","whereas","the","second","offers","an","important","advantage","in","reliability."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["reliability.","in","advantage","important","an","offers","second","the","whereas","cheaper,","is","option","first","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f57c6dd2-7085-58d9-886b-4c03004d871f', '7e763f55-6881-58e4-9515-513693c5f479', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The first option is cheaper, whereas the second offers an important advantage in reliability. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cddab5c-aa9b-5f08-b196-b0ec8f070501', '7e763f55-6881-58e4-9515-513693c5f479', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The first option is cheaper, whereas the second offers an important advantage in reliability. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Первый вариант дешевле, тогда как второй имеет важное преимущество в надёжности. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84de02e4-232c-5de9-b673-6db47b55c172', '7e763f55-6881-58e4-9515-513693c5f479', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"The first option is cheaper, whereas the second offers an important advantage in reliability.","translation":"Первый вариант дешевле, тогда как второй имеет важное преимущество в надёжности.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Comparing Choices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('220d67f6-9922-5843-9290-d016568fb3e3', '7e763f55-6881-58e4-9515-513693c5f479', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“recommendation” means advice about the best choice.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N11","is_correct":true,"text":"advice about the best choice"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N12","is_correct":false,"text":"a positive feature"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N13","is_correct":false,"text":"a negative feature"}],"word":"recommendation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1095f290-a801-522b-b712-128108c99418', '7e763f55-6881-58e4-9515-513693c5f479', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The first option is cheaper, whereas the second offers an important advantage in reliability.","explanation":"The missing expression is “recommendation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"recommendation","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N14","is_correct":true},{"audio_text":"drawback","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N15","is_correct":false},{"audio_text":"suitable","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N16","is_correct":false}],"sentence_template":"The first option is cheaper, whereas the second offers an important advantage in reliability."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('878f99c5-2bf8-54a5-82e5-9a8770aa6fab', '7e763f55-6881-58e4-9515-513693c5f479', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"recommendation","explanation":"The recording uses “recommendation” in this position.","hint_prefix":"rec","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The first option is cheaper, whereas the second offers an important advantage in reliability."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acdbf352-3f4b-5315-b9a2-55c26f4a6bdb', '7e763f55-6881-58e4-9515-513693c5f479', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"recommendation","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N17","text":"recommendation"},{"audio_text":"advantage","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N18","text":"advantage"},{"audio_text":"drawback","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N19","text":"drawback"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3618ddf5-edb9-5611-8e46-779c1cac7021', '7e763f55-6881-58e4-9515-513693c5f479', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N20","is_correct":true,"text":"The first option is cheaper, whereas the second offers an important advantage in reliability."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L1_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dc116a2f-b76d-5a72-b91c-39c730680744', '7e763f55-6881-58e4-9515-513693c5f479', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d39fc2de-dab1-5d5d-b61e-81eb7fd220f7', NULL, 'Отношение и вывод', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Giving an Opinion","ru":"Отношение и вывод"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fcd6bf1-8991-5104-b9aa-27502574da6f', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N01","left":"recommendation","right":"рекомендация"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N02","left":"advantage","right":"преимущество"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N03","left":"drawback","right":"недостаток"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N04","left":"whereas","right":"тогда как"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N05","left":"suitable","right":"подходящий"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N06","left":"evidence","right":"доказательство"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N07","left":"preference","right":"предпочтение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef9fb983-400e-56bc-8df8-33ef0cbec89b', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N08","is_correct":true,"text":"Her recommendation was based on evidence rather than personal preference alone."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('354940b9-fa1b-54ca-9270-e7a71a4e5f4a', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Her recommendation was based on evidence rather than personal preference alone.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Её рекомендация основывалась на доказательствах, а не только на личном предпочтении.","target_language":"en","word_bank":["Her","recommendation","was","based","on","evidence","rather","than","personal","preference","alone."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c972683-df9e-52cd-a051-dabdc5ef94a8', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"advantage","instruction":"Выберите подходящее слово.","options":["advantage","suitable","preference"],"sentence_template":"Her recommendation was based on evidence rather than personal preference alone."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75d93457-b90c-5c06-8e3c-1a39fb601853', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Her","recommendation","was","based","on","evidence","rather","than","personal","preference","alone."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["alone.","preference","personal","than","rather","evidence","on","based","was","recommendation","Her"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4d757f2-8216-5620-bc22-97ab6c7bbf4c', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Her recommendation was based on evidence rather than personal preference alone. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('430c31b2-7f13-5bbe-af4b-2b27d3bc8bc2', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Her recommendation was based on evidence rather than personal preference alone. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Её рекомендация основывалась на доказательствах, а не только на личном предпочтении. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82a35fd5-0693-5294-b9f1-83f2934627d3', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Her recommendation was based on evidence rather than personal preference alone.","translation":"Её рекомендация основывалась на доказательствах, а не только на личном предпочтении.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Giving an Opinion"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e1aacd7-75e0-5742-a75e-05926067fa05', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“advantage” means a positive feature.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N11","is_correct":true,"text":"a positive feature"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N12","is_correct":false,"text":"a negative feature"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N13","is_correct":false,"text":"a linker showing contrast"}],"word":"advantage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b27de9ba-1086-5936-a465-e215e3f43f86', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Her recommendation was based on evidence rather than personal preference alone.","explanation":"The missing expression is “advantage”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"advantage","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N14","is_correct":true},{"audio_text":"whereas","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N15","is_correct":false},{"audio_text":"evidence","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N16","is_correct":false}],"sentence_template":"Her recommendation was based on evidence rather than personal preference alone."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3b9064b-7230-5903-913d-b33006032291', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"advantage","explanation":"The recording uses “advantage” in this position.","hint_prefix":"adv","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Her recommendation was based on evidence rather than personal preference alone."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ee3b1a1-c622-5b80-955f-1e913fca2d03', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"recommendation","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N17","text":"recommendation"},{"audio_text":"advantage","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N18","text":"advantage"},{"audio_text":"drawback","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N19","text":"drawback"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de5e54f6-c319-5f85-a2da-b4fe3d585325', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N20","is_correct":true,"text":"Her recommendation was based on evidence rather than personal preference alone."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L2_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dc116a2f-b76d-5a72-b91c-39c730680744', 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c652bf7d-332a-59a8-8304-d387bcdbedc6', NULL, 'Связная речь и повторение', 'Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм.', '{"en":"Making Recommendations","ru":"Связная речь и повторение"}'::jsonb, '{"en":"Understand main ideas, details, attitude, and implied meaning in B1 speech and reproduce its rhythm accurately.","ru":"Понимать основную мысль, детали, отношение и подразумеваемое значение речи уровня B1 и точно воспроизводить её ритм."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c303d8db-9ec6-5032-852e-f0c89b72917f', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N01","left":"recommendation","right":"рекомендация"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N02","left":"advantage","right":"преимущество"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N03","left":"drawback","right":"недостаток"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N04","left":"whereas","right":"тогда как"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N05","left":"suitable","right":"подходящий"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N06","left":"evidence","right":"доказательство"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N07","left":"preference","right":"предпочтение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ebccc41-58b4-5958-b25b-66e16f5d3780', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct option reflects both the main idea and the relationship between the details.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N08","is_correct":true,"text":"Neither choice is suitable for everyone, because each has a different drawback."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N09","is_correct":false,"text":"The speaker gives an unrelated fact without expressing a clear point."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N10","is_correct":false,"text":"The speaker says the opposite of the information in the recording."}],"question":"What is the speaker’s main point?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1389f16-f52b-5b57-83d4-407c91811eae', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Neither choice is suitable for everyone, because each has a different drawback.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ни один вариант не подходит всем, потому что у каждого есть свой недостаток.","target_language":"en","word_bank":["Neither","choice","is","suitable","for","everyone,","because","each","has","a","different","drawback."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88607082-8f15-53bf-b737-2b0a2564359b', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"drawback","instruction":"Выберите подходящее слово.","options":["drawback","evidence","recommendation"],"sentence_template":"Neither choice is suitable for everyone, because each has a different ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f711361-512f-525d-849f-9559bbd2d52c', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Neither","choice","is","suitable","for","everyone,","because","each","has","a","different","drawback."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["drawback.","different","a","has","each","because","everyone,","for","suitable","is","choice","Neither"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67df2a58-0cec-5053-98b8-a61235337e4e', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Neither choice is suitable for everyone, because each has a different drawback. The second sentence adds context that helps the listener interpret the speaker’s meaning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f8ad16c-722d-57e1-863b-da672969f500', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Neither choice is suitable for everyone, because each has a different drawback. The second sentence adds context that helps the listener interpret the speaker’s meaning. Listen for contrast, weak forms and sentence stress, then shadow the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.78,"translation_hint":"Ни один вариант не подходит всем, потому что у каждого есть свой недостаток. Второе предложение добавляет контекст, который помогает понять смысл говорящего. Слушайте противопоставление, слабые формы и фразовое ударение, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e36600fe-32d0-5115-9752-2870cac3bab2', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Speaker","text":"Neither choice is suitable for everyone, because each has a different drawback.","translation":"Ни один вариант не подходит всем, потому что у каждого есть свой недостаток.","type":"dialogue"},{"character":"Listener","text":"So the key detail changes how we should understand the message?","translation":"Значит, ключевая деталь меняет то, как следует понимать сообщение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. The context supports that interpretation of the speaker’s point."},{"is_correct":false,"text":"No. Context and tone never affect meaning."}],"text":"Which reply shows accurate understanding?","type":"choice"}],"title":"Making Recommendations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52c5fa1f-12a6-54c6-9b3d-b65ceca9f94b', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“drawback” means a negative feature.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N11","is_correct":true,"text":"a negative feature"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N12","is_correct":false,"text":"a linker showing contrast"},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N13","is_correct":false,"text":"right for a particular purpose"}],"word":"drawback"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bf83ac9-d53b-5132-8cf8-bfb94353eea8', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Neither choice is suitable for everyone, because each has a different drawback.","explanation":"The missing expression is “drawback”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"drawback","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N14","is_correct":true},{"audio_text":"suitable","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N15","is_correct":false},{"audio_text":"preference","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N16","is_correct":false}],"sentence_template":"Neither choice is suitable for everyone, because each has a different ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4de54c35-2b70-5fd4-8c46-239f60c91b85', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"drawback","explanation":"The recording uses “drawback” in this position.","hint_prefix":"dra","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Neither choice is suitable for everyone, because each has a different ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20b9ce68-2a7f-5d5d-bf08-4a1427f6c7e4', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 expression with the written form you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"recommendation","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N17","text":"recommendation"},{"audio_text":"advantage","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N18","text":"advantage"},{"audio_text":"drawback","id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N19","text":"drawback"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55bc9b36-fca9-5b16-9173-13398cb31c88', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"What does the speaker really mean?"}],"explanation":"The correct response accurately reports the speaker’s main idea and relevant detail.","instruction":"Ответьте.","options":[{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N20","is_correct":true,"text":"Neither choice is suitable for everyone, because each has a different drawback."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N21","is_correct":false,"text":"The message contains no main idea or useful detail."},{"id":"B1_LISTENING_SHADOWING_OPINIONS_COMPARISONS_AND_RECOMMENDATIONS_L3_N22","is_correct":false,"text":"I will ignore the speaker’s words and tone."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('dc116a2f-b76d-5a72-b91c-39c730680744', 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fca985ca-6503-5d5d-9945-3bcdab0f1b8d', 'en', 'recommendation', 'рекомендация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8776df7-8808-58c5-81f6-143d1275006a', 'en', 'advantage', 'преимущество', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f05aa0b-98a4-5bf1-b76e-25df263e1299', 'en', 'drawback', 'недостаток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9922c1e9-53d3-5187-b9ad-d5f8a7259675', 'en', 'whereas', 'тогда как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a8f03c-78e4-55d6-8b2b-77d8fb760a3e', 'en', 'suitable', 'подходящий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('096decb0-5436-5dfd-b779-cec2fdaed4f3', 'en', 'preference', 'предпочтение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fca985ca-6503-5d5d-9945-3bcdab0f1b8d', 'en', 'recommendation', 'рекомендация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8776df7-8808-58c5-81f6-143d1275006a', 'en', 'advantage', 'преимущество', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f05aa0b-98a4-5bf1-b76e-25df263e1299', 'en', 'drawback', 'недостаток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9922c1e9-53d3-5187-b9ad-d5f8a7259675', 'en', 'whereas', 'тогда как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a8f03c-78e4-55d6-8b2b-77d8fb760a3e', 'en', 'suitable', 'подходящий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('096decb0-5436-5dfd-b779-cec2fdaed4f3', 'en', 'preference', 'предпочтение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fca985ca-6503-5d5d-9945-3bcdab0f1b8d', 'en', 'recommendation', 'рекомендация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8776df7-8808-58c5-81f6-143d1275006a', 'en', 'advantage', 'преимущество', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f05aa0b-98a4-5bf1-b76e-25df263e1299', 'en', 'drawback', 'недостаток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9922c1e9-53d3-5187-b9ad-d5f8a7259675', 'en', 'whereas', 'тогда как', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f9a8f03c-78e4-55d6-8b2b-77d8fb760a3e', 'en', 'suitable', 'подходящий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('096decb0-5436-5dfd-b779-cec2fdaed4f3', 'en', 'preference', 'предпочтение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, '7e763f55-6881-58e4-9515-513693c5f479', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, '7e763f55-6881-58e4-9515-513693c5f479', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'advantage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, '7e763f55-6881-58e4-9515-513693c5f479', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'drawback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, '7e763f55-6881-58e4-9515-513693c5f479', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'whereas' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, '7e763f55-6881-58e4-9515-513693c5f479', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'suitable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, '7e763f55-6881-58e4-9515-513693c5f479', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, '7e763f55-6881-58e4-9515-513693c5f479', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'preference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'advantage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'drawback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'whereas' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'suitable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'd39fc2de-dab1-5d5d-b61e-81eb7fd220f7', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'preference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'advantage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'drawback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'whereas' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'suitable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'dc116a2f-b76d-5a72-b91c-39c730680744', id, 'c652bf7d-332a-59a8-8304-d387bcdbedc6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'preference' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
