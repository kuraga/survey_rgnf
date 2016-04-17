require_relative '../lib/reporters/reporter'

module Children

  class ChildrenReporter < Reporter

    def initialize(data)
      super data

      fill_descriptions
    end

    private

    def fill_descriptions
      @descriptions = {}
      @descriptions['question0'] = '0. Вы:'
      @descriptions['question1'] = '1. Скажи, пожалуйста, есть ли в населенном пункте, в котором ты проживаешь, образовательные учреждения (школы, колледжи, ВУЗы)?'
      @descriptions['question2'] = '2. Укажи, пожалуйста, сколько времени у тебя занимает дорога от дома до школы?'
      @descriptions['question3'] = '3. Уточни, пожалуйста, ты учишься в:'
      @descriptions['question4'] = '4. Какие функции школы, на твой взгляд, являются наиболее важными?'
      @descriptions['question4_additional'] = '4. Какие функции школы, на твой взгляд, являются наиболее важными? (другое)'
      @descriptions['question5'] = '5. Что тебя больше всего привлекает в школьной жизни?'
      @descriptions['question5_additional'] = '5. Что тебя больше всего привлекает в школьной жизни? (другое)'
      @descriptions['question6'] = '6. А что, наоборот, тебе хотелось бы изменить в школьной жизни?'
      @descriptions['question7'] = '7. Как ты думаешь, большинство учителей в современной школе &mdash; это:'
      @descriptions['question7_additional'] = '7. Как ты думаешь, большинство учителей в современной школе &mdash; это: (другое)'
      @descriptions['question8'] = '8. Скажи, пожалуйста, каких качеств, на твой взгляд, не хватает современному учителю?'
      @descriptions['question8_additional'] = '8. Скажи, пожалуйста, каких качеств, на твой взгляд, не хватает современному учителю? (другое)'
      @descriptions['question9'] = '9. Свои отношения с учителями в большинстве случаев ты можешь охарактеризовать как:'
      @descriptions['question10'] = '10. Знаешь/умеешь ли ты что-то, чего не знают/умеют твои учителя? Пожалуйста, уточни, что именно.'
      @descriptions['question11'] = '11. Случалось ли, что учитель просил тебя научить его чему-либо? Пожалуйста, уточни, что именно.'
      @descriptions['question12'] = '12. На твой взгляд, современная школа:'
      @descriptions['question12a'] = '12a. Если в предыдущем вопросе ты ответил(-а) "Нуждается в частичных изменениях", то уточни, пожалуйста, в какой сфере:'
      @descriptions['question12a_additional'] = '12a. Если в предыдущем вопросе ты ответил(-а) "Нуждается в частичных изменениях", то уточни, пожалуйста, в какой сфере: (другое)'
      @descriptions['question13'] = '13. Согласен ли ты с утверждением «В современном мире каждый человек должен получить высшее образование»?'
      @descriptions['question14'] = '14. Если в предыдущем вопросе ты выбрал(-а) вариант ответа «Да», то, пожалуйста, уточни, почему в современном мире каждый человек должен получить высшее образование?'
      @descriptions['question14_additional'] = '14. Если в предыдущем вопросе ты выбрал(-а) вариант ответа «Да», то, пожалуйста, уточни, почему в современном мире каждый человек должен получить высшее образование? (другое)'
      @descriptions['question15'] = '15. В современном мире образование &mdash; это:'
      @descriptions['question15_additional'] = '15. В современном мире образование &mdash; это: (другое)'
      @descriptions['question16'] = '16. Считаешь ли ты, что получаешь в школе качественное образование?'
      @descriptions['question17'] = '17. Если в предыдущем вопросе ты выбрал вариант ответа «Нет», то напиши, пожалуйста, что необходимо сделать, что поднять уровень качества образования?'
      @descriptions['question18'] = '18. От чего зависит уровень образования сегодняшних школьников?'
      @descriptions['question19'] = '19. С чего начинается образование?'
      @descriptions['question20'] = '20. Занимаешься ли ты дополнительно, помимо школы?'
      @descriptions['question21'] = '21. Если в предыдущем вопросе ты выбрал вариант ответа «Да», то укажи, пожалуйста, как именно ты занимаешься дополнительно, помимо школы:'
      @descriptions['question21_additional'] = '21. Если в предыдущем вопросе ты выбрал вариант ответа «Да», то укажи, пожалуйста, как именно ты занимаешься дополнительно, помимо школы: (другое)'
      @descriptions['question22'] = '22. Скажи, пожалуйста, на кого тебе хотелось бы быть больше всего похожим (-жей)?'
      @descriptions['question22_1_additional'] = '22. Скажи, пожалуйста, на кого тебе хотелось бы быть больше всего похожим (-жей)? ("На одного из родственников"; укажи, на кого)'
      @descriptions['question22_2_additional'] = '22. Скажи, пожалуйста, на кого тебе хотелось бы быть больше всего похожим (-жей)? ("На представителя шоу бизнеса (ведущий, певец, актер)"; укажи, на кого)'
      @descriptions['question22_3_additional'] = '22. Скажи, пожалуйста, на кого тебе хотелось бы быть больше всего похожим (-жей)? ("На героя фильма, сериала, книги, компьютерной игры"; укажи, на кого)'
      @descriptions['question22_4_additional'] = '22. Скажи, пожалуйста, на кого тебе хотелось бы быть больше всего похожим (-жей)? ("На спортсмена"; укажи, на кого)'
      @descriptions['question22_additional'] = '22. Скажи, пожалуйста, на кого тебе хотелось бы быть больше всего похожим (-жей)? (другое)'
      @descriptions['question23_1'] = '23-1. Из нижеперечисленных качеств выбери те, которые в наибольшей степени присущи сверстникам'
      @descriptions['question23_2'] = '23-2. Из нижеперечисленных качеств выбери те, которые в наибольшей степени присущи родителям'
      @descriptions['question23_3'] = '23-3. Из нижеперечисленных качеств выбери те, которые в наибольшей степени присущи учителям'
      @descriptions['question24_1'] = '24-1. Какому из перечисленных ниже правил следуют в своей жизни твои родители?'
      @descriptions['question24_2'] = '24-2. Какому из перечисленных ниже правил следуют в своей жизни твои учителя?'
      @descriptions['question24_3'] = '24-3. Какому из перечисленных ниже правил следуешь ты?'
      @descriptions['question25'] = '25. Когда ты станешь взрослым(-ой), что значит, по-твоему, хорошо жить'
      @descriptions['question25_additional'] = '25. Когда ты станешь взрослым(-ой), что значит, по-твоему, хорошо жить (другое)'
      @descriptions['question26'] = '26. Как ты думаешь, что самое главное для всех людей на Земле?'
      @descriptions['question26_additional'] = '26. Как ты думаешь, что самое главное для всех людей на Земле? (другое)'
      @descriptions['question27'] = '27. Считаешь ли ты себя патриотом своей страны?'
      @descriptions['question28'] = '28. Что, прежде всего, внушает тебе чувство гордости за Россию?'
      @descriptions['question28_additional'] = '28. Что, прежде всего, внушает тебе чувство гордости за Россию? (другое)'
      @descriptions['question29'] = '29. Патриоты для тебя &mdash; это:'
      @descriptions['question29_additional'] = '29. Патриоты для тебя &mdash; это: (другое)'
      @descriptions['question30'] = '30. Существует множество точек зрения о современной России. Выбери ту позицию, которая максимально соответствует твоей:'
      @descriptions['question31'] = '31. Если бы у Вас была возможность создать страничку (аккаунт) России в социальной сети, какой бы Вы написали статус?'
      @descriptions['question31_additional'] = '31. Если бы у Вас была возможность создать страничку (аккаунт) России в социальной сети, какой бы Вы написали статус? (другое)'
      @descriptions['question32'] = '32. С каким из предложенных высказываний ты согласишься?'
      @descriptions['question33'] = '33. Считаешь ли ты, что сейчас в России существует свобода слова, мысли, самовыражения?'
      @descriptions['question34'] = '34. Если на предыдущий вопрос ты ответил(-а) "Скорее нет" или "Нет", то уточни, пожалуйста, как ты к этому относишься?'
      @descriptions['question35'] = '35. Хотел бы ты жить в другой стране?'
      @descriptions['question35_1_additional'] = '35. Хотел бы ты жить в другой стране? (да; укажи, в какой)'
      @descriptions['question36'] = '36. Если на предыдущий вопрос ты ответил(-а)  «1. Да, я хотел бы жить в другой стране», то укажи, пожалуйста, почему?'
      @descriptions['question36_additional'] = '36. Если на предыдущий вопрос ты ответил(-а)  «1. Да, я хотел бы жить в другой стране», то укажи, пожалуйста, почему? (другое)'
      @descriptions['question37'] = '37. Какое из суждений наиболее точно отражает твое мнение?'
      @descriptions['question38'] = '38. Укажи, пожалуйста, описание, которое с твоей точки зрения наиболее полно характеризует воспитанного человека.'
      @descriptions['question38_additional'] = '38. Укажи, пожалуйста, описание, которое с твоей точки зрения наиболее полно характеризует воспитанного человека. (другое)'
      @descriptions['question39_1'] = '39-1. Кто, в первую очередь, отвечает за результат воспитания? ("Я сам")'
      @descriptions['question39_2'] = '39-2. Кто, в первую очередь, отвечает за результат воспитания? ("Учителя")'
      @descriptions['question39_3'] = '39-3. Кто, в первую очередь, отвечает за результат воспитания? ("Родители")'
      @descriptions['question39_4'] = '39-4. Кто, в первую очередь, отвечает за результат воспитания? ("Бабушки/дедушки")'
      @descriptions['question39_5'] = '39-5. Кто, в первую очередь, отвечает за результат воспитания? ("Школа")'
      @descriptions['question39_6'] = '39-6. Кто, в первую очередь, отвечает за результат воспитания? ("Общественные организации")'
      @descriptions['question39_7'] = '39-7. Кто, в первую очередь, отвечает за результат воспитания? ("Церковь")'
      @descriptions['question39_8'] = '39-8. Кто, в первую очередь, отвечает за результат воспитания? ("Люди, которых человек выбирает в авторитеты")'
      @descriptions['question40'] = '40. К какому типу пользователей интернетом ты себя относишь?'
      @descriptions['question41'] = '41. Как ты научился(-ась) пользоваться Интернетом?'
      @descriptions['question41_additional'] = '41. Как ты научился(-ась) пользоваться Интернетом? (другое)'
      @descriptions['question42'] = '42. Пожалуйста, выбери, для чего ты чаще всего используешь Интернет?'
      @descriptions['question43'] = '43. Пожалуйста, выбери, для чего чаще всего используют Интернет твои родители?'
      @descriptions['question44'] = '44. Твой пол'
      @descriptions['question45'] = '45. Укажи, пожалуйста, год твоего рождения:'
      @descriptions['question46'] = '46. Укажи, пожалуйста, регион, в котором ты проживаешь:'
      @descriptions['question47'] = '47. Место проживания:'
      @descriptions['question48'] = '48. Твои родители имеют:'
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
      @descriptions['answer5_1'] = 'Уроки/занятия'
      @descriptions['answer5_2'] = 'Внеурочная деятельность (творческие кружки, спортивные секции, научные семинары, экскурсии)'
      @descriptions['answer5_3'] = 'Общение с одноклассниками'
      @descriptions['answer5_4'] = 'Атмосфера школы – товарищество детей, учителей и родителей'
      @descriptions['answer5_5'] = 'Общественная работа'
      @descriptions['answer5_6'] = 'Возможность меньше времени проводить с родителями'
      @descriptions['answer5_7'] = 'Другое'
      @descriptions['answer7_1'] = 'Профессионалы, знающие свой предмет, готовые меняться по мере того, как меняется общество и учащиеся'
      @descriptions['answer7_2'] = 'Профессионалы, знающие свой предмет, но не считающие необходимым менять стиль и содержание образовательной деятельности'
      @descriptions['answer7_3'] = 'Моральные авторитеты, наставники, советчики, с которым я буду сверять свою жизнь и после школы'
      @descriptions['answer7_4'] = 'Люди, вынужденные работать в школе, из-за отсутствия другой работы'
      @descriptions['answer7_5'] = 'Другое'
      @descriptions['answer8_1'] = 'Глубокое знание собственного предмета'
      @descriptions['answer8_2'] = 'Широкая общая эрудиция'
      @descriptions['answer8_3'] = 'Высокие интеллектуальные способности и практические навыки'
      @descriptions['answer8_4'] = 'Умение понятно и наглядно объяснять учебный материал'
      @descriptions['answer8_5'] = 'Лидерские способности'
      @descriptions['answer8_6'] = 'Знание современных информационных технологий'
      @descriptions['answer8_7'] = 'Умение общаться с учащимися, интересоваться их жизнью'
      @descriptions['answer8_8'] = 'Умение общаться с родителями учащихся'
      @descriptions['answer8_9'] = 'Внешняя привлекательность'
      @descriptions['answer8_10'] = 'Постоянное самосовершенствование и самообразование'
      @descriptions['answer8_11'] = 'Знание основных традиций школы'
      @descriptions['answer8_12'] = 'Понимание потребностей и особенностей учащихся'
      @descriptions['answer8_13'] = 'Другое'
      @descriptions['answer9_1'] = 'Товарищеские'
      @descriptions['answer9_2'] = 'Деловые'
      @descriptions['answer9_3'] = 'Зависимые'
      @descriptions['answer9_4'] = 'Состязательные'
      @descriptions['answer9_5'] = 'Враждебные'
      @descriptions['answer9_6'] = 'Со всеми по-разному'
      @descriptions['answer12_1'] = 'Полностью удовлетворяет образовательным потребностям общества'
      @descriptions['answer12_2'] = 'Нуждается в частичных изменениях в сфере, касающейся изучаемых дисциплин (введения новых предметов, возможностей их выбора и др.)'
      @descriptions['answer12_3'] = 'Находится в глубоком кризисе и требует коренных изменений'
      @descriptions['answer12a_1'] = 'изучаемых дисциплин (введения новых предметов, возможностей их выбора и др.)'
      @descriptions['answer12a_2'] = 'методов преподавания'
      @descriptions['answer12a_3'] = 'возрастного состава учителей'
      @descriptions['answer12a_4'] = 'полового состава учителей, соотношения мужчин и женщин'
      @descriptions['answer12a_5'] = 'уровня профессиональной подготовки учителей'
      @descriptions['answer12a_6'] = 'технического оснащения школы'
      @descriptions['answer12a_7'] = 'условий внеурочной деятельности (работы секций, клубов, кружков)'
      @descriptions['answer12a_8'] = 'питания в столовой'
      @descriptions['answer12a_9'] = 'Нуждается в частичных изменениях в другой сфере:'
      @descriptions['answer13_1'] = 'Да'
      @descriptions['answer13_2'] = 'Нет'
      @descriptions['answer14_1'] = 'Это необходимо для получения хорошей работы'
      @descriptions['answer14_2'] = 'Это необходимо для образованного человека'
      @descriptions['answer14_3'] = 'Это престижно'
      @descriptions['answer14_4'] = 'Это требует современное общество'
      @descriptions['answer14_5'] = 'Этого требуют родители'
      @descriptions['answer14_6'] = 'Это формальная необходимость'
      @descriptions['answer14_7'] = 'Другое'
      @descriptions['answer15_1'] = 'Общественное благо'
      @descriptions['answer15_2'] = 'Инвестиция в будущее'
      @descriptions['answer15_3'] = 'Формальная необходимость: наличие аттестата о среднем образовании, диплома о среднем специальном или высшем образовании'
      @descriptions['answer15_4'] = 'Не является благом'
      @descriptions['answer15_5'] = 'Другое'
      @descriptions['answer16_1'] = 'Да'
      @descriptions['answer16_2'] = 'Нет'
      @descriptions['answer18_1'] = 'От образовательного запроса самих школьников'
      @descriptions['answer18_2'] = 'От образовательного запроса и вложений родителей'
      @descriptions['answer18_3'] = 'От школы и учителей'
      @descriptions['answer18_4'] = 'От общественного заказа'
      @descriptions['answer18_5'] = 'От заказа (образовательной политики, инвестиций) государства'
      @descriptions['answer18_6'] = 'От заказа (инвестиций) частного бизнеса (производства, сферы услуг)'
      @descriptions['answer18_7'] = 'От уровня развития и доступности образовательных интернет-ресурсов'
      @descriptions['answer18_8'] = 'От уровня развития всей образовательной системы государства'
      @descriptions['answer19_1'] = 'С первой сказки, услышанной от мамы'
      @descriptions['answer19_2'] = 'С первого мультфильма, увиденного по телевизору'
      @descriptions['answer19_3'] = 'С первого сайта, открытого ребенком в сети'
      @descriptions['answer19_4'] = 'С первой прочитанной книжки'
      @descriptions['answer19_5'] = 'С детского сада'
      @descriptions['answer19_6'] = 'С первого класса школы'
      @descriptions['answer19_7'] = 'С желания самому что-то узнать'
      @descriptions['answer20_1'] = 'Да'
      @descriptions['answer20_2'] = 'Нет'
      @descriptions['answer21_1'] = 'Самостоятельно'
      @descriptions['answer21_2'] = 'С помощью он-лайн курсов'
      @descriptions['answer21_3'] = 'С репетиторами-учителями из своей школы'
      @descriptions['answer21_4'] = 'С репетирами – учителями и преподавателями не из своей школы '
      @descriptions['answer21_5'] = 'С родителями'
      @descriptions['answer21_6'] = 'С друзьями'
      @descriptions['answer21_7'] = 'Другое'
      @descriptions['answer21_8'] = 'В системе дополнительного образования'
      @descriptions['answer21_9'] = 'В детских общественных организациях, неординарнох объединениях, клубах и др.'
      @descriptions['answer22_1'] = 'На одного из родственников'
      @descriptions['answer22_2'] = 'На представителя шоу бизнеса (ведущий, певец, актер)'
      @descriptions['answer22_3'] = 'На героя фильма, сериала, книги, компьютерной игры'
      @descriptions['answer22_4'] = 'На спортсмена'
      @descriptions['answer22_5'] = 'На представителя субкультуры: эмо, панка, гота, хипстера и т. д.'
      @descriptions['answer22_6'] = 'На учителя'
      @descriptions['answer22_7'] = 'На своего друга'
      @descriptions['answer22_8'] = 'Ни на кого, кроме себя'
      @descriptions['answer22_9'] = 'Другое'
      @descriptions['answer23_1_1'] = 'Образованность (широта знаний, высокая общая культура)'
      @descriptions['answer23_1_2'] = 'Воспитанность (хорошие манеры)'
      @descriptions['answer23_1_3'] = 'Рационализм (умение здраво и логично мыслить, принимать обдуманные решения)'
      @descriptions['answer23_1_4'] = 'Хорошие манеры, аккуратность, умение следить за своей внешностью'
      @descriptions['answer23_1_5'] = 'Исполнительность (дисциплинированность)'
      @descriptions['answer23_1_6'] = 'Ответственность (чувство долга, умение держать свое слово)'
      @descriptions['answer23_1_7'] = 'Самоконтроль (сдержанность, самодисциплина)'
      @descriptions['answer23_1_8'] = 'Творческая активность (способность неординарно подходить к решению проблем)'
      @descriptions['answer23_1_9'] = 'Независимость (способность действовать самостоятельно, решительно)'
      @descriptions['answer23_1_10'] = 'Смелость в отстаивании своего мнения, взглядов'
      @descriptions['answer23_1_11'] = 'Непримиримость к недостаткам в себе и других'
      @descriptions['answer23_1_12'] = 'Индивидуализм (ориентация на собственные цели и интересы)'
      @descriptions['answer23_1_13'] = 'Высокие запросы (высокие требования к жизни и высокие притязания)'
      @descriptions['answer23_1_14'] = 'Жизнерадостность (чувство юмора)'
      @descriptions['answer23_1_15'] = 'Умение терпимо относиться к различным взглядам, мнениям, культуре, традициям'
      @descriptions['answer23_2_1'] = 'Образованность (широта знаний, высокая общая культура)'
      @descriptions['answer23_2_2'] = 'Воспитанность (хорошие манеры)'
      @descriptions['answer23_2_3'] = 'Рационализм (умение здраво и логично мыслить, принимать обдуманные решения)'
      @descriptions['answer23_2_4'] = 'Хорошие манеры, аккуратность, умение следить за своей внешностью'
      @descriptions['answer23_2_5'] = 'Исполнительность (дисциплинированность)'
      @descriptions['answer23_2_6'] = 'Ответственность (чувство долга, умение держать свое слово)'
      @descriptions['answer23_2_7'] = 'Самоконтроль (сдержанность, самодисциплина)'
      @descriptions['answer23_2_8'] = 'Творческая активность (способность неординарно подходить к решению проблем)'
      @descriptions['answer23_2_9'] = 'Независимость (способность действовать самостоятельно, решительно)'
      @descriptions['answer23_2_10'] = 'Смелость в отстаивании своего мнения, взглядов'
      @descriptions['answer23_2_11'] = 'Непримиримость к недостаткам в себе и других'
      @descriptions['answer23_2_12'] = 'Индивидуализм (ориентация на собственные цели и интересы)'
      @descriptions['answer23_2_13'] = 'Высокие запросы (высокие требования к жизни и высокие притязания)'
      @descriptions['answer23_2_14'] = 'Жизнерадостность (чувство юмора)'
      @descriptions['answer23_2_15'] = 'Умение терпимо относиться к различным взглядам, мнениям, культуре, традициям'
      @descriptions['answer23_3_1'] = 'Образованность (широта знаний, высокая общая культура)'
      @descriptions['answer23_3_2'] = 'Воспитанность (хорошие манеры)'
      @descriptions['answer23_3_3'] = 'Рационализм (умение здраво и логично мыслить, принимать обдуманные решения)'
      @descriptions['answer23_3_4'] = 'Хорошие манеры, аккуратность, умение следить за своей внешностью'
      @descriptions['answer23_3_5'] = 'Исполнительность (дисциплинированность)'
      @descriptions['answer23_3_6'] = 'Ответственность (чувство долга, умение держать свое слово)'
      @descriptions['answer23_3_7'] = 'Самоконтроль (сдержанность, самодисциплина)'
      @descriptions['answer23_3_8'] = 'Творческая активность (способность неординарно подходить к решению проблем)'
      @descriptions['answer23_3_9'] = 'Независимость (способность действовать самостоятельно, решительно)'
      @descriptions['answer23_3_10'] = 'Смелость в отстаивании своего мнения, взглядов'
      @descriptions['answer23_3_11'] = 'Непримиримость к недостаткам в себе и других'
      @descriptions['answer23_3_12'] = 'Индивидуализм (ориентация на собственные цели и интересы)'
      @descriptions['answer23_3_13'] = 'Высокие запросы (высокие требования к жизни и высокие притязания)'
      @descriptions['answer23_3_14'] = 'Жизнерадостность (чувство юмора)'
      @descriptions['answer23_3_15'] = 'Умение терпимо относиться к различным взглядам, мнениям, культуре, традициям'
      @descriptions['answer24_1_1'] = '«Быть как все, не выделяться»'
      @descriptions['answer24_1_2'] = '«Моя хата с краю, я ничего не знаю»'
      @descriptions['answer24_1_3'] = '«Есть только мое мнение, и оно всегда правильное»'
      @descriptions['answer24_1_4'] = '«Все решают деньги»'
      @descriptions['answer24_1_5'] = '«Кто сильнее, тот прав»'
      @descriptions['answer24_1_6'] = '«Надо слушаться старших - они правы всегда»'
      @descriptions['answer24_1_7'] = '«Имею право»'
      @descriptions['answer24_1_8'] = '«Худой мир лучше доброй ссоры»'
      @descriptions['answer24_1_9'] = '«Не имей сто рублей, а имей сто друзей»'
      @descriptions['answer24_1_10'] = '«Уважай мнение другого»'
      @descriptions['answer24_1_11'] = '«Кто, если не мы»'
      @descriptions['answer24_1_12'] = '«Быть самим собой»'
      @descriptions['answer24_2_1'] = '«Быть как все, не выделяться»'
      @descriptions['answer24_2_2'] = '«Моя хата с краю, я ничего не знаю»'
      @descriptions['answer24_2_3'] = '«Есть только мое мнение, и оно всегда правильное»'
      @descriptions['answer24_2_4'] = '«Все решают деньги»'
      @descriptions['answer24_2_5'] = '«Кто сильнее, тот прав»'
      @descriptions['answer24_2_6'] = '«Надо слушаться старших - они правы всегда»'
      @descriptions['answer24_2_7'] = '«Имею право»'
      @descriptions['answer24_2_8'] = '«Худой мир лучше доброй ссоры»'
      @descriptions['answer24_2_9'] = '«Не имей сто рублей, а имей сто друзей»'
      @descriptions['answer24_2_10'] = '«Уважай мнение другого»'
      @descriptions['answer24_2_11'] = '«Кто, если не мы»'
      @descriptions['answer24_2_12'] = '«Быть самим собой»'
      @descriptions['answer24_3_1'] = '«Быть как все, не выделяться»'
      @descriptions['answer24_3_2'] = '«Моя хата с краю, я ничего не знаю»'
      @descriptions['answer24_3_3'] = '«Есть только мое мнение, и оно всегда правильное»'
      @descriptions['answer24_3_4'] = '«Все решают деньги»'
      @descriptions['answer24_3_5'] = '«Кто сильнее, тот прав»'
      @descriptions['answer24_3_6'] = '«Надо слушаться старших - они правы всегда»'
      @descriptions['answer24_3_7'] = '«Имею право»'
      @descriptions['answer24_3_8'] = '«Худой мир лучше доброй ссоры»'
      @descriptions['answer24_3_9'] = '«Не имей сто рублей, а имей сто друзей»'
      @descriptions['answer24_3_10'] = '«Уважай мнение другого»'
      @descriptions['answer24_3_11'] = '«Кто, если не мы»'
      @descriptions['answer24_3_12'] = '«Быть самим собой»'
      @descriptions['answer25_1'] = 'Иметь возможность помогать людям, быть полезным, работать для общества'
      @descriptions['answer25_2'] = 'Иметь интересную работу'
      @descriptions['answer25_3'] = 'Иметь возможность для саморазвития'
      @descriptions['answer25_4'] = 'Иметь много денег, чтобы ни в чем не нуждаться'
      @descriptions['answer25_5'] = 'Иметь возможность купить машину, квартиру, дом'
      @descriptions['answer25_6'] = 'Иметь возможность хорошо одеваться и питаться'
      @descriptions['answer25_7'] = 'Иметь возможность веселиться и развлекаться'
      @descriptions['answer25_8'] = 'Иметь возможность обеспечивать семью, помогать родителям'
      @descriptions['answer25_9'] = 'Иметь возможность много путешествовать и общаться с интересными людьми'
      @descriptions['answer25_10'] = 'Быть известным, прославленным, популярным человеком'
      @descriptions['answer25_11'] = 'Иметь возможность совсем не работать'
      @descriptions['answer25_12'] = 'Быть честным гражданином и не обязательно быть богатым и знаменитым'
      @descriptions['answer25_13'] = 'Жить в стране, где нет войны, нищеты, несправедливости'
      @descriptions['answer25_14'] = 'Иметь крепкое здоровье, не болеть'
      @descriptions['answer25_15'] = 'Иметь семью и надежных друзей'
      @descriptions['answer25_16'] = 'Другое'
      @descriptions['answer26_1'] = 'Развивать научные знания и новые технологии'
      @descriptions['answer26_2'] = 'Развивать культуру и искусство'
      @descriptions['answer26_3'] = 'Поддерживать церковь, религию'
      @descriptions['answer26_4'] = 'Не допустить мировой, глобальной войны'
      @descriptions['answer26_5'] = 'Жить дружно, не враждовать, а сотрудничать'
      @descriptions['answer26_6'] = 'Жить по законам равенства и справедливости'
      @descriptions['answer26_7'] = 'Избавиться от нищеты и голода, который уносит жизни во многих странах мира'
      @descriptions['answer26_8'] = 'Справиться с болезнями и эпидемиями'
      @descriptions['answer26_9'] = 'Заботиться об окружающей среде, защищать ее от уничтожения'
      @descriptions['answer26_10'] = 'Другое'
      @descriptions['answer27_1'] = 'Да, конечно'
      @descriptions['answer27_2'] = 'Скорее да'
      @descriptions['answer27_3'] = 'Скорее нет'
      @descriptions['answer27_4'] = 'Нет'
      @descriptions['answer28_1'] = 'Размеры страны'
      @descriptions['answer28_2'] = 'Природные богатства'
      @descriptions['answer28_3'] = 'История нашего государства'
      @descriptions['answer28_4'] = 'Культура нашего государства'
      @descriptions['answer28_5'] = 'Положение России на международной арене'
      @descriptions['answer28_6'] = 'Вооруженные силы'
      @descriptions['answer28_7'] = 'Экономические успехи'
      @descriptions['answer28_8'] = 'Достижения российской науки'
      @descriptions['answer28_9'] = 'Спортивные достижения'
      @descriptions['answer28_10'] = 'Система российского образования'
      @descriptions['answer28_11'] = 'Система здравоохранения'
      @descriptions['answer28_12'] = 'Сограждане'
      @descriptions['answer28_13'] = 'Другое'
      @descriptions['answer29_1'] = 'Участники ежегодных молодежных форумов ("Селигер", "Таврида","Территория смылов на Клязьме")'
      @descriptions['answer29_2'] = '"Ночные волки"'
      @descriptions['answer29_3'] = 'Добровольцы в Донбассе'
      @descriptions['answer29_4'] = 'Спортсмены, выступающие за Россию'
      @descriptions['answer29_5'] = 'Ученые, достижения которых вносят вклад в развитие современной цивилизации'
      @descriptions['answer29_6'] = 'Художники, актеры, режиссеры, прославляющие Россию'
      @descriptions['answer29_7'] = 'Военные, защищающие безопасность страны'
      @descriptions['answer29_8'] = 'Люди, работающие в опасных для жизни сферах (сотрудники МЧС, пожарные, полицейские)'
      @descriptions['answer29_9'] = 'Люди, отличающиеся высокой квалификацией (рабочие, учителя, врачи и т.д.)'
      @descriptions['answer29_10'] = 'Люди, готовые отдать жизнь за Родину'
      @descriptions['answer29_11'] = 'Бизнесмены, создающие рабочие места и регулярно выплачивающие налоги'
      @descriptions['answer29_12'] = 'Политики'
      @descriptions['answer29_13'] = 'Родители, вырастившие достойных детей'
      @descriptions['answer29_14'] = 'Другое'
      @descriptions['answer30_1'] = 'Наша страна является полноправным членом международных отношений и способна оказывать влияние на принимаемые решения. Нас знают и уважают во всем мире'
      @descriptions['answer30_2'] = 'Наша страна является полноправным членом международных отношений и способна оказывать влияние на принимаемые решения, но переживает временный кризис'
      @descriptions['answer30_3'] = 'У нашей страны свой путь в мире, она вынуждена противостоять внешней агрессии, чтобы сохранить свой особенный путь'
      @descriptions['answer30_4'] = 'Наша страна не является полноправным членом международных отношений и не способна оказывать влияние на принимаемые решения. С нами не считаются.'
      @descriptions['answer31_1'] = ''
      @descriptions['answer31_2'] = 'Простите, я не понимаю, о чем речь'
      @descriptions['answer32_1'] = 'Знать историю своей родины необходимо, без этого нельзя понять сегодняшнюю жизнь'
      @descriptions['answer32_2'] = 'Историю Родины знать полезно, но не обязательно'
      @descriptions['answer32_3'] = 'Знать прошлое совсем необязательно, лучше думать о настоящем и будущем'
      @descriptions['answer33_1'] = 'Да, конечно'
      @descriptions['answer33_2'] = 'Скорее да'
      @descriptions['answer33_3'] = 'Скорее нет'
      @descriptions['answer33_4'] = 'Нет'
      @descriptions['answer34_1'] = 'Положительно'
      @descriptions['answer34_2'] = 'Нейтрально'
      @descriptions['answer34_3'] = 'Отрицательно'
      @descriptions['answer35_1'] = 'Да'
      @descriptions['answer35_2'] = 'Скорее да'
      @descriptions['answer35_3'] = 'Скорее нет'
      @descriptions['answer35_4'] = 'Нет'
      @descriptions['answer36_1'] = 'Высокий уровень жизни'
      @descriptions['answer36_2'] = 'Высокое качество образования'
      @descriptions['answer36_3'] = 'Наличие личностных и профессиональных перспектив'
      @descriptions['answer36_4'] = 'Возможность свободного перемещения между странами'
      @descriptions['answer36_5'] = 'Другое'
      @descriptions['answer37_1'] = 'При воспитании ребенка необходимо четко объяснить ему правила поведения и требовать их неукоснительного соблюдения'
      @descriptions['answer37_2'] = 'При воспитании ребенка необходимо прислушиваться к его мнению и по возможности его учитывать'
      @descriptions['answer37_3'] = 'При воспитании ребенка главное - предоставить ему полную свободу, позволить быть самостоятельным'
      @descriptions['answer38_1'] = 'Человек, окончивший высшее учебное заведение'
      @descriptions['answer38_2'] = 'Человек, окончивший школу'
      @descriptions['answer38_3'] = 'Человек, который постоянно совершенствуется духовно'
      @descriptions['answer38_4'] = 'Человек с хорошими манерами и уважающий других людей'
      @descriptions['answer38_5'] = 'Человек, поддерживающий политику руководства страны'
      @descriptions['answer38_6'] = 'Человек, честно выполняющий свое дело'
      @descriptions['answer38_7'] = 'Человек, готовый работать, чтобы содержать семью, растить детей, поддерживать родителей'
      @descriptions['answer38_8'] = 'Человек, готовый отдать жизнь за родину'
      @descriptions['answer38_9'] = 'Верующий человек'
      @descriptions['answer38_10'] = 'Другое'
      @descriptions['answer40_1'] = 'Активный (общаешься, создаешь посты, оставляешь комментарии)'
      @descriptions['answer40_2'] = 'Пассивный (только просматриваешь новости и ищешь необходимую информацию)'
      @descriptions['answer40_3'] = 'Не пользуюсь интернетом'
      @descriptions['answer41_1'] = 'Самостоятельно'
      @descriptions['answer41_2'] = 'Научили учителя'
      @descriptions['answer41_3'] = 'Научили родители'
      @descriptions['answer41_4'] = 'Научили друзья'
      @descriptions['answer41_5'] = 'Научили братья/сестры'
      @descriptions['answer41_6'] = 'На специальных курсах, с помощью обучающих программ'
      @descriptions['answer41_7'] = 'Другое'
      @descriptions['answer42_1'] = 'Поиск информации для учебы / работы'
      @descriptions['answer42_2'] = 'Использование образовательных порталов, онлайн курсов'
      @descriptions['answer42_3'] = 'Чтение новостей'
      @descriptions['answer42_4'] = 'Просмотр медиа-файлов (фото, видео, музыка, книги)'
      @descriptions['answer42_5'] = 'Скачивание медиа-файлов (фото, видео, музыка, книги'
      @descriptions['answer42_6'] = 'Создание и размещение своего контента (видео, фото, аудио, свой блог)'
      @descriptions['answer42_7'] = 'Создание сайтов, программ, приложений'
      @descriptions['answer42_8'] = 'Знакомство и поиск новых друзей'
      @descriptions['answer42_9'] = 'Общение с друзьями и другими людьми'
      @descriptions['answer42_10'] = 'Участие в сетевых и онлайн играх'
      @descriptions['answer42_11'] = 'Совершение покупок в Интернет-магазине'
      @descriptions['answer42_12'] = 'Поиск предложений по работе/работа в онлайн'
      @descriptions['answer43_1'] = 'Поиск информации для учебы / работы'
      @descriptions['answer43_2'] = 'Использование образовательных порталов, онлайн курсов'
      @descriptions['answer43_3'] = 'Чтение новостей'
      @descriptions['answer43_4'] = 'Просмотр медиа-файлов (фото, видео, музыка, книги)'
      @descriptions['answer43_5'] = 'Скачивание медиа-файлов (фото, видео, музыка, книги'
      @descriptions['answer43_6'] = 'Создание и размещение своего контента (видео, фото, аудио, свой блог)'
      @descriptions['answer43_7'] = 'Создание сайтов, программ, приложений'
      @descriptions['answer43_8'] = 'Знакомство и поиск новых друзей'
      @descriptions['answer43_9'] = 'Общение с друзьями и другими людьми'
      @descriptions['answer43_10'] = 'Участие в сетевых и онлайн играх'
      @descriptions['answer43_11'] = 'Совершение покупок в Интернет-магазине'
      @descriptions['answer43_12'] = 'Поиск предложений по работе/работа в онлайн'
      @descriptions['answer43_13'] = 'Они не пользуются Интернетом'
      @descriptions['answer43_14'] = 'Не знаю, пользуются они Интернетом или нет'
      @descriptions['answer44_1'] = 'Мужской'
      @descriptions['answer44_2'] = 'Женский'
      @descriptions['answer47_1'] = 'село, деревня'
      @descriptions['answer47_2'] = 'небольшой город'
      @descriptions['answer47_3'] = 'областной/краевой центр'
      @descriptions['answer47_4'] = 'мегаполис (большой город)'
      @descriptions['answer48_1'] = 'Неполное среднее образование (9 классов)'
      @descriptions['answer48_2'] = 'Полное среднее образование (11 классов)'
      @descriptions['answer48_3'] = 'Среднее специальное образование (колледж, техникум, училище)'
      @descriptions['answer48_4'] = 'Высшее образование (университет, институт)'
      @descriptions['answer48_5'] = 'Имеют ученую степень/MBA'
    end

  end

end
