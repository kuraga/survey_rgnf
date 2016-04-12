require_relative '../lib/reporters/reporter'

module Comparings

  class ComparingReporter < Reporter

    def initialize(data)
      super data

      fill_descriptions
    end

    private

    def fill_descriptions
      @descriptions = {}
      @descriptions['question0'] = '0. Вы:'
      @descriptions['questionA'] = 'A. Укажите, пожалуйста, год Вашего рождения:'
      @descriptions['questionA1'] = 'A1. Ваше поколение:'
      @descriptions['questionB'] = 'B. Ваш пол:'
      @descriptions['questionC'] = 'C. Укажите, пожалуйста, регион, в котором Вы проживаете:'
      @descriptions['questionD'] = 'D. Место проживания:'
      @descriptions['questionE'] = 'E. Укажите, пожалуйста, сколько времени у Вас занимает дорога от дома до школы?'
      @descriptions['questionF'] = 'F. Какие функции школы, на Ваш взгляд, являются наиболее важными?'
      @descriptions['questionF_additional'] = 'F. Какие функции школы, на Ваш взгляд, являются наиболее важными? (другое)'
      @descriptions['questionG'] = 'G. Большинство учителей в современной школе &mdash; это:'
      @descriptions['questionG_additional'] = 'G. Большинство учителей в современной школе &mdash; это: (другое)'
      @descriptions['questionH'] = 'H. Скажите, пожалуйста, каких качеств, на Ваш взгляд, не хватает современному учителю?'
      @descriptions['questionH_additional'] = 'H. Скажите, пожалуйста, каких качеств, на Ваш взгляд, не хватает современному учителю? (другое)'
      @descriptions['questionI'] = 'I. Знают (умеют) ли Ваши учителя/ученики/ребенок что-то, чего не знаете (умеете( Вы?'
      @descriptions['questionJ'] = 'J. На Ваш взгляд, современная школа:'
      @descriptions['questionK'] = 'K. Если в предыдущем вопросе Вы ответили "Нуждается в частичных изменениях", то уточните, пожалуйста, в какой сфере:'
      @descriptions['questionK_additional'] = 'K. Если в предыдущем вопросе Вы ответили "Нуждается в частичных изменениях", то уточните, пожалуйста, в какой сфере: (другое)'
      @descriptions['questionL'] = 'L. Согласны ли Вы с утверждением «В современном мире каждый человек должен получить высшее образование»?'
      @descriptions['questionM'] = 'M. Если в предыдущем вопросе Вы выбрали вариант ответа «Да», то, пожалуйста, уточните, почему в современном мире каждый человек должен получить высшее образование?'
      @descriptions['questionM_additional'] = 'M. Если в предыдущем вопросе Вы выбрали вариант ответа «Да», то, пожалуйста, уточните, почему в современном мире каждый человек должен получить высшее образование? (другое)'
      @descriptions['questionN'] = 'N. В современном мире образование &mdash; это:'
      @descriptions['questionN_additional'] = 'N. В современном мире образование &mdash; это: (другое)'
      @descriptions['questionO'] = 'O. Считаете ли Вы, что в школе получают качественное образование?'
      @descriptions['questionP'] = 'P. Если в предыдущем вопросе Вы выбрали вариант ответа «Нет», то напишите, пожалуйста, что необходимо сделать, что поднять уровень качества образования?'
      @descriptions['questionQ'] = 'Q. От чего зависит уровень образования сегодняшних школьников?'
      @descriptions['questionR'] = 'R. С чего начинается образование?'
      @descriptions['questionS'] = 'S. Занимаются ли ты/Ваш ребенок/Ваши ученики дополнительно, помимо школы?'
      @descriptions['questionT'] = 'T. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве?'
      @descriptions['questionT_1_additional'] = 'T. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На одного из родственников"; укажи, на кого)'
      @descriptions['questionT_2_additional'] = 'T. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На представителя шоу бизнеса (ведущий, певец, актер)"; укажи, на кого)'
      @descriptions['questionT_3_additional'] = 'T. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На героя фильма, сериала, книги, компьютерной игры"; укажи, на кого)'
      @descriptions['questionT_4_additional'] = 'T. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего похожим (-жей) в детстве? ("На спортсмена"; укажи, на кого)'
      @descriptions['questionT_additional'] = 'T. Вспомните, пожалуйста, на кого Вам хотелось быть больше всего  похожим (-жей) в детстве? (другое)'
      @descriptions['questionU'] = 'U-1. Укажите, какие из нижеперечисленных качеств в наибольшей степени присущи Вам.'
      @descriptions['questionV'] = 'V-1. Какому из перечисленных ниже правил Вы следуюте в своей жизни?'
      @descriptions['questionW'] = 'W. Что для Вас значит хорошо жить?'
      @descriptions['questionW_additional'] = 'W. Что для Вас значит хорошо жить? (другое)'
      @descriptions['questionX'] = 'X. Как Вы думаете, что самое главное для всех людей на Земле?'
      @descriptions['questionX_additional'] = 'X. Как Вы думаете, что самое главное для всех людей на Земле? (другое)'
      @descriptions['questionY'] = 'Y. Считаете ли Вы себя патриотом своей страны?  '
      @descriptions['questionZ'] = 'Z. Что, прежде всего, внушает Вам чувство гордости за Россию?'
      @descriptions['questionZ_additional'] = 'Z. Что, прежде всего, внушает Вам чувство гордости за Россию? (другое)'
      @descriptions['questionAA'] = 'AA. Патриоты для Вас &mdash; это:'
      @descriptions['questionAA_additional'] = 'AA. Патриоты для Вас &mdash; это: (другое)'
      @descriptions['questionAB'] = 'AB. Существует множество точек зрения о современной России. Выберите ту позицию, которая максимально соответствует Вашей:'
      @descriptions['questionAC'] = 'AC. Если бы у Вас была возможность создать страничку (аккаунт) России в социальной сети, какой бы Вы написали статус?'
      @descriptions['questionAC_additional'] = 'AC. Если бы у Вас была возможность создать страничку (аккаунт) России в социальной сети, какой бы Вы написали статус? (другое)'
      @descriptions['questionAD'] = 'AD. С каким из предложенных высказываний Вы согласитесь?'
      @descriptions['questionAE'] = 'AE. Считаете ли Вы, что сейчас в России существует свобода слова, мысли, самовыражения?'
      @descriptions['questionAF'] = 'AF. Если на предыдущий вопрос Вы ответили "Скорее нет" или "Нет", то уточните, пожалуйста, как Вы к этому относитесь?'
      @descriptions['questionAG'] = 'AG. Хотели бы Вы жить в другой стране?'
      @descriptions['questionAG_additional'] = 'AG. Хотели бы Вы жить в другой стране? (да; укажите, в какой)'
      @descriptions['questionAH'] = 'AH. Если на предыдущий вопрос Вы ответили  «Да, я хотел бы жить в другой стране», то укажите, пожалуйста, почему?'
      @descriptions['questionAH_additional'] = 'AH. Если на предыдущий вопрос Вы ответили  «Да, я хотел бы жить в другой стране», то укажите, пожалуйста, почему? (другое)'
      @descriptions['questionAI'] = 'AI. Какое из суждений наиболее точно отражает Ваше мнение?'
      @descriptions['questionAJ'] = 'AJ. Укажите, пожалуйста, описание, которое с Вашей точки зрения наиболее полно характеризует воспитанного человека.'
      @descriptions['questionAJ_additional'] = 'AJ. Укажите, пожалуйста, описание, которое с Вашей точки зрения наиболее полно характеризует воспитанного человека. (другое)'
      @descriptions['questionAK_2'] = 'AK-2. Кто, в первую очередь, отвечает за результат воспитания? ("Я сам" / "Сам ребенок")'
      @descriptions['questionAK_3'] = 'AK-3. Кто, в первую очередь, отвечает за результат воспитания? ("Родители")'
      @descriptions['questionAK_4'] = 'AK-4. Кто, в первую очередь, отвечает за результат воспитания? ("Бабушки/дедушки")'
      @descriptions['questionAK_5'] = 'AK-5. Кто, в первую очередь, отвечает за результат воспитания? ("Школа")'
      @descriptions['questionAK_6'] = 'AK-6. Кто, в первую очередь, отвечает за результат воспитания? ("Общественные организации")'
      @descriptions['questionAK_7'] = 'AK-7. Кто, в первую очередь, отвечает за результат воспитания? ("Церковь")'
      @descriptions['questionAK_8'] = 'AK-8. Кто, в первую очередь, отвечает за результат воспитания? ("Люди, которых человек выбирает в авторитеты")'
      @descriptions['questionAL'] = 'AL. К какому типу пользователей интернетом Вы себя относите?'
      @descriptions['questionAM'] = 'AM. Как Вы научились пользоваться Интернетом?'
      @descriptions['questionAM_additional'] = 'AM. Как Вы научились пользоваться Интернетом? (другое)'
      @descriptions['questionAN'] = 'AN. Пожалуйста, выберите, для чего Вы чаще всего используете Интернет?'
      @descriptions['questionAO'] = 'AO. Пожалуйста, выберите, для чего чаще всего используют Интернет Ваши ученики?'
      @descriptions['answer0_1'] = 'Школьник'
      @descriptions['answer0_2'] = 'Учитель'
      @descriptions['answer0_3'] = 'Родитель'
      @descriptions['answerA1_1'] = 'GG'
      @descriptions['answerA1_2'] = 'GS'
      @descriptions['answerA1_3'] = 'BB'
      @descriptions['answerA1_4'] = 'X'
      @descriptions['answerA1_5'] = 'Y'
      @descriptions['answerA1_6'] = 'Z'
      @descriptions['answerB_1'] = 'Мужской'
      @descriptions['answerB_2'] = 'Женский'
      @descriptions['answerD_1'] = 'село, деревня'
      @descriptions['answerD_2'] = 'небольшой город'
      @descriptions['answerD_3'] = 'областной/краевой центр'
      @descriptions['answerD_4'] = 'мегаполис (большой город)'
      @descriptions['answerE_1'] = 'Менее 15 минут'
      @descriptions['answerE_2'] = 'Менее 30 минут'
      @descriptions['answerE_3'] = '30 минут &mdash; 1 час'
      @descriptions['answerE_4'] = 'Более 1 часа'
      @descriptions['answerF_1'] = 'Организация деятельности по овладению знаниями, умениями, навыками и компетенциями'
      @descriptions['answerF_2'] = 'Создание условий для обеспечения прав и свобод ребенка, включая ответственный выбор способа реализации его образовательной потребности'
      @descriptions['answerF_3'] = 'Формирование мотивации получения образования в течение всей жизни'
      @descriptions['answerF_4'] = 'Формирование общей культуры личности'
      @descriptions['answerF_5'] = 'Формирование гражданской позиции, трудолюбия, уважения к правам и свободам человека, Родине, семье'
      @descriptions['answerF_6'] = 'Формирование культуры здорового и безопасного образа жизни'
      @descriptions['answerF_7'] = 'Формирование дисциплины и самоорганизации'
      @descriptions['answerF_8'] = 'Создание условий для социализации на основе социокультурных, духовно-нравственных ценностей и принятых в обществе правил и норм поведения'
      @descriptions['answerF_9'] = 'Обеспечение условий для самоопределения и развития творческой личности'
      @descriptions['answerF_10'] = 'Другое'
      @descriptions['answerG_1'] = 'Профессионалы, знающие свой предмет, готовые меняться по мере того, как меняется общество и учащиеся'
      @descriptions['answerG_2'] = 'Профессионалы, знающие свой предмет, но не считающие необходимым менять стиль и содержание образовательной деятельности'
      @descriptions['answerG_3'] = 'Моральные авторитеты, наставники, советчики, с которыми ученики будут сверять свою жизнь и после школы'
      @descriptions['answerG_4'] = 'Люди, вынужденные работать в школе, из-за отсутствия другой работы'
      @descriptions['answerG_5'] = 'Другое'
      @descriptions['answerH_1'] = 'Глубокое знание собственного предмета'
      @descriptions['answerH_2'] = 'Широкая общая эрудиция'
      @descriptions['answerH_3'] = 'Высокие интеллектуальные способности и практические навыки'
      @descriptions['answerH_4'] = 'Умение понятно и наглядно объяснять учебный материал'
      @descriptions['answerH_5'] = 'Лидерские способности'
      @descriptions['answerH_6'] = 'Знание современных информационных технологий'
      @descriptions['answerH_7'] = 'Умение общаться с учащимися, интересоваться их жизнью'
      @descriptions['answerH_8'] = 'Умение общаться с родителями учащихся'
      @descriptions['answerH_9'] = 'Внешняя привлекательность'
      @descriptions['answerH_10'] = 'Постоянное самосовершенствование и самообразование'
      @descriptions['answerH_11'] = 'Знание основных традиций школы'
      @descriptions['answerH_12'] = 'Понимание потребностей и особенностей учащихся'
      @descriptions['answerH_13'] = 'Другое'
      @descriptions['answerJ_1'] = 'Полностью удовлетворяет образовательным потребностям общества'
      @descriptions['answerJ_2'] = 'Нуждается в частичных изменениях в сфере, касающейся изучаемых дисциплин (введения новых предметов, возможностей их выбора и др.)'
      @descriptions['answerJ_3'] = 'Находится в глубоком кризисе и требует коренных изменений'
      @descriptions['answerK_1'] = 'изучаемых дисциплин (введения новых предметов, возможностей их выбора и др.)'
      @descriptions['answerK_2'] = 'методов преподавания'
      @descriptions['answerK_3'] = 'возрастного состава учителей'
      @descriptions['answerK_4'] = 'полового состава учителей, соотношения мужчин и женщин'
      @descriptions['answerK_5'] = 'уровня профессиональной подготовки учителей'
      @descriptions['answerK_6'] = 'технического оснащения школы'
      @descriptions['answerK_7'] = 'условий внеурочной деятельности (работы секций, клубов, кружков)'
      @descriptions['answerK_8'] = 'питания в столовой'
      @descriptions['answerK_9'] = 'Нуждается в частичных изменениях в другой сфере:'
      @descriptions['answerL_1'] = 'Да'
      @descriptions['answerL_2'] = 'Нет'
      @descriptions['answerM_1'] = 'Это необходимо для получения хорошей работы'
      @descriptions['answerM_2'] = 'Это необходимо для образованного человека'
      @descriptions['answerM_3'] = 'Это престижно'
      @descriptions['answerM_4'] = 'Это требует современное общество'
      @descriptions['answerM_5'] = 'Этого требуют родители'
      @descriptions['answerM_6'] = 'Это формальная необходимость'
      @descriptions['answerM_7'] = 'Другое'
      @descriptions['answerN_1'] = 'Общественное благо'
      @descriptions['answerN_2'] = 'Инвестиция в будущее'
      @descriptions['answerN_3'] = 'Формальная необходимость: наличие аттестата о среднем образовании, диплома о среднем специальном или высшем образовании'
      @descriptions['answerN_4'] = 'Не является благом'
      @descriptions['answerN_5'] = 'Другое'
      @descriptions['answerO_1'] = 'Да'
      @descriptions['answerO_2'] = 'Нет'
      @descriptions['answerQ_1'] = 'От образовательного запроса самих школьников'
      @descriptions['answerQ_2'] = 'От образовательного запроса и вложений родителей'
      @descriptions['answerQ_3'] = 'От школы и учителей'
      @descriptions['answerQ_4'] = 'От общественного заказа'
      @descriptions['answerQ_5'] = 'От заказа (образовательной политики, инвестиций) государства'
      @descriptions['answerQ_6'] = 'От заказа (инвестиций) частного бизнеса (производства, сферы услуг)'
      @descriptions['answerQ_7'] = 'От уровня развития и доступности образовательных интернет-ресурсов'
      @descriptions['answerQ_8'] = 'От уровня развития всей образовательной системы государства'
      @descriptions['answerR_1'] = 'С первой сказки, услышанной от мамы'
      @descriptions['answerR_2'] = 'С первого мультфильма, увиденного по телевизору'
      @descriptions['answerR_3'] = 'С первого сайта, открытого ребенком в сети'
      @descriptions['answerR_4'] = 'С первой прочитанной книжки'
      @descriptions['answerR_5'] = 'С детского сада'
      @descriptions['answerR_6'] = 'С первого класса школы'
      @descriptions['answerR_7'] = 'С желания самому что-то узнать'
      @descriptions['answerS_1'] = 'Да'
      @descriptions['answerS_2'] = 'Нет'
      @descriptions['answerS_3'] = 'Затрудняюсь ответить'
      @descriptions['answerT_1'] = 'На одного из родственников'
      @descriptions['answerT_2'] = 'На представителя шоу бизнеса (ведущий, певец, актер)'
      @descriptions['answerT_3'] = 'На героя фильма, сериала, книги, компьютерной игры'
      @descriptions['answerT_4'] = 'На спортсмена'
      @descriptions['answerT_5'] = 'На представителя субкультуры: эмо, панка, гота, хипстера и т. д.'
      @descriptions['answerT_6'] = 'На учителя'
      @descriptions['answerT_7'] = 'На своего друга'
      @descriptions['answerT_8'] = 'Ни на кого, кроме себя'
      @descriptions['answerT_9'] = 'Другое'
      @descriptions['answerU_1'] = 'Образованность (широта знаний, высокая общая культура)'
      @descriptions['answerU_2'] = 'Воспитанность (хорошие манеры)'
      @descriptions['answerU_3'] = 'Рационализм (умение здраво и логично мыслить, принимать обдуманные решения)'
      @descriptions['answerU_4'] = 'Хорошие манеры, аккуратность, умение следить за своей внешностью'
      @descriptions['answerU_5'] = 'Исполнительность (дисциплинированность)'
      @descriptions['answerU_6'] = 'Ответственность (чувство долга, умение держать свое слово)'
      @descriptions['answerU_7'] = 'Самоконтроль (сдержанность, самодисциплина)'
      @descriptions['answerU_8'] = 'Творческая активность (способность неординарно подходить к решению проблем)'
      @descriptions['answerU_9'] = 'Независимость (способность действовать самостоятельно, решительно)'
      @descriptions['answerU_10'] = 'Смелость в отстаивании своего мнения, взглядов'
      @descriptions['answerU_11'] = 'Непримиримость к недостаткам в себе и других'
      @descriptions['answerU_12'] = 'Индивидуализм (ориентация на собственные цели и интересы)'
      @descriptions['answerU_13'] = 'Высокие запросы (высокие требования к жизни и высокие притязания)'
      @descriptions['answerU_14'] = 'Жизнерадостность (чувство юмора)'
      @descriptions['answerU_15'] = 'Умение терпимо относиться к различным взглядам, мнениям, культуре, традициям'
      @descriptions['answerV_1'] = '«Быть как все, не выделяться»'
      @descriptions['answerV_2'] = '«Моя хата с краю, я ничего не знаю»'
      @descriptions['answerV_3'] = '«Есть только мое мнение, и оно всегда правильное»'
      @descriptions['answerV_4'] = '«Все решают деньги»'
      @descriptions['answerV_5'] = '«Кто сильнее, тот прав»'
      @descriptions['answerV_6'] = '«Надо слушаться старших - они правы всегда»'
      @descriptions['answerV_7'] = '«Имею право»'
      @descriptions['answerV_8'] = '«Худой мир лучше доброй ссоры»'
      @descriptions['answerV_9'] = '«Не имей сто рублей, а имей сто друзей»'
      @descriptions['answerV_10'] = '«Уважай мнение другого»'
      @descriptions['answerV_11'] = '«Кто, если не мы»'
      @descriptions['answerV_12'] = '«Быть самим собой»'
      @descriptions['answerW_1'] = 'Иметь возможность помогать людям, быть полезным, работать для общества'
      @descriptions['answerW_2'] = 'Иметь интересную работу'
      @descriptions['answerW_3'] = 'Иметь возможность для саморазвития'
      @descriptions['answerW_4'] = 'Иметь много денег, чтобы ни в чем не нуждаться'
      @descriptions['answerW_5'] = 'Иметь возможность купить машину, квартиру, дом'
      @descriptions['answerW_6'] = 'Иметь возможность хорошо одеваться и питаться'
      @descriptions['answerW_7'] = 'Иметь возможность веселиться и развлекаться'
      @descriptions['answerW_8'] = 'Иметь возможность обеспечивать семью, помогать родителям'
      @descriptions['answerW_9'] = 'Иметь возможность много путешествовать и общаться с интересными людьми'
      @descriptions['answerW_10'] = 'Быть известным, прославленным, популярным человеком'
      @descriptions['answerW_11'] = 'Иметь возможность совсем не работать'
      @descriptions['answerW_12'] = 'Быть честным гражданином и не обязательно быть богатым и знаменитым'
      @descriptions['answerW_13'] = 'Жить в стране, где нет войны, нищеты, несправедливости'
      @descriptions['answerW_14'] = 'Иметь крепкое здоровье, не болеть'
      @descriptions['answerW_15'] = 'Иметь семью и надежных друзей'
      @descriptions['answerW_16'] = 'Другое'
      @descriptions['answerX_1'] = 'Развивать научные знания и новые технологии'
      @descriptions['answerX_2'] = 'Развивать культуру и искусство'
      @descriptions['answerX_3'] = 'Поддерживать церковь, религию'
      @descriptions['answerX_4'] = 'Не допустить мировой, глобальной войны'
      @descriptions['answerX_5'] = 'Жить дружно, не враждовать, а сотрудничать'
      @descriptions['answerX_6'] = 'Жить по законам равенства и справедливости'
      @descriptions['answerX_7'] = 'Избавиться от нищеты и голода, который уносит жизни во многих странах мира'
      @descriptions['answerX_8'] = 'Справиться с болезнями и эпидемиями'
      @descriptions['answerX_9'] = 'Заботиться об окружающей среде, защищать ее от уничтожения'
      @descriptions['answerX_10'] = 'Другое'
      @descriptions['answerY_1'] = 'Да, конечно'
      @descriptions['answerY_2'] = 'Скорее да'
      @descriptions['answerY_3'] = 'Скорее нет'
      @descriptions['answerY_4'] = 'Нет'
      @descriptions['answerZ_1'] = 'Размеры страны'
      @descriptions['answerZ_2'] = 'Природные богатства'
      @descriptions['answerZ_3'] = 'История нашего государства'
      @descriptions['answerZ_4'] = 'Культура нашего государства'
      @descriptions['answerZ_5'] = 'Положение России на международной арене'
      @descriptions['answerZ_6'] = 'Вооруженные силы'
      @descriptions['answerZ_7'] = 'Экономические успехи'
      @descriptions['answerZ_8'] = 'Достижения российской науки'
      @descriptions['answerZ_9'] = 'Спортивные достижения'
      @descriptions['answerZ_10'] = 'Система российского образования'
      @descriptions['answerZ_11'] = 'Система здравоохранения'
      @descriptions['answerZ_12'] = 'Сограждане'
      @descriptions['answerZ_13'] = 'Другое'
      @descriptions['answerAA_1'] = 'Участники ежегодных молодежных форумов ("Селигер", "Таврида","Территория смылов на Клязьме" и пр.)'
      @descriptions['answerAA_2'] = '"Ночные волки"'
      @descriptions['answerAA_3'] = 'Добровольцы в Донбассе'
      @descriptions['answerAA_4'] = 'Спортсмены, выступающие за Россию'
      @descriptions['answerAA_5'] = 'Ученые, достижения которых вносят вклад в развитие современной цивилизации'
      @descriptions['answerAA_6'] = 'Художники, актеры, режиссеры, прославляющие Россию'
      @descriptions['answerAA_7'] = 'Военные, защищающие безопасность страны'
      @descriptions['answerAA_8'] = 'Люди, работающие в опасных для жизни сферах (сотрудники МЧС, пожарные, полицейские)'
      @descriptions['answerAA_9'] = 'Люди, отличающиеся высокой квалификацией (рабочие, учителя, врачи и т.д.)'
      @descriptions['answerAA_10'] = 'Люди, готовые отдать жизнь за Родину'
      @descriptions['answerAA_11'] = 'Бизнесмены, создающие рабочие места и регулярно выплачивающие налоги'
      @descriptions['answerAA_12'] = 'Политики'
      @descriptions['answerAA_13'] = 'Родители, вырастившие достойных детей'
      @descriptions['answerAA_14'] = 'Другое'
      @descriptions['answerAB_1'] = 'Наша страна является полноправным членом международных отношений и способна оказывать влияние на принимаемые решения. Нас знают и уважают во всем мире'
      @descriptions['answerAB_2'] = 'Наша страна является полноправным членом международных отношений и способна оказывать влияние на принимаемые решения, но переживает временный кризис'
      @descriptions['answerAB_3'] = 'У нашей страны свой путь в мире, она вынуждена противостоять внешней агрессии, чтобы сохранить свой особенный путь'
      @descriptions['answerAB_4'] = 'Наша страна не является полноправным членом международных отношений и не способна оказывать влияние на принимаемые решения. С нами не считаются.'
      @descriptions['answerAC_1'] = ''
      @descriptions['answerAC_2'] = 'Простите, я не понимаю, о чем речь'
      @descriptions['answerAD_1'] = 'Знать историю своей родины необходимо, без этого нельзя понять сегодняшнюю жизнь'
      @descriptions['answerAD_2'] = 'Историю Родины знать полезно, но не обязательно'
      @descriptions['answerAD_3'] = 'Знать прошлое совсем необязательно, лучше думать о настоящем и будущем'
      @descriptions['answerAE_1'] = 'Да, конечно'
      @descriptions['answerAE_2'] = 'Скорее да'
      @descriptions['answerAE_3'] = 'Скорее нет'
      @descriptions['answerAE_4'] = 'Нет'
      @descriptions['answerAF_1'] = 'Положительно'
      @descriptions['answerAF_2'] = 'Нейтрально'
      @descriptions['answerAF_3'] = 'Отрицательно'
      @descriptions['answerAG_1'] = 'Да'
      @descriptions['answerAG_2'] = 'Скорее да'
      @descriptions['answerAG_3'] = 'Скорее нет'
      @descriptions['answerAG_4'] = 'Нет'
      @descriptions['answerAH_1'] = 'Высокий уровень жизни'
      @descriptions['answerAH_2'] = 'Высокое качество образования'
      @descriptions['answerAH_3'] = 'Наличие личностных и профессиональных перспектив'
      @descriptions['answerAH_4'] = 'Возможность свободного перемещения между странами'
      @descriptions['answerAH_5'] = 'Другое'
      @descriptions['answerAI_1'] = 'При воспитании ребенка необходимо четко объяснить ему правила поведения и требовать их неукоснительного соблюдения'
      @descriptions['answerAI_2'] = 'При воспитании ребенка необходимо прислушиваться к его мнению и по возможности его учитывать'
      @descriptions['answerAI_3'] = 'При воспитании ребенка главное - предоставить ему полную свободу, позволить быть самостоятельным'
      @descriptions['answerAJ_1'] = 'Человек, окончивший высшее учебное заведение'
      @descriptions['answerAJ_2'] = 'Человек, окончивший школу'
      @descriptions['answerAJ_3'] = 'Человек, который постоянно совершенствуется духовно'
      @descriptions['answerAJ_4'] = 'Человек с хорошими манерами и уважающий других людей'
      @descriptions['answerAJ_5'] = 'Человек, поддерживающий политику руководства страны'
      @descriptions['answerAJ_6'] = 'Человек, честно выполняющий свое дело'
      @descriptions['answerAJ_7'] = 'Человек, готовый работать, чтобы содержать семью, растить детей, поддерживать родителей'
      @descriptions['answerAJ_8'] = 'Человек, готовый отдать жизнь за родину'
      @descriptions['answerAJ_9'] = 'Верующий человек'
      @descriptions['answerAJ_10'] = 'Другое '
      @descriptions['answerAL_1'] = 'Активный (общаетесь, создаете посты, оставляете комментарии)'
      @descriptions['answerAL_2'] = 'Пассивный (только просматриваете новости и ищете необходимую информацию)'
      @descriptions['answerAL_3'] = 'Не пользуюсь интернетом'
      @descriptions['answerAM_1'] = 'Самостоятельно'
      @descriptions['answerAM_2'] = 'Научили собственные дети'
      @descriptions['answerAM_3'] = 'Научили братья/сестры'
      @descriptions['answerAM_4'] = 'Научили друзья'
      @descriptions['answerAM_5'] = 'Научили учителя'
      @descriptions['answerAM_6'] = 'Научили ученики'
      @descriptions['answerAM_7'] = 'На специальных курсах, с помощью обучающих программ'
      @descriptions['answerAM_8'] = 'Другое'
      @descriptions['answerAN_1'] = 'Поиск информации для учебы / работы'
      @descriptions['answerAN_2'] = 'Использование образовательных порталов, онлайн курсов'
      @descriptions['answerAN_3'] = 'Чтение новостей'
      @descriptions['answerAN_4'] = 'Просмотр медиа-файлов (фото, видео, музыка, книги)'
      @descriptions['answerAN_5'] = 'Скачивание медиа-файлов (фото, видео, музыка, книги'
      @descriptions['answerAN_6'] = 'Создание и размещение своего контента (видео, фото, аудио, свой блог)'
      @descriptions['answerAN_7'] = 'Создание сайтов, программ, приложений'
      @descriptions['answerAN_8'] = 'Знакомство и поиск новых друзей'
      @descriptions['answerAN_9'] = 'Общение с друзьями и другими людьми'
      @descriptions['answerAN_10'] = 'Участие в сетевых и онлайн играх'
      @descriptions['answerAN_11'] = 'Совершение покупок в Интернет-магазине'
      @descriptions['answerAN_12'] = 'Поиск предложений по работе/работа в онлайн'
      @descriptions['answerAO_1'] = 'Поиск информации для учебы / работы'
      @descriptions['answerAO_2'] = 'Использование образовательных порталов, онлайн курсов'
      @descriptions['answerAO_3'] = 'Чтение новостей'
      @descriptions['answerAO_4'] = 'Просмотр медиа-файлов (фото, видео, музыка, книги)'
      @descriptions['answerAO_5'] = 'Скачивание медиа-файлов (фото, видео, музыка, книги'
      @descriptions['answerAO_6'] = 'Создание и размещение своего контента (видео, фото, аудио, свой блог)'
      @descriptions['answerAO_7'] = 'Создание сайтов, программ, приложений'
      @descriptions['answerAO_8'] = 'Знакомство и поиск новых друзей'
      @descriptions['answerAO_9'] = 'Общение с друзьями и другими людьми'
      @descriptions['answerAO_10'] = 'Участие в сетевых и онлайн играх'
      @descriptions['answerAO_11'] = 'Совершение покупок в Интернет-магазине'
      @descriptions['answerAO_12'] = 'Поиск предложений по работе/работа в онлайн'
      @descriptions['answerAO_13'] = 'Они не пользуются Интернетом'
      @descriptions['answerAO_14'] = 'Не знаю, пользуются они Интернетом или нет'
    end

  end

end
