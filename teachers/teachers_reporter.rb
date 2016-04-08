require_relative '../lib/reporters/reporter'

module Teachers

  class TeachersReporter < Reporter

    def initialize(data)
      super data

      fill_descriptions
    end

    private

    def fill_descriptions
      @descriptions = {}
      @descriptions['question0'] = '0. Вы:'
      @descriptions['question1'] = '1. Скажите, пожалуйста, есть ли в населенном пункте, в котором Вы проживаете, образовательные учреждения (школы, колледжи, ВУЗы)?'
      @descriptions['question2'] = '2. Укажите, пожалуйста, сколько времени у Вас занимает дорога от дома до школы?'
      @descriptions['question3'] = '3. Уточните, пожалуйста, Вы работаете в:'
      @descriptions['question4'] = '4. Какие функции школы, на Ваш взгляд, являются наиболее важными?'
      @descriptions['question4_additional'] = '4. Какие функции школы, на Ваш взгляд, являются наиболее важными? (другое)'
      @descriptions['question5'] = '5. Большинство учителей в современной школе &mdash; это:'
      @descriptions['question5_additional'] = '5. Большинство учителей в современной школе &mdash; это: (другое)'
      @descriptions['question6'] = '6. Скажите, пожалуйста, каких качеств, на Ваш взгляд, не хватает современному учителю?'
      @descriptions['question6_additional'] = '6. Скажите, пожалуйста, каких качеств, на Ваш взгляд, не хватает современному учителю? (другое)'
      @descriptions['question7'] = '7. На Ваш взгляд, современные школьники:'
      @descriptions['question8'] = '8. Ваши отношения с учениками в большинстве случаев ты можешь охарактеризовать как:'
      @descriptions['question9'] = '9. Знают/умеют ли Ваши ученики что-то, чего не знаете/умеете Вы?'
      @descriptions['question10'] = '10. На Ваш взгляд, современная школа:'
      @descriptions['question11'] = '11. Если в предыдущем вопросе Вы ответили "Нуждается в частичных изменениях", то уточните, пожалуйста, в какой сфере:'
      @descriptions['question11_additional'] = '11. Если в предыдущем вопросе Вы ответили "Нуждается в частичных изменениях", то уточните, пожалуйста, в какой сфере: (другое)'
      @descriptions['question12'] = '12. Согласны ли Вы с утверждением «В современном мире каждый человек должен получить высшее образование»?'
      @descriptions['question12a'] = '12а. Вы бы хотели, чтобы Ваши ученики после окончания школы:'
      @descriptions['question12a_additional'] = '12а. Вы бы хотели, чтобы Ваш ребенок после окончания школы: (другое)'
      @descriptions['question13'] = '13. Если в предыдущем вопросе Вы выбрали вариант ответа «Да», то, пожалуйста, уточните, почему в современном мире каждый человек должен получить высшее образование?'
      @descriptions['question13_additional'] = '13. Если в предыдущем вопросе Вы выбрали вариант ответа «Да», то, пожалуйста, уточните, почему в современном мире каждый человек должен получить высшее образование? (другое)'
      @descriptions['question14'] = '14. В современном мире образование &mdash; это:'
      @descriptions['question14_additional'] = '14. В современном мире образование &mdash; это: (другое)'
      @descriptions['question15'] = '15. Считаете ли Вы, что ученики в школе получают качественное образование?'
      @descriptions['question16'] = '16. Если в предыдущем вопросе Вы выбрали вариант ответа «Нет», то напишите, пожалуйста, что необходимо сделать, что поднять уровень качества образования?'
      @descriptions['question17'] = '17. От чего зависит уровень образования сегодняшних школьников?'
      @descriptions['question18'] = '18. С чего начинается образование?'
      @descriptions['question19'] = '19. Занимаются ли Ваши ученики дополнительно, помимо школы?'
      @descriptions['question20'] = '20. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве?'
      @descriptions['question20_1_additional'] = '20. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)'
      @descriptions['question20_2_additional'] = '20. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На представителя шоу бизнеса (ведущий, певец, актер)"; укажи, на кого)'
      @descriptions['question20_3_additional'] = '20. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На героя фильма, сериала, книги, компьютерной игры"; укажи, на кого)'
      @descriptions['question20_4_additional'] = '20. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На спортсмена"; укажи, на кого)'
      @descriptions['question20_additional'] = '20. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего  похожим (-жей) в детстве? (другое)'
      @descriptions['question21_1'] = '21-1. Укажите, какие из нижеперечисленных качеств в наибольшей степени присущи Вам.'
      @descriptions['question21_2'] = '21-2. Укажите, какие из нижеперечисленных качеств в наибольшей степени присущи Вашим ученикам.'
      @descriptions['question22_1'] = '22-1. Какому из перечисленных ниже правил Вы следуюте в своей жизни?'
      @descriptions['question22_2'] = '22-2. Какому из перечисленных ниже правил следуют в своей жизни Ваши ученики?'
      @descriptions['question23'] = '23. Что для Вас значит хорошо жить?'
      @descriptions['question23_additional'] = '23. Что для Вас значит хорошо жить? (другое)'
      @descriptions['question24'] = '24. Как Вы думаете, что самое главное для всех людей на Земле?'
      @descriptions['question24_additional'] = '24. Как Вы думаете, что самое главное для всех людей на Земле? (другое)'
      @descriptions['question25'] = '25. Считаете ли Вы себя патриотом своей страны?  '
      @descriptions['question26'] = '26. Что, прежде всего, внушает Вам чувство гордости за Россию?'
      @descriptions['question26_additional'] = '26. Что, прежде всего, внушает Вам чувство гордости за Россию? (другое)'
      @descriptions['question27'] = '27. Патриоты для Вас &mdash; это:'
      @descriptions['question27_additional'] = '27. Патриоты для Вас &mdash; это: (другое)'
      @descriptions['question28'] = '28. Существует множество точек зрения о современной России. Выберите ту позицию, которая максимально соответствует Вашей:'
      @descriptions['question29'] = '29. Если бы у Вас была возможность создать страничку (аккаунт) России в социальной сети, какой бы Вы написали статус?'
      @descriptions['question29_additional'] = '29. Если бы у Вас была возможность создать страничку (аккаунт) России в социальной сети, какой бы Вы написали статус? (другое)'
      @descriptions['question30'] = '30. С каким из предложенных высказываний Вы согласитесь?'
      @descriptions['question31'] = '31. Считаете ли Вы, что сейчас в России существует свобода слова, мысли, самовыражения?'
      @descriptions['question32'] = '32. Если на предыдущий вопрос Вы ответили "Скорее нет" или "Нет", то уточните, пожалуйста, как Вы к этому относитесь?'
      @descriptions['question33'] = '33. Хотели бы Вы жить в другой стране?'
      @descriptions['question_33_1_additional'] = '33. Хотели бы Вы жить в другой стране? (да; укажите, в какой)'
      @descriptions['question34'] = '34. Если на предыдущий вопрос Вы ответили  «Да, я хотел бы жить в другой стране», то укажите, пожалуйста, почему?'
      @descriptions['question34_additional'] = '34. Если на предыдущий вопрос Вы ответили  «Да, я хотел бы жить в другой стране», то укажите, пожалуйста, почему? (другое)'
      @descriptions['question35'] = '35. Какое из суждений наиболее точно отражает Ваше мнение?'
      @descriptions['question36'] = '36. Укажите, пожалуйста, описание, которое с Вашей точки зрения наиболее полно характеризует воспитанного человека.'
      @descriptions['question36_additional'] = '36. Укажите, пожалуйста, описание, которое с Вашей точки зрения наиболее полно характеризует воспитанного человека. (другое)'
      @descriptions['question37_2'] = '37-2. Кто, в первую очередь, отвечает за результат воспитания? ("Сам ребенок")'
      @descriptions['question37_3'] = '37-3. Кто, в первую очередь, отвечает за результат воспитания? ("Родители")'
      @descriptions['question37_4'] = '37-4. Кто, в первую очередь, отвечает за результат воспитания? ("Бабушки/дедушки")'
      @descriptions['question37_5'] = '37-5. Кто, в первую очередь, отвечает за результат воспитания? ("Школа")'
      @descriptions['question37_6'] = '37-6. Кто, в первую очередь, отвечает за результат воспитания? ("Общественные организации")'
      @descriptions['question37_7'] = '37-7. Кто, в первую очередь, отвечает за результат воспитания? ("Церковь")'
      @descriptions['question37_8'] = '37-8. Кто, в первую очередь, отвечает за результат воспитания? ("Люди, которых человек выбирает в авторитеты")'
      @descriptions['question38'] = '38. К какому типу пользователей интернетом Вы себя относите?'
      @descriptions['question39'] = '39. Как Вы научились пользоваться Интернетом?'
      @descriptions['question39_additional'] = '39. Как Вы научились пользоваться Интернетом? (другое)'
      @descriptions['question40'] = '40. Пожалуйста, выберите, для чего Вы чаще всего используете Интернет?'
      @descriptions['question41'] = '41. Пожалуйста, выберите, для чего чаще всего используют Интернет Ваши ученики?'
      @descriptions['question42'] = '42. Ваш пол'
      @descriptions['question43'] = '43. Укажите, пожалуйста, год Вашего рождения:'
      @descriptions['question44'] = '44. Укажите, пожалуйста, регион, в котором Вы проживаете:'
      @descriptions['question45'] = '45. Место проживания:'
      @descriptions['question46'] = '46. Укажите Ваш стаж педагогической деятельности:'
      @descriptions['question47'] = '47. Какую должность Вы занимаете?'
      @descriptions['question47_additional'] = '47. Какую должность Вы занимаете? (другое)'
      @descriptions['question48'] = '48. Какой предмет Вы преподаете?'
      @descriptions['question49'] = '49. В каких классах Вы преподаете?'
      @descriptions['answer0_1'] = 'Школьник'
      @descriptions['answer0_2'] = 'Учитель'
      @descriptions['answer0_3'] = 'Родитель'
      @descriptions['answer1_1'] = 'Да, есть все вышеперечисленное (школы, колледжи, ВУЗы)'
      @descriptions['answer1_2'] = 'Да, есть, школы и колледжи, ВУЗы отсутствуют'
      @descriptions['answer1_3'] = 'Да, есть школы и ВУЗы, колледжи отсутствуют'
      @descriptions['answer1_4'] = 'Да, есть высшее учебное заведение (ВУЗ)'
      @descriptions['answer1_5'] = 'Да, есть среднее специальное учебное заведение (колледж)'
      @descriptions['answer1_6'] = 'Да, есть средняя общеобразовательная школа (1-11 класс)'
      @descriptions['answer1_7'] = 'Да, есть основная общеобразовательная школа (1-9 класс)'
      @descriptions['answer1_8'] = 'Да, есть начальная общеобразовательная школа (1-4 класс)'
      @descriptions['answer1_9'] = 'Нет, образовательные учреждения отсутствуют'
      @descriptions['answer2_1'] = 'Менее 15 минут'
      @descriptions['answer2_2'] = 'Менее 30 минут'
      @descriptions['answer2_3'] = '30 минут &mdash; 1 час'
      @descriptions['answer2_4'] = 'Более 1 часа'
      @descriptions['answer3_1'] = 'Средней общеобразовательной школе'
      @descriptions['answer3_2'] = 'Средней общеобразовательной школе с углубленным изучением отдельных предметов'
      @descriptions['answer3_3'] = 'Гимназии, лицее'
      @descriptions['answer3_4'] = 'Профессиональном лицее'
      @descriptions['answer4_1'] = 'Организация деятельности по овладению знаниями, умениями, навыками и компетенциями'
      @descriptions['answer4_2'] = 'Создание условий для обеспечения прав и свобод ребенка, включая ответственный выбор способа реализации его образовательной потребности'
      @descriptions['answer4_3'] = 'Формирование мотивации получения образования в течение всей жизни'
      @descriptions['answer4_4'] = 'Формирование общей культуры личности'
      @descriptions['answer4_5'] = 'Формирование гражданской позиции, трудолюбия, уважения к правам и свободам человека, Родине, семье'
      @descriptions['answer4_6'] = 'Формирование культуры здорового и безопасного образа жизни'
      @descriptions['answer4_7'] = 'Формирование дисциплины и самоорганизации'
      @descriptions['answer4_8'] = 'Создание условий для социализации на основе социокультурных, духовно-нравственных ценностей и принятых в обществе правил и норм поведения'
      @descriptions['answer4_9'] = 'Обеспечение условий для самоопределения и развития творческой личности'
      @descriptions['answer4_10'] = 'Другое'
      @descriptions['answer5_1'] = 'Профессионалы, знающие свой предмет, готовые меняться по мере того, как меняется общество и учащиеся'
      @descriptions['answer5_2'] = 'Профессионалы, знающие свой предмет, но не считающие необходимым менять стиль и содержание образовательной деятельности'
      @descriptions['answer5_3'] = 'Моральные авторитеты, наставники, советчики, с которыми ученики будут сверять свою жизнь и после школы'
      @descriptions['answer5_4'] = 'Люди, вынужденные работать в школе, из-за отсутствия другой работы'
      @descriptions['answer5_5'] = 'Другое'
      @descriptions['answer6_1'] = 'Глубокое знание собственного предмета'
      @descriptions['answer6_2'] = 'Широкая общая эрудиция'
      @descriptions['answer6_3'] = 'Высокие интеллектуальные способности и практические навыки'
      @descriptions['answer6_4'] = 'Умение понятно и наглядно объяснять учебный материал'
      @descriptions['answer6_5'] = 'Лидерские способности'
      @descriptions['answer6_6'] = 'Знание современных информационных технологий'
      @descriptions['answer6_7'] = 'Умение общаться с учащимися, интересоваться их жизнью'
      @descriptions['answer6_8'] = 'Умение общаться с родителями учащихся'
      @descriptions['answer6_9'] = 'Внешняя привлекательность'
      @descriptions['answer6_10'] = 'Постоянное самосовершенствование и самообразование'
      @descriptions['answer6_11'] = 'Знание основных традиций школы'
      @descriptions['answer6_12'] = 'Понимание потребностей и особенностей учащихся'
      @descriptions['answer6_13'] = 'Другое'
      @descriptions['answer7_1'] = 'Отличаются от предшествующих поколений в позитивную сторону'
      @descriptions['answer7_2'] = 'Не отличаются от предшествующих поколений'
      @descriptions['answer7_3'] = 'Отличаются от предшествующих поколений в негативную сторону'
      @descriptions['answer8_1'] = 'Товарищеские'
      @descriptions['answer8_2'] = 'Деловые'
      @descriptions['answer8_3'] = 'Зависимые'
      @descriptions['answer8_4'] = 'Состязательные'
      @descriptions['answer8_5'] = 'Враждебные'
      @descriptions['answer8_6'] = 'Со всеми по-разному'
      @descriptions['answer10_1'] = 'Полностью удовлетворяет образовательным потребностям общества'
      @descriptions['answer10_2'] = 'Нуждается в частичных изменениях в сфере, касающейся изучаемых дисциплин (введения новых предметов, возможностей их выбора и др.)'
      @descriptions['answer10_3'] = 'Находится в глубоком кризисе и требует коренных изменений'
      @descriptions['answer11_1'] = 'изучаемых дисциплин (введения новых предметов, возможностей их выбора и др.)'
      @descriptions['answer11_2'] = 'методов преподавания'
      @descriptions['answer11_3'] = 'возрастного состава учителей'
      @descriptions['answer11_4'] = 'полового состава учителей, соотношения мужчин и женщин'
      @descriptions['answer11_5'] = 'уровня профессиональной подготовки учителей'
      @descriptions['answer11_6'] = 'технического оснащения школы'
      @descriptions['answer11_7'] = 'условий внеурочной деятельности (работы секций, клубов, кружков)'
      @descriptions['answer11_8'] = 'питания в столовой'
      @descriptions['answer11_9'] = 'Нуждается в частичных изменениях в другой сфере:'
      @descriptions['answer12_1'] = 'Да'
      @descriptions['answer12_2'] = 'Нет'
      @descriptions['answer12a_1'] = 'Продолжил обучение'
      @descriptions['answer12a_2'] = 'Прошел службу в армии'
      @descriptions['answer12a_3'] = 'Пошел на работу'
      @descriptions['answer12a_4'] = 'Какое-то время не учился и не работал'
      @descriptions['answer12a_5'] = 'Другое'
      @descriptions['answer13_1'] = 'Это необходимо для получения хорошей работы'
      @descriptions['answer13_2'] = 'Это необходимо для образованного человека'
      @descriptions['answer13_3'] = 'Это престижно'
      @descriptions['answer13_4'] = 'Это требует современное общество'
      @descriptions['answer13_5'] = 'Этого требуют родители'
      @descriptions['answer13_6'] = 'Это формальная необходимость'
      @descriptions['answer13_7'] = 'Другое'
      @descriptions['answer14_1'] = 'Общественное благо'
      @descriptions['answer14_2'] = 'Инвестиция в будущее'
      @descriptions['answer14_3'] = 'Формальная необходимость: наличие аттестата о среднем образовании, диплома о среднем специальном или высшем образовании'
      @descriptions['answer14_4'] = 'Не является благом'
      @descriptions['answer14_5'] = 'Другое'
      @descriptions['answer15_1'] = 'Да'
      @descriptions['answer15_2'] = 'Нет'
      @descriptions['answer17_1'] = 'От образовательного запроса самих школьников'
      @descriptions['answer17_2'] = 'От образовательного запроса и вложений родителей'
      @descriptions['answer17_3'] = 'От школы и учителей'
      @descriptions['answer17_4'] = 'От общественного заказа'
      @descriptions['answer17_5'] = 'От заказа (образовательной политики, инвестиций) государства'
      @descriptions['answer17_6'] = 'От заказа (инвестиций) частного бизнеса (производства, сферы услуг)'
      @descriptions['answer17_7'] = 'От уровня развития и доступности образовательных интернет-ресурсов'
      @descriptions['answer17_8'] = 'От уровня развития всей образовательной системы государства'
      @descriptions['answer18_1'] = 'С первой сказки, услышанной от мамы'
      @descriptions['answer18_2'] = 'С первого мультфильма, увиденного по телевизору'
      @descriptions['answer18_3'] = 'С первого сайта, открытого ребенком в сети'
      @descriptions['answer18_4'] = 'С первой прочитанной книжки'
      @descriptions['answer18_5'] = 'С детского сада'
      @descriptions['answer18_6'] = 'С первого класса школы'
      @descriptions['answer18_7'] = 'С желания самому что-то узнать'
      @descriptions['answer19_1'] = 'Да'
      @descriptions['answer19_2'] = 'Нет'
      @descriptions['answer19_3'] = 'Затрудняюсь ответить'
      @descriptions['answer20_1'] = 'На одного из родственников'
      @descriptions['answer20_2'] = 'На представителя шоу бизнеса (ведущий, певец, актер)'
      @descriptions['answer20_3'] = 'На героя фильма, сериала, книги, компьютерной игры'
      @descriptions['answer20_4'] = 'На спортсмена'
      @descriptions['answer20_5'] = 'На представителя субкультуры: эмо, панка, гота, хипстера и т. д.'
      @descriptions['answer20_6'] = 'На учителя'
      @descriptions['answer20_7'] = 'На своего друга'
      @descriptions['answer20_8'] = 'Ни на кого, кроме себя'
      @descriptions['answer20_9'] = 'Другое'
      @descriptions['answer21_1_1'] = 'Образованность (широта знаний, высокая общая культура)'
      @descriptions['answer21_1_2'] = 'Воспитанность (хорошие манеры)'
      @descriptions['answer21_1_3'] = 'Рационализм (умение здраво и логично мыслить, принимать обдуманные решения)'
      @descriptions['answer21_1_4'] = 'Хорошие манеры, аккуратность, умение следить за своей внешностью'
      @descriptions['answer21_1_5'] = 'Исполнительность (дисциплинированность)'
      @descriptions['answer21_1_6'] = 'Ответственность (чувство долга, умение держать свое слово)'
      @descriptions['answer21_1_7'] = 'Самоконтроль (сдержанность, самодисциплина)'
      @descriptions['answer21_1_8'] = 'Творческая активность (способность неординарно подходить к решению проблем)'
      @descriptions['answer21_1_9'] = 'Независимость (способность действовать самостоятельно, решительно)'
      @descriptions['answer21_1_10'] = 'Смелость в отстаивании своего мнения, взглядов'
      @descriptions['answer21_1_11'] = 'Непримиримость к недостаткам в себе и других'
      @descriptions['answer21_1_12'] = 'Индивидуализм (ориентация на собственные цели и интересы)'
      @descriptions['answer21_1_13'] = 'Высокие запросы (высокие требования к жизни и высокие притязания)'
      @descriptions['answer21_1_14'] = 'Жизнерадостность (чувство юмора)'
      @descriptions['answer21_1_15'] = 'Умение терпимо относиться к различным взглядам, мнениям, культуре, традициям'
      @descriptions['answer21_2_1'] = 'Образованность (широта знаний, высокая общая культура)'
      @descriptions['answer21_2_2'] = 'Воспитанность (хорошие манеры)'
      @descriptions['answer21_2_3'] = 'Рационализм (умение здраво и логично мыслить, принимать обдуманные решения)'
      @descriptions['answer21_2_4'] = 'Хорошие манеры, аккуратность, умение следить за своей внешностью'
      @descriptions['answer21_2_5'] = 'Исполнительность (дисциплинированность)'
      @descriptions['answer21_2_6'] = 'Ответственность (чувство долга, умение держать свое слово)'
      @descriptions['answer21_2_7'] = 'Самоконтроль (сдержанность, самодисциплина)'
      @descriptions['answer21_2_8'] = 'Творческая активность (способность неординарно подходить к решению проблем)'
      @descriptions['answer21_2_9'] = 'Независимость (способность действовать самостоятельно, решительно)'
      @descriptions['answer21_2_10'] = 'Смелость в отстаивании своего мнения, взглядов'
      @descriptions['answer21_2_11'] = 'Непримиримость к недостаткам в себе и других'
      @descriptions['answer21_2_12'] = 'Индивидуализм (ориентация на собственные цели и интересы)'
      @descriptions['answer21_2_13'] = 'Высокие запросы (высокие требования к жизни и высокие притязания)'
      @descriptions['answer21_2_14'] = 'Жизнерадостность (чувство юмора)'
      @descriptions['answer21_2_15'] = 'Умение терпимо относиться к различным взглядам, мнениям, культуре, традициям'
      @descriptions['answer21_3_1'] = 'Образованность (широта знаний, высокая общая культура)'
      @descriptions['answer21_3_2'] = 'Воспитанность (хорошие манеры)'
      @descriptions['answer21_3_3'] = 'Рационализм (умение здраво и логично мыслить, принимать обдуманные решения)'
      @descriptions['answer21_3_4'] = 'Хорошие манеры, аккуратность, умение следить за своей внешностью'
      @descriptions['answer21_3_5'] = 'Исполнительность (дисциплинированность)'
      @descriptions['answer21_3_6'] = 'Ответственность (чувство долга, умение держать свое слово)'
      @descriptions['answer21_3_7'] = 'Самоконтроль (сдержанность, самодисциплина)'
      @descriptions['answer21_3_8'] = 'Творческая активность (способность неординарно подходить к решению проблем)'
      @descriptions['answer21_3_9'] = 'Независимость (способность действовать самостоятельно, решительно)'
      @descriptions['answer21_3_10'] = 'Смелость в отстаивании своего мнения, взглядов'
      @descriptions['answer21_3_11'] = 'Непримиримость к недостаткам в себе и других'
      @descriptions['answer21_3_12'] = 'Индивидуализм (ориентация на собственные цели и интересы)'
      @descriptions['answer21_3_13'] = 'Высокие запросы (высокие требования к жизни и высокие притязания)'
      @descriptions['answer21_3_14'] = 'Жизнерадостность (чувство юмора)'
      @descriptions['answer21_3_15'] = 'Умение терпимо относиться к различным взглядам, мнениям, культуре, традициям'
      @descriptions['answer22_1_1'] = '«Быть как все, не выделяться»'
      @descriptions['answer22_1_2'] = '«Моя хата с краю, я ничего не знаю»'
      @descriptions['answer22_1_3'] = '«Есть только мое мнение, и оно всегда правильное»'
      @descriptions['answer22_1_4'] = '«Все решают деньги»'
      @descriptions['answer22_1_5'] = '«Кто сильнее, тот прав»'
      @descriptions['answer22_1_6'] = '«Надо слушаться старших - они правы всегда»'
      @descriptions['answer22_1_7'] = '«Имею право»'
      @descriptions['answer22_1_8'] = '«Худой мир лучше доброй ссоры»'
      @descriptions['answer22_1_9'] = '«Не имей сто рублей, а имей сто друзей»'
      @descriptions['answer22_1_10'] = '«Уважай мнение другого»'
      @descriptions['answer22_1_11'] = '«Кто, если не мы»'
      @descriptions['answer22_1_12'] = '«Быть самим собой»'
      @descriptions['answer22_2_1'] = '«Быть как все, не выделяться»'
      @descriptions['answer22_2_2'] = '«Моя хата с краю, я ничего не знаю»'
      @descriptions['answer22_2_3'] = '«Есть только мое мнение, и оно всегда правильное»'
      @descriptions['answer22_2_4'] = '«Все решают деньги»'
      @descriptions['answer22_2_5'] = '«Кто сильнее, тот прав»'
      @descriptions['answer22_2_6'] = '«Надо слушаться старших - они правы всегда»'
      @descriptions['answer22_2_7'] = '«Имею право»'
      @descriptions['answer22_2_8'] = '«Худой мир лучше доброй ссоры»'
      @descriptions['answer22_2_9'] = '«Не имей сто рублей, а имей сто друзей»'
      @descriptions['answer22_2_10'] = '«Уважай мнение другого»'
      @descriptions['answer22_2_11'] = '«Кто, если не мы»'
      @descriptions['answer22_2_12'] = '«Быть самим собой»'
      @descriptions['answer22_3_1'] = '«Быть как все, не выделяться»'
      @descriptions['answer22_3_2'] = '«Моя хата с краю, я ничего не знаю»'
      @descriptions['answer22_3_3'] = '«Есть только мое мнение, и оно всегда правильное»'
      @descriptions['answer22_3_4'] = '«Все решают деньги»'
      @descriptions['answer22_3_5'] = '«Кто сильнее, тот прав»'
      @descriptions['answer22_3_6'] = '«Надо слушаться старших - они правы всегда»'
      @descriptions['answer22_3_7'] = '«Имею право»'
      @descriptions['answer22_3_8'] = '«Худой мир лучше доброй ссоры»'
      @descriptions['answer22_3_9'] = '«Не имей сто рублей, а имей сто друзей»'
      @descriptions['answer22_3_10'] = '«Уважай мнение другого»'
      @descriptions['answer22_3_11'] = '«Кто, если не мы»'
      @descriptions['answer22_3_12'] = '«Быть самим собой»'
      @descriptions['answer23_1'] = 'Иметь возможность помогать людям, быть полезным, работать для общества'
      @descriptions['answer23_2'] = 'Иметь интересную работу'
      @descriptions['answer23_3'] = 'Иметь возможность для саморазвития'
      @descriptions['answer23_4'] = 'Иметь много денег, чтобы ни в чем не нуждаться'
      @descriptions['answer23_5'] = 'Иметь возможность купить машину, квартиру, дом'
      @descriptions['answer23_6'] = 'Иметь возможность хорошо одеваться и питаться'
      @descriptions['answer23_7'] = 'Иметь возможность веселиться и развлекаться'
      @descriptions['answer23_8'] = 'Иметь возможность обеспечивать семью, помогать родителям'
      @descriptions['answer23_9'] = 'Иметь возможность много путешествовать и общаться с интересными людьми'
      @descriptions['answer23_10'] = 'Быть известным, прославленным, популярным человеком'
      @descriptions['answer23_11'] = 'Иметь возможность совсем не работать'
      @descriptions['answer23_12'] = 'Быть честным гражданином и не обязательно быть богатым и знаменитым'
      @descriptions['answer23_13'] = 'Жить в стране, где нет войны, нищеты, несправедливости'
      @descriptions['answer23_14'] = 'Иметь крепкое здоровье, не болеть'
      @descriptions['answer23_15'] = 'Иметь семью и надежных друзей'
      @descriptions['answer23_16'] = 'Другое'
      @descriptions['answer24_1'] = 'Развивать научные знания и новые технологии'
      @descriptions['answer24_2'] = 'Развивать культуру и искусство'
      @descriptions['answer24_3'] = 'Поддерживать церковь, религию'
      @descriptions['answer24_4'] = 'Не допустить мировой, глобальной войны'
      @descriptions['answer24_5'] = 'Жить дружно, не враждовать, а сотрудничать'
      @descriptions['answer24_6'] = 'Жить по законам равенства и справедливости'
      @descriptions['answer24_7'] = 'Избавиться от нищеты и голода, который уносит жизни во многих странах мира'
      @descriptions['answer24_8'] = 'Справиться с болезнями и эпидемиями'
      @descriptions['answer24_9'] = 'Заботиться об окружающей среде, защищать ее от уничтожения'
      @descriptions['answer24_10'] = 'Другое'
      @descriptions['answer25_1'] = 'Да, конечно'
      @descriptions['answer25_2'] = 'Скорее да'
      @descriptions['answer25_3'] = 'Скорее нет'
      @descriptions['answer25_4'] = 'Нет'
      @descriptions['answer26_1'] = 'Размеры страны'
      @descriptions['answer26_2'] = 'Природные богатства'
      @descriptions['answer26_3'] = 'История нашего государства'
      @descriptions['answer26_4'] = 'Культура нашего государства'
      @descriptions['answer26_5'] = 'Положение России на международной арене'
      @descriptions['answer26_6'] = 'Вооруженные силы'
      @descriptions['answer26_7'] = 'Экономические успехи'
      @descriptions['answer26_8'] = 'Достижения российской науки'
      @descriptions['answer26_9'] = 'Спортивные достижения'
      @descriptions['answer26_10'] = 'Система российского образования'
      @descriptions['answer26_11'] = 'Система здравоохранения'
      @descriptions['answer26_12'] = 'Сограждане'
      @descriptions['answer26_13'] = 'Другое'
      @descriptions['answer27_1'] = 'Участники ежегодных молодежных форумов ("Селигер", "Таврида","Территория смылов на Клязьме" и пр.)'
      @descriptions['answer27_2'] = '"Ночные волки"'
      @descriptions['answer27_3'] = 'Добровольцы в Донбассе'
      @descriptions['answer27_4'] = 'Спортсмены, выступающие за Россию'
      @descriptions['answer27_5'] = 'Ученые, достижения которых вносят вклад в развитие современной цивилизации'
      @descriptions['answer27_6'] = 'Художники, актеры, режиссеры, прославляющие Россию'
      @descriptions['answer27_7'] = 'Военные, защищающие безопасность страны'
      @descriptions['answer27_8'] = 'Люди, работающие в опасных для жизни сферах (сотрудники МЧС, пожарные, полицейские)'
      @descriptions['answer27_9'] = 'Люди, отличающиеся высокой квалификацией (рабочие, учителя, врачи и т.д.)'
      @descriptions['answer27_10'] = 'Люди, готовые отдать жизнь за Родину'
      @descriptions['answer27_11'] = 'Бизнесмены, создающие рабочие места и регулярно выплачивающие налоги'
      @descriptions['answer27_12'] = 'Политики'
      @descriptions['answer27_13'] = 'Родители, вырастившие достойных детей'
      @descriptions['answer27_14'] = 'Другое'
      @descriptions['answer28_1'] = 'Наша страна является полноправным членом международных отношений и способна оказывать влияние на принимаемые решения. Нас знают и уважают во всем мире'
      @descriptions['answer28_2'] = 'Наша страна является полноправным членом международных отношений и способна оказывать влияние на принимаемые решения, но переживает временный кризис'
      @descriptions['answer28_3'] = 'У нашей страны свой путь в мире, она вынуждена противостоять внешней агрессии, чтобы сохранить свой особенный путь'
      @descriptions['answer28_4'] = 'Наша страна не является полноправным членом международных отношений и не способна оказывать влияние на принимаемые решения. С нами не считаются.'
      @descriptions['answer29_1'] = ''
      @descriptions['answer29_3'] = 'Простите, я не понимаю, о чем речь'
      @descriptions['answer30_1'] = 'Знать историю своей родины необходимо, без этого нельзя понять сегодняшнюю жизнь'
      @descriptions['answer30_2'] = 'Историю Родины знать полезно, но не обязательно'
      @descriptions['answer30_3'] = 'Знать прошлое совсем необязательно, лучше думать о настоящем и будущем'
      @descriptions['answer31_1'] = 'Да, конечно'
      @descriptions['answer31_2'] = 'Скорее да'
      @descriptions['answer31_3'] = 'Скорее нет'
      @descriptions['answer31_4'] = 'Нет'
      @descriptions['answer32_1'] = 'Положительно'
      @descriptions['answer32_2'] = 'Нейтрально'
      @descriptions['answer32_3'] = 'Отрицательно'
      @descriptions['answer33_1'] = 'Да'
      @descriptions['answer33_2'] = 'Скорее да'
      @descriptions['answer33_3'] = 'Скорее нет'
      @descriptions['answer33_4'] = 'Нет'
      @descriptions['answer34_1'] = 'Высокий уровень жизни'
      @descriptions['answer34_2'] = 'Высокое качество образования'
      @descriptions['answer34_3'] = 'Наличие личностных и профессиональных перспектив'
      @descriptions['answer34_4'] = 'Возможность свободного перемещения между странами'
      @descriptions['answer34_5'] = 'Другое'
      @descriptions['answer35_1'] = 'При воспитании ребенка необходимо четко объяснить ему правила поведения и требовать их неукоснительного соблюдения'
      @descriptions['answer35_2'] = 'При воспитании ребенка необходимо прислушиваться к его мнению и по возможности его учитывать'
      @descriptions['answer35_3'] = 'При воспитании ребенка главное - предоставить ему полную свободу, позволить быть самостоятельным'
      @descriptions['answer36_1'] = 'Человек, окончивший высшее учебное заведение'
      @descriptions['answer36_2'] = 'Человек, окончивший школу'
      @descriptions['answer36_3'] = 'Человек, который постоянно совершенствуется духовно'
      @descriptions['answer36_4'] = 'Человек с хорошими манерами и уважающий других людей'
      @descriptions['answer36_5'] = 'Человек, поддерживающий политику руководства страны'
      @descriptions['answer36_6'] = 'Человек, честно выполняющий свое дело'
      @descriptions['answer36_7'] = 'Человек, готовый работать, чтобы содержать семью, растить детей, поддерживать родителей'
      @descriptions['answer36_8'] = 'Человек, готовый отдать жизнь за родину'
      @descriptions['answer36_9'] = 'Верующий человек'
      @descriptions['answer36_10'] = 'Другое '
      @descriptions['answer38_1'] = 'Активный (общаетесь, создаете посты, оставляете комментарии)'
      @descriptions['answer38_2'] = 'Пассивный (только просматриваете новости и ищете необходимую информацию)'
      @descriptions['answer38_3'] = 'Не пользуюсь интернетом'
      @descriptions['answer39_1'] = 'Самостоятельно'
      @descriptions['answer39_2'] = 'Научили собственные дети'
      @descriptions['answer39_3'] = 'Научили братья/сестры'
      @descriptions['answer39_4'] = 'Научили друзья'
      @descriptions['answer39_5'] = 'Научили учителя'
      @descriptions['answer39_6'] = 'Научили ученики'
      @descriptions['answer39_7'] = 'На специальных курсах, с помощью обучающих программ'
      @descriptions['answer39_8'] = 'Другое'
      @descriptions['answer40_1'] = 'Поиск информации для учебы / работы'
      @descriptions['answer40_2'] = 'Использование образовательных порталов, онлайн курсов'
      @descriptions['answer40_3'] = 'Чтение новостей'
      @descriptions['answer40_4'] = 'Просмотр медиа-файлов (фото, видео, музыка, книги)'
      @descriptions['answer40_5'] = 'Скачивание медиа-файлов (фото, видео, музыка, книги'
      @descriptions['answer40_6'] = 'Создание и размещение своего контента (видео, фото, аудио, свой блог)'
      @descriptions['answer40_7'] = 'Создание сайтов, программ, приложений'
      @descriptions['answer40_8'] = 'Знакомство и поиск новых друзей'
      @descriptions['answer40_9'] = 'Общение с друзьями и другими людьми'
      @descriptions['answer40_10'] = 'Участие в сетевых и онлайн играх'
      @descriptions['answer40_11'] = 'Совершение покупок в Интернет-магазине'
      @descriptions['answer40_12'] = 'Поиск предложений по работе/работа в онлайн'
      @descriptions['answer41_1'] = 'Поиск информации для учебы / работы'
      @descriptions['answer41_2'] = 'Использование образовательных порталов, онлайн курсов'
      @descriptions['answer41_3'] = 'Чтение новостей'
      @descriptions['answer41_4'] = 'Просмотр медиа-файлов (фото, видео, музыка, книги)'
      @descriptions['answer41_5'] = 'Скачивание медиа-файлов (фото, видео, музыка, книги'
      @descriptions['answer41_6'] = 'Создание и размещение своего контента (видео, фото, аудио, свой блог)'
      @descriptions['answer41_7'] = 'Создание сайтов, программ, приложений'
      @descriptions['answer41_8'] = 'Знакомство и поиск новых друзей'
      @descriptions['answer41_9'] = 'Общение с друзьями и другими людьми'
      @descriptions['answer41_10'] = 'Участие в сетевых и онлайн играх'
      @descriptions['answer41_11'] = 'Совершение покупок в Интернет-магазине'
      @descriptions['answer41_12'] = 'Поиск предложений по работе/работа в онлайн'
      @descriptions['answer41_13'] = 'Они не пользуются Интернетом'
      @descriptions['answer41_14'] = 'Не знаю, пользуются они Интернетом или нет'
      @descriptions['answer42_1'] = 'Мужской'
      @descriptions['answer42_2'] = 'Женский'
      @descriptions['answer45_1'] = 'село, деревня'
      @descriptions['answer45_2'] = 'небольшой город'
      @descriptions['answer45_3'] = 'областной/краевой центр'
      @descriptions['answer45_4'] = 'мегаполис (большой город)'
      @descriptions['answer46_1'] = 'Менее 3-х лет'
      @descriptions['answer46_2'] = 'От 4-х до 9-ти лет'
      @descriptions['answer46_3'] = 'От 10-ти до 14-ти лет'
      @descriptions['answer46_4'] = 'От 15-ти до 19-ти лет'
      @descriptions['answer46_5'] = 'От 20-ти до 24-х лет'
      @descriptions['answer46_6'] = 'Более 25-ти лет'
      @descriptions['answer47_1'] = 'Директор'
      @descriptions['answer47_2'] = 'Заместитель директора'
      @descriptions['answer47_3'] = 'Учитель'
      @descriptions['answer47_4'] = 'Другое'
      @descriptions['answer49_1'] = '1-4'
      @descriptions['answer49_2'] = '5-9'
      @descriptions['answer49_3'] = '10-11'
    end

  end

end
