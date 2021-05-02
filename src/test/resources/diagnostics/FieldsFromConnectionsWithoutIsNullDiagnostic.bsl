Процедура Тест1_ЛевоеСоединение()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Сотрудники.Ссылка  //<-- ошибка
    |ИЗ Справочник.Склады КАК Склады
    |ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники
    |ПО Склады.Кладовщик = Сотрудники.Ссылка
    |";

КонецПроцедуры

Процедура Тест2()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Сотрудники2.Ссылка  //<-- ошибка
    |ИЗ Справочник.Склады КАК Склады
    |ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники
    |ПО Склады.Кладовщик = Сотрудники.Ссылка
    |ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники2
    |ПО Склады.Кладовщик = Сотрудники2.Ссылка
    |";

КонецПроцедуры

Процедура Тест3()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Сотрудники3.Ссылка,  //<-- ошибка
    |ЕСТЬNULL(Сотрудники3.Ссылка, 0)  // не ошибка
    |ИЗ Справочник.Склады КАК Склады
    |ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники3
    |ПО Склады.Кладовщик = Сотрудники3.Ссылка
    |";

КонецПроцедуры

Процедура Тест4()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Склады.Ссылка
    |ИЗ Справочник.Склады КАК Склады
    |ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники4
    |ПО Склады.Кладовщик = Сотрудники4.Ссылка
    |ГДЕ Сотрудники4.Флаг                   //<-- ошибка
    |И ЕСТЬNULL(Сотрудники4.Флаг, Истина)   //не ошибка
    |";

КонецПроцедуры

Процедура Тест5_ПравоеСоединение()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Склады5.Ссылка,  //<-- ошибка
    |ЕСТЬNULL(Склады5.Ссылка, 0)  // не ошибка
    |ИЗ Справочник.Склады КАК Склады5
    |ПРАВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники5
    |ПО Склады5.Кладовщик = Сотрудники5.Ссылка
    |";

КонецПроцедуры

Процедура Тест6_ВнутреннееСоединение()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Склады6.Ссылка  //не ошибка
    |ИЗ Справочник.Склады КАК Склады6
    |ВНУТРЕННЕЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники6
    |ПО Склады6.Кладовщик = Сотрудники6.Ссылка
    |";

КонецПроцедуры

Процедура Тест7_ВУсловииСоединения()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Истина
    |ИЗ Справочник.Склады КАК Склады7
    |ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники7
    |ПО Склады7.Кладовщик = Сотрудники7.Ссылка
    |ЛЕВОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники71
    |ПО Сотрудники7.Ссылка    //<-- ошибка
    | = Сотрудники71.Ссылка
    | И ЕСТЬNULL(Сотрудники7.Ссылка, Истина)    // не ошибка
    |";

КонецПроцедуры

Процедура Тест8_ПолноеСоединение()

    Запрос = Новый Запрос;
    Запрос.Текст =
    "ВЫБРАТЬ Сотрудники8.Ссылка,  //<-- ошибка
    |Склады8.Ссылка  //<-- ошибка
    |ЕСТЬNULL(Сотрудники8.Ссылка, 0)  // не ошибка
    |ЕСТЬNULL(Склады8.Ссылка, 0)  // не ошибка
    |ИЗ Справочник.Склады КАК Склады8
    |ПОЛНОЕ СОЕДИНЕНИЕ Справочник.Сотрудники КАК Сотрудники8
    |ПО Склады8.Кладовщик = Сотрудники8.Ссылка
    |";

КонецПроцедуры
