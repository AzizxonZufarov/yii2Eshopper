-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 02 2022 г., 05:32
-- Версия сервера: 8.0.19
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `eshopper`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Nike'),
(2, 'Adidas'),
(3, 'Boss'),
(4, 'Levis'),
(5, 'Fendi'),
(6, 'Gucci'),
(7, 'Chicco'),
(8, 'Puma');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'SPORTSWEAR'),
(2, 'MENS'),
(3, 'WOMEN'),
(4, 'KIDS');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `cat_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `author`, `date`, `text`, `email`, `cat_id`) VALUES
(1, 'Andrey', '2021-11-07 06:54:25', 'Lorem ipsum', 'qwerty@mail.ru', 1),
(2, '', '2021-11-07 06:59:45', '', '', 1),
(3, 'SportswearNike1', '2021-11-07 07:00:45', 'Salom', '', 1),
(4, 'SportswearNike1', '2021-11-07 07:00:59', 'Salom2', '', 1),
(5, 'Azizxon', '2021-11-07 07:08:56', '1', 'bionorica2015@mail.ru', 1),
(6, 'Azizxon', '2021-11-07 07:09:03', '12', 'bionorica2015@mail.ru', 1),
(7, 'sam', '2021-11-07 07:10:05', '13', 'orangecoder@mail.ru', 1),
(8, 'mat', '2021-11-07 07:29:24', '3', 'cakeacademy2021@mail.ru', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `cat_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text,
  `shop_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `cat_id`, `brand_id`, `img`, `description`, `shop_id`) VALUES
(1, 'Jordan Stay Loyal Nike', 9999, 1, 1, 'images/categories/sportswear/nike/1.jpg', 'ПРОЧНОСТЬ И КОМФОРТ, ФИЛОСОФИЯ ПОЛЕТА\r\n\r\n\r\nИз прошлого и прямиком в будущее.Jordan Stay Loyal — классическая, но в то же время современная модель с дизайном, вдохновленным Air Jordan 12.Модель дополнена накладками из кожи грубого вида, вдохновленными прочностью силуэта 12, и зигзагообразным резиновым рисунком протектора, который обхватывает носок, боковые части и пятку.\r\n\r\n\r\nСущность Air Jordan 12\r\n\r\nAir Jordan 12 — это источник вдохновения и одна из самых прочных моделей Майкла Джордана.Вдохновленный этими кроссовками силуэт Stay Loyal выполнен с толстыми многослойным накладками с двойной строчкой и резиновой подметкой, обхватывающей боковые и задние стороны.\r\n\r\n\r\nВсё дело в Air\r\n\r\nПодушка Air дает превосходную амортизацию.Видимое с боков «окно» в подушке демонстрирует внутренние элементы одной из самых любимых и проверенных временем технологий.\r\n\r\n\r\nКлассическая прочность\r\n\r\nПлотный текстильный материал дополнен расходящейся тональной строчкой, как у Air Jordan 12.Плотные кожаные накладки на носке, боковых поверхностях, верхней панели шнуровки и пятке обеспечивают прочность.\r\n\r\n\r\nИнформация о товаре\r\n\r\nПлетеная петелька в области пятки\r\nНесколько логотипов Jumpman\r\nЦвет модели: Белый/Chile Red/Rift Blue\r\nМодель: DB2884-100\r\nСтрана/регион происхождения: Вьетнам', 1),
(2, 'Air Zoom Pegasus 38 Shield Nike', 11299, 1, 1, 'images/categories/sportswear/nike/2.jpg', 'ТЕПЛО И КОМФОРТ В СЫРУЮ ПОГОДУ\r\n\r\n\r\nС этой крылатой рабочей лошадкой тебя не остановит даже дождь.Модель защищает от холода и влаги в сырую погоду благодаря таким деталям, как теплоизолирующий язычок со вставкой и утепленный верх с водонепроницаемым покрытием.Рельефный протектор, напоминающий зимние шины, позволяет бегать даже по скользким улицам.\r\n\r\n\r\nСцепление с мокрой поверхностью\r\n\r\nПодметка Storm-Tread обеспечивает сцепление в дождливую погоду.Ее текстура напоминает зимние шины.Микрожелобки цепляются за поверхность, а сложная текстура помогает отводить влагу для более надежного сцепления.\r\n\r\n\r\nКонструкция для защиты от непогоды\r\n\r\nВодоотталкивающий верх с покрытием, не содержащим фтористые соединения, защищает от влаги.Язычок со вставкой создает дополнительный слой защиты от непогоды.\r\n\r\n\r\nНоги в тепле, скорость на дистанции\r\n\r\nТрикотажный материал верха сохраняет ноги в тепле.Синтетические накладки в области пальцев защищают участки, где может просачиваться вода.Внутренняя сторона язычка также теплоизолирована, благодаря чему верхняя часть стопы надежно защищена.\r\n\r\n\r\nИнформация о товаре\r\n\r\nНе является средством индивидуальной защиты\r\nЦвет модели: Черный/Антрацитовый/Iron Grey/Черный\r\nМодель: DC4073-002\r\nСтрана/регион происхождения: Китай', 2),
(3, 'Blazer Mid \'77 Vintage Nike', 8999, 1, 1, 'images/categories/sportswear/nike/3.jpg', 'ВИНТАЖНЫЙ СТИЛЬ\r\n\r\n\r\nВ 70-х годах кроссовки Nike только начали завоевывать рынок. Мы работали над созданием лучшей баскетбольной обуви и тестировали прототипы на местной команде. Конечно, после нескольких лет работы дизайн заметно улучшился, но мы никак не могли придумать удачное название. Кроссовки Nike Blazer Mid ’77 Vintage стали классикой с момента появления.\r\n\r\n\r\nПреимущества\r\n\r\nПрочный верх из кожи и синтетического материала с классическим силуэтом оригинала обеспечивает комфорт.\r\nВинтажный дизайн подошвы для создания ретрообраза.\r\nЦельная подошва, созданная методом термической обработки, создает минималистичный образ в стиле дизайна 70-х годов.\r\nОткрытый пеноматериал на язычке создает образ в стиле ретро.\r\nМы ни разу не меняли зигзагообразный рисунок подметки из твердой резины, которая не оставляет следов. Зачем менять то, что отлично работает? Она дает превосходное сцепление, прочность и узнаваемый отпечаток.\r\nЦвет модели: Белый/Черный\r\nМодель: BQ6806-100\r\nСтрана/регион происхождения: Вьетнам,Индонезия,Индия\r\nВИНТАЖНЫЙ СТИЛЬ\r\n\r\n\r\nВ 70-х годах кроссовки Nike только начали завоевывать рынок. Мы работали над созданием лучшей баскетбольной обуви и тестировали прототипы на местной команде. Конечно, после нескольких лет работы дизайн заметно улучшился, но мы никак не могли придумать удачное название. Кроссовки Nike Blazer Mid ’77 Vintage стали классикой с момента появления.\r\n\r\n\r\nПреимущества\r\n\r\nПрочный верх из кожи и синтетического материала с классическим силуэтом оригинала обеспечивает комфорт.\r\nВинтажный дизайн подошвы для создания ретрообраза.\r\nЦельная подошва, созданная методом термической обработки, создает минималистичный образ в стиле дизайна 70-х годов.\r\nОткрытый пеноматериал на язычке создает образ в стиле ретро.\r\nМы ни разу не меняли зигзагообразный рисунок подметки из твердой резины, которая не оставляет следов. Зачем менять то, что отлично работает? Она дает превосходное сцепление, прочность и узнаваемый отпечаток.\r\nЦвет модели: Белый/Черный\r\nМодель: BQ6806-100\r\nСтрана/регион происхождения: Вьетнам,Индонезия,Индия\r\n', 3),
(4, 'Sportswear Tech Fleece Nike', 10299, 1, 1, 'images/categories/sportswear/nike/4.jpg', 'ЛЕГКАЯ ТКАНЬ И ЗАЩИТА ОТ ХОЛОДА\r\n\r\n\r\nХочешь наслаждаться теплом и комфортом в любимой худи, но нужно выглядеть элегантно? Худи Nike Tech Fleece поможет найти баланс — она легкая и тонкая, но очень теплая. Носи ее в течение всего дня: на работе, на улице и дома.\r\n\r\n\r\nПреимущества\r\n\r\nTech Fleece — это легкий теплоизолирующий материал с превосходным внешним видом.\r\nКарман на молнии на рукавах для ключей и телефона.\r\nМинималистичный капюшон из 4 панелей для комфорта.\r\nПрозрачный кант подчеркивает классический силуэт и карман на молнии на рукаве.\r\n\r\nИнформация о товаре\r\n\r\nСтандартный крой для удобной свободной посадки\r\nОснова: 66% хлопок/34% полиэстер. Подкладка карманов: 100% хлопок. Подкладка капюшона: 69% хлопок/31% полиэстер.\r\nМашинная стирка\r\nИмпорт\r\nЦвет модели: Cedar/Обсидиан/Черный\r\nМодель: CU4489-661\r\nСтрана/регион происхождения: Камбоджа,Китай\r\n', 4),
(5, 'Nike Dri-FIT Academy', 4080, 1, 1, 'images/categories/sportswear/nike/5.jpg', 'ОБЛЕГАЮЩИЙ КРОЙ, ВЫСОКАЯ СКОРОСТЬ\r\n\r\n\r\nКостюм Nike Dri-FIT Academy идеально подходит для тренировки или разминки перед матчем. Конструкция из влагоотводящей ткани дополнена молниями в нижней части штанин, которые позволяют переодеваться, не снимая бутсы.\r\n\r\n\r\nПреимущества\r\n\r\nТкань с технологией Dri-FIT отводит влагу и обеспечивает комфорт.\r\nБлагодаря молниям на штанинах ты можешь быстро переодеваться, не снимая обувь.\r\nЭластичный пояс со скрытым шнурком для надежной посадки.\r\n\r\nИнформация о товаре\r\n\r\nСтандартный крой для удобной свободной посадки\r\nМолния во всю длину\r\nКарманы на молнии\r\n100% полиэстер\r\nМашинная стирка\r\nИмпорт\r\nЦвет модели: Черный/Белый/Белый\r\nМодель: AO0053-010\r\nСтрана/регион происхождения: Камбоджа,Вьетнам,Таиланд', 5),
(6, 'ТОЛСТОВКА ESSENTIALS 3-STRIPES', 3399, 1, 2, 'images/categories/sportswear/adidas/1.jpg', 'КЛАССИЧЕСКАЯ ТОЛСТОВКА С ВНУТРЕННИМ ФЛИСОВЫМ СЛОЕМ.\r\nКогда на улице холодно, надень эту теплую толстовку adidas с капюшоном. Она выполнена в стиле винтажных спортивных моделей. Рифленые манжеты и нижний край не задираются и не скатываются, обеспечивая полную свободу движений. Мягкая флисовая ткань дарит ощущение комфорта.\r\n\r\nМодель выполнена из переработанных материалов в рамках наших обязательств по сокращению пластиковых отходов. Мы поддерживаем экологичное выращивание и обработку хлопка. Это часть нашей программы по сокращению пластиковых отходов.', 6),
(7, 'БРЮКИ ADIDAS SPORTSWEAR', 3999, 1, 2, 'images/categories/sportswear/adidas/2.jpg', 'МЯГКИЕ СПОРТИВНЫЕ БРЮКИ С СОВРЕМЕННЫМ КАМУФЛЯЖНЫМ ПРИНТОМ.\r\nТвой стиль ― твое самовыражение. Но когда ты надеваешь эти брюки adidas, ты представляешь не только себя, но и нашу планету. Модель выполнена из переработанных материалов в рамках обязательств adidas по сокращению пластиковых отходов. Подчеркни свой стиль и присоединяйся к нам.\r\n\r\nВ состав модели входит материал Primegreen, созданный из переработанных волокон.', 7),
(8, 'КРОССОВКИ CORERACER', 2399, 1, 2, 'images/categories/sportswear/adidas/3.jpg', 'ЛЕГКИЕ ПОВСЕДНЕВНЫЕ КРОССОВКИ В БЕГОВОМ СТИЛЕ.\r\nКроссовки adidas Coreracer идеально сочетают в себе поддержку стопы и уличный стиль. Легкая и дышащая модель дарит комфорт в течение всего дня. Логотип adidas завершает спортивный образ.', 8),
(9, 'КОМПЛЕКТ: ДЖЕМПЕР И БРЮКИ CREW', 3999, 1, 2, 'images/categories/sportswear/adidas/4.jpg', 'ТРИКОТАЖНЫЙ КОМПЛЕКТ С КЛАССИЧЕСКИМИ ДЕТАЛЯМИ.\r\nСпортивный стиль для юных чемпионов. Контрастные три полоски и Трилистник подчеркивают аутентичность образа. Комплект выполнен из уютного махрового трикотажа. Потайные кнопки на плече облегчают снимание и надевание.', 1),
(10, 'ШЛЕПАНЦЫ ADISSAGE', 2999, 1, 2, 'images/categories/sportswear/adidas/5.jpg', 'ШЛЕПАНЦЫ С МАССАЖНОЙ СТЕЛЬКОЙ ДЛЯ ВОССТАНОВЛЕНИЯ ПОСЛЕ ТРЕНИРОВКИ.\r\nШлепанцы adidas Adissage с гибкой массажной стелькой и удобным ремешком, который можно регулировать.\r\n\r\nМодель создана для восстановления после тренировки и не подходит для повседневного использования. Если ты ищешь шлепанцы с массажной стелькой для комфорта в течение всего дня, тогда попробуй Adissage TND.', 2),
(11, 'Темно-синий свитшот  BOSS Athleisure', 150, 2, 3, 'images/categories/mens/boss/1.jpg', 'Темно-синий свитшот узкого кроя с большим логотипом BOSS Athleisure Salbo 1\r\nЦВЕТ: Темно-синий', 3),
(12, 'Черный халат с большим логотипо', 200, 2, 3, 'images/categories/mens/boss/2.jpg', 'Черный халат с большим логотипом BOSS Bodywear Identity', 4),
(13, 'Черная приталенная футболка', 377, 2, 3, 'images/categories/mens/boss/3.jpg', 'Черная приталенная футболка с крупным логотипом BOSS Beachwear', 5),
(14, 'Темно-синяя футболка BOSS Tlogo', 110, 2, 3, 'images/categories/mens/boss/4.jpg', 'Темно-синяя футболка BOSS Tlogo', 6),
(15, 'Белый лонгслив  BOSS Athleisure Togn', 57, 2, 3, 'images/categories/mens/boss/5.jpg', 'Белый лонгслив с крупным принтом на спине BOSS Athleisure Togn 2', 7),
(16, 'Джемпер', 605, 2, 4, 'images/categories/mens/levis/1.jpg', 'Состав: Шерсть - 80%, Полиамид - 20%\r\nРазмер товара на модели: M INT\r\nПараметры модели: 103-78-98\r\nРост модели на фото: 189\r\nДлина: 70 см\r\nДлина рукава: 60 см\r\nСезон: мульти\r\nЦвет: зеленый\r\nУзор: однотонный\r\nСтрана производства: Китай', 8),
(17, 'Рубашка', 555, 2, 4, 'images/categories/mens/levis/2.jpg', 'Данный товар является частью проекта Lamoda planet - специального раздела нашего каталога, где мы собрали экологичные, этичные и благотворительные товары. Компания Levi Strauss & Co. поддерживает социальные проекты и оказывает целевую помощь по всему миру в рамках Фонда Леви Страусса (Levi Strauss Foundation). Особое внимание уделяется теме ВИЧ/СПИД, защите прав людей в трудной жизненной ситуации, а также обеспечению достойных условий труда и социальной справедливости. Выбирая этот товар, вы поддерживаете компанию, считающую благотворительность своим приоритетом.\r\nСостав: Хлопок - 100%\r\nРазмер товара на модели: M INT\r\nПараметры модели: 103-78-98\r\nРост модели на фото: 189\r\nДлина: 75 см\r\nДлина рукава: 63 см\r\nСезон: мульти\r\nЦвет: коралловый\r\nУзор: однотонный\r\nТип силуэта: прямой\r\nКарманы: 1\r\nСтрана производства: Индия\r\nЗастежка: пуговицы', 1),
(18, 'Куртка утепленная', 750, 2, 4, 'images/categories/mens/levis/3.jpg', 'Утепленная куртка выполнена из стеганого текстильного материала. Детали: застежка на молнию, стойка воротник, текстильная подкладка, 2 внешних кармана на молнию, 2 внутренних кармана без застежки, утеплитель из полиэстера.\r\nСостав: Полиэстер - 100%\r\nУтеплитель: Полиэстер - 100%\r\nРазмер товара на модели: M INT\r\nПараметры модели: 104-82-101\r\nРост модели на фото: 187\r\nДлина: 68 см\r\nДлина рукава: 64 см\r\nСезон: демисезон\r\nЦвет: синий\r\nУзор: однотонный\r\nВнутренние карманы: 2\r\nКарманы: 2\r\nКапюшон: нет\r\nСтрана производства: Бангладеш\r\nЗастежка: молния', 2),
(19, 'Джемпер', 770, 2, 4, 'images/categories/mens/levis/4.jpg', 'Состав: Шерсть - 80%, Полиамид - 20%\r\nРазмер товара на модели: M INT\r\nПараметры модели: 103-78-98\r\nРост модели на фото: 189\r\nДлина: 70 см\r\nДлина рукава: 60 см\r\nСезон: мульти\r\nЦвет: синий\r\nУзор: однотонный\r\nСтрана производства: Китай', 3),
(20, 'Пуховик', 1000, 2, 4, 'images/categories/mens/levis/5.jpg', 'Пуховик выполнен из плотного стеганого текстиля с натуральным наполнителем. Модель прямого силуэта. Детали: съемный капюшон, застежка-молния, боковые карманы.\r\nСостав: Полиэстер - 100%\r\nМатериал подкладки: Полиэстер - 100%\r\nУтеплитель: Натуральный пух - 75%, Натуральное перо - 25%\r\nРазмер товара на модели: M INT\r\nПараметры модели: 95 - 72 - 95\r\nРост модели на фото: 188\r\nДлина: 90 см\r\nДлина рукава: 66 см\r\nСезон: демисезон, зима\r\nЦвет: оранжевый\r\nУзор: однотонный\r\nКарманы: 4\r\nКапюшон: съемный\r\nСтрана производства: Вьетнам\r\nЗастежка: молния', 4),
(21, 'Рубашка из креп-сатина синего цвета', 444, 3, 5, 'images/categories/women/fendi/1.jpg', 'Состав:100 % шелк, подкладка: 100 % шелк, 5 пуговиц: перламутр\r\nTaille du mannequin178 cm\r\nРазмер модели40 IT', 5),
(22, 'Ботинки на высоком каблуке из кожи ', 406, 3, 5, 'images/categories/women/fendi/2.jpg', 'Ботинки Fendi First с квадратным носком, застежкой-молнией с внутренней стороны и пуллером Fendi O\'Lock. Модель из кожи наппа черного цвета. Скульптурный каблук в форме диагональной буквы F из золотистого металла.', 6),
(23, 'СУМКА-ШОПЕР FENDI SUNSHINE СРЕДНЯЯ', 500, 3, 5, 'images/categories/women/fendi/3.jpg', 'Длина:35, cm\r\nВысота:31, cm\r\nГлубина:17, cm\r\nМин. длина плечевого ремня90 cm\r\nМакс. длина плечевого ремня:90 cm\r\nВысота плечевого ремня (просвет):42 cm\r\nВес:1,104 kg\r\nСостав:100 % телячья кожа, 100 % полиметилметакрилат, внутренняя часть: 60 % полиамид, 40 % полиуретан', 7),
(24, 'ПИДЖАК Куртка из мохеровой шерсти', 5005, 3, 5, 'images/categories/women/fendi/4.jpg', 'Состав:60 % мохер, 40 % шерсть, отделка воротника: 100 % полиэстер, подкладка: 100 % шелк, 6 пуговиц: перламутр, 10 пуговиц: 100 %\r\nTaille du mannequin179 cm\r\nРазмер модели40 IT', 8),
(25, 'FENDI FIRST SMALL\r\nСумка ', 100, 3, 5, 'images/categories/women/fendi/5.jpg', 'Длина:26, cm\r\nВысота:18, cm\r\nГлубина:9,5 cm\r\nВес:0,654 kg\r\nСостав:100 % кожа ягненка, 100 % кожа питона, внутренняя часть: 27 % полиэстер, 27 % полиамид, 27 % полиуретан, 15 % хлопок, 4 %', 1),
(26, 'Gucci\r\nфутболка 25 Eschatolog', 475, 3, 6, 'images/categories/women/gucci/1.jpg', 'черный\r\nорганический хлопок \r\nсочетание двух оттенков\r\nполоска сбоку\r\nкруглый вырез\r\nкороткие рукава\r\nпрямой подол\r\nPOSITIVELY CONSCIOUS: В составе этой модели есть органический хлопок. Его производитель не использует химические вещества, пестициды и другие искусственные удобрения и внедряет в процесс методы, которые помогают сохранить биоразнообразие, улучшают качество почвы и сокращают потребление воды.\r\nСтрана производства: Италия', 2),
(27, 'Gucci ботильоны с логотипом GG', 575, 3, 6, 'images/categories/women/gucci/2.jpg', 'Ботильоны Gucci сочетают спортивную эстетику и классические элементы. Модель украшена знаковым узором GG Supreme и контрастной стеганой вставкой на щиколотке.\r\n\r\nПодробнее о товаре\r\nцвет: бежевый, белый\r\nкожа, канвас\r\nканвас с узором GG Supreme\r\nвставки\r\nстеганый материал\r\nзакругленный носок\r\nшнуровка спереди\r\nвысота по щиколотку\r\nвысокий блочный каблук\r\nСтрана производства: Италия', 3),
(28, 'Gucci мини-сумка GG Marmont', 675, 3, 6, 'images/categories/women/gucci/3.jpg', 'Мини-сумка GG Marmont от Gucci (Гуччи). Цепочный ремень на плечо, откидной клапан на застежке, стеганый эффект и логотип GG. Цвет: черный.\r\n\r\nСтрана производства: Италия', 4),
(29, 'Gucci ботинки с логотипом GG', 100, 3, 6, 'images/categories/women/gucci/4.jpg', 'Металлический логотип, золотистая фурнитура, канвас с принтом GG, длина по щиколотку, шнуровка спереди, закругленный носок и петля для подтягивания сзади.\r\n\r\nСтрана производства: Италия', 5),
(30, 'Gucci футболка с логотипом', 255, 3, 6, 'images/categories/women/gucci/5.jpg', 'Креативный директор Gucci с успехом преобразил модный дом, не забывая о истории бренда. Он не стесняется перемешивать старое и новое, и часто включает винтажные логотипы и архивные детали на тему конного спорта в новые работы. Эта серая хлопковая футболка с логотипом от Gucci (Гуччи) имеет круглый вырез, короткие рукава, свободный крой и вышитый логотип на груди. Сделано в Италии.\r\n\r\nСтрана производства: Италия', 6),
(31, 'Демисезонная шапка Chicco (48 см) ', 12, 4, 7, 'images/categories/kids/chicco/1.jpg', 'Chicco (Чикко) - итальянская марка, представляющая полную серию предметов для мам и малышей. Яркие и оригинальные, удобные и функциональные детские вещи Chicco быстро завоевали популярность сначала в Италии, а затем и далеко за ее пределами.\r\n\r\nВся продукция Chicco прошла тщательный контроль качества и безопасности. Тысячи высококвалифицированных специалистов занимаются исследованиями, испытаниями и совершенствованием технологий для товаров. Компания заботится о здоровье и счастье детей и всей семьи, поэтому старается сделать жизнь всех ее членов легче и радостней.', 7),
(32, 'Жилет Chicco 92 см', 20, 4, 7, 'images/categories/kids/chicco/2.jpg', 'Chicco — итальянская марка, представляющая полную серию предметов для мам и малышей. Все эти продукты Chicco прошли тщательный контроль качества и безопасности. Тысячи высококвалифицированных специалистов занимаются исследованиями, испытаниями и совершенствованием технологий для товаров. Компания заботится о здоровье и счастье детей и всей семьи, поэтому старается сделать жизнь всех ее членов легче и радостней.', 8),
(33, 'Толстовка Chicco 98 см', 25, 4, 7, 'images/categories/kids/chicco/3.jpg', 'Chicco — итальянская марка, представляющая полную серию предметов для мам и малышей. Все эти продукты Chicco прошли тщательный контроль качества и безопасности. Тысячи высококвалифицированных специалистов занимаются исследованиями, испытаниями и совершенствованием технологий для товаров. Компания заботится о здоровье и счастье детей и всей семьи, поэтому старается сделать жизнь всех ее членов легче и радостней.', 1),
(34, 'Chicco Пинетки синие р. 16', 23, 4, 7, 'images/categories/kids/chicco/4.jpg', 'Chicco Пинетки синие\r\n\r\nПинетки текстильные, имитация кед. Упакованы в коробку с пластиковым окошком, отлично подходят в качестве подарка новорожденному.\r\n\r\nСверхмягкая обувь со скругленными формами, которая, словно кокон, обнимает ножку ребенка, обеспечивая ему максимальную свободу движений и защиту. Помогает ребенку привыкнуть к ношению обуви. Материал верха: Текстиль 80%, кожзам 20% Материал подкладки: Текстиль 100% Материал подошвы: Кожзам 100%\r\n\r\nО бренде\r\n\r\nИдею Chicco создала любовь, бренд Chicco растили с любовью: вся история Chicco — история любви к самому дорогому, что только может быть у человека в жизни. История Chicco началась более полувека назад в маленьком итальянском городе Комо, когда в семье Пьетро Кателли — предпринимателя и владельца небольшого предприятия медицинской направленности — появился первенец Энрико. Маленький Chicco, как ласково называл его отец, был достоин самого лучшего! Однако рынок Италии на тот момент был заполнен безликими, скучными и зачастую некачественными товарами для детей. Именно это и подтолкнуло изобретательного Пьетро Кателли на создание линии качественных, функциональных и ярких товаров для детей. Название бренда, созданного с заботой и вниманием к детям, было выбрано сразу.', 2),
(35, 'Chicco комбинезон Thermosoft серый', 17, 4, 7, 'images/categories/kids/chicco/5.jpg', 'Комбинезон Chicco с утеплителем Thermosoft \r\n\r\nТеплый комбинезон Chicco согреет вашего малыша в холодную погоду. В основе модели - запатентованный утеплитель Thermosoft. Это высокотехнологичный утеплитель, предназначенный для поддержания температуры тела в состоянии естественного тепла. В комбинезоне есть две застежки-молнии для удобного надевания, рукавички и пинетки, которые отстегиваются, и капюшон с меховой оторочкой. Комбинезон украшен декоративными пуговицами. \r\n\r\nОсобенности утеплителя Thermosoft: \r\n\r\n- равномерная структура волокон без участков охлаждения, обеспечивающая тепло, мягкость, легкость и комфорт\r\n- гипоаллергенность\r\n- хорошая проводимость воздуха\r\n- отличное восстановление формы даже после долгого пребывания в сложенном состоянии\r\n- отсутствие опасных химических компонентов\r\n- не скатывается\r\n\r\nДополнительные характеристики:\r\n\r\n- температурный режим: от -5 до -15 градусов\r\n- воздухопроницаемый\r\n- ткань верха: 100% полиэстер\r\n- подкладка: 100% полиэстер - флис\r\n\r\nСоветы по уходу:\r\n\r\nКомбинезон не требует частой стирки - загрязнения легко удаляются с поверхности влажной губкой. Если вы решили постирать комбинезон, используйте ручную или машинную «бережную» стирку при 30°С без отжима. Перед стиркой следует застегнуть молнию. Не использовать порошки, содержащие отбеливатель и кондиционер, не гладить, не сушить на батарее. ', 3),
(36, 'ДЕТСКИЕ КЕДЫ SMASH V2 LIL PUMA', 47, 4, 8, 'images/categories/kids/puma/1.jpg', 'Детали\r\n\r\nКоллекция: Осень-зима 2021\r\nХарактеристики\r\n\r\nМатериал верха: 100% искусственная кожа (мягкий нубук)\r\nМатериал подошвы: 100% резина (не оставляет следов, обеспечивает прочность и превосходное сцепление); промежуточная подошва из резины\r\nНа «липучке» – для оптимальной посадки\r\nСъемная стелька Kinder-Fit®\r\nФирменные полоски PUMA Formstrip и графика – сбоку\r\nЛоготип PUMA No. 1 на язычке\r\nРекомендованы для малышей до 4 лет\r\nСтрана-производитель: Индонезия', 4),
(37, 'ДЕТСКАЯ ФУТБОЛКА PUMA X', 50, 4, 8, 'images/categories/kids/puma/2.jpg', 'Детали\r\n\r\nКоллекция: Осень-зима 2021\r\nСтиль: Премиум\r\nХарактеристики\r\n\r\nСостав: 70% хлопок BCI, 30% переработанный хлопок; материал содержит переработанные волокна – PUMA заботится о снижении воздействия на окружающую среду\r\nСтандартная посадка\r\nКруглый вырез горловины – в рубчик\r\nГрафика (прорезиненный принт)\r\nЛоготип PUMA x TINYCOTTONS (прорезиненный принт)\r\nСтрана-производитель: Китай', 5),
(38, 'ДЕТСКИЙ КОМПЛЕКТ LIL PUMA', 75, 4, 8, 'images/categories/kids/puma/3.jpg', 'Детали\r\n\r\nКоллекция: Осень-зима 2021\r\nХарактеристики\r\n\r\nСостав: 68% хлопок BCI, 32% полиэстер\r\nТолстовка – стандартная посадка\r\nОблегающие штаны\r\nКруглый вырез горловины – в рубчик\r\nЭластичный пояс с внутренним шнурком для регулировки\r\nПрорезиненный принт и надпись «PUMA» – толстовка\r\nНадпись «PUMA» (прорезиненный принт) – штаны\r\nПриобретая хлопковые изделия от PUMA, вы поддерживаете экологичное хлопководство\r\nСтрана-производитель: Бангладеш', 6),
(39, 'ДЕТСКАЯ ФУТБОЛКА LIL PUMA KIDS\' TEE', 10, 4, 8, 'images/categories/kids/puma/4.jpg', 'Детали\r\n\r\nКоллекция: Осень-зима 2021\r\nХарактеристики\r\n\r\nСостав: 100% хлопок BCI\r\nСтандартная посадка\r\nКруглый вырез горловины с отделкой в рубчик\r\nКомбинированная графика (флок/прорезиненный принт)\r\nЛоготип PUMA Archive No. 1 (прорезиненный принт) слева на груди\r\nПриобретая хлопковые изделия от PUMA, вы поддерживаете экологичное хлопководство\r\nСтрана-производитель: Бангладеш', 7),
(40, 'ДЕТСКАЯ ФУТБОЛКА PUMA X PEANUTS KIDS\' TEE', 55, 4, 8, 'images/categories/kids/puma/5.jpg', 'Детали\r\n\r\nКоллекция: Осень-зима 2021\r\nСтиль: Премиум\r\nХарактеристики\r\n\r\nСостав: 100% хлопок BCI\r\nСтандартная посадка\r\nКруглый вырез горловины с отделкой в рубчик\r\nВышивка «зигзаг»\r\nГрафика PUMA x PEANUTS на груди\r\nПриобретая хлопковые изделия от PUMA, вы поддерживаете экологичное хлопководство\r\nСтрана-производитель: Китай', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `title`) VALUES
(1, 'Home'),
(2, 'Shop'),
(3, 'Blog'),
(5, 'Contact');

-- --------------------------------------------------------

--
-- Структура таблицы `shops`
--

CREATE TABLE `shops` (
  `id` int NOT NULL,
  `shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shops`
--

INSERT INTO `shops` (`id`, `shopname`) VALUES
(1, 'SundayStore'),
(2, 'MondayStore'),
(3, 'TuesdayStore'),
(4, 'WednesdayStore'),
(5, 'ThursdayStore'),
(6, 'FridayStore'),
(7, 'SaturdayStore'),
(8, 'SuperStore');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int UNSIGNED NOT NULL,
  `title1` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `title1`, `title2`) VALUES
(1, 'Летний сезон', 'Покупайте летнюю одежду'),
(2, 'Зимний сезон', 'Покупайте зимнюю одежду');

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `cat_id`) VALUES
(1, 'Nike', 1),
(2, 'Puma', 1),
(3, 'Underarmour', 1),
(4, 'Adidas', 1),
(5, 'Asics', 1),
(6, 'Fendi', 2),
(7, 'Guess', 2),
(8, 'Valentine', 2),
(9, 'Dior', 2),
(10, 'Versace', 2),
(11, 'Armani', 2),
(12, 'Prada', 2),
(13, 'Dolce&Gabbana', 2),
(14, 'Chanel', 2),
(15, 'Gucci', 2),
(16, 'Fendi', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `submenu`
--

CREATE TABLE `submenu` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `menu_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `submenu`
--

INSERT INTO `submenu` (`id`, `title`, `menu_id`) VALUES
(1, 'Products', 2),
(2, 'Product Details', 2),
(3, 'Checkout', 2),
(4, 'Checkout', 2),
(5, 'Cart', 2),
(6, 'Login', 2),
(7, 'Tripod Blog', 3),
(8, 'Clean Blog', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `isAdmin`) VALUES
(1, '2', '3', '4', NULL),
(2, 'html', 'html6@mail.ru', 'html6@mail.ru', NULL),
(3, 'admin', 'admin@mail.ru', 'admin', 1),
(4, 'admin3', 'admin3@mail.ru', '333', NULL),
(5, 'admin1', 'admin1@mail.ru', 'admin1', NULL),
(6, 'admintoy', 'admintoy@mail.ru', 'admintoy', NULL),
(7, 'admin1', 'admin1@mail.ru', 'admin1', NULL),
(8, '', 'html6@mail.ru', 'html6@mail.ru', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `itemname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`id`, `name`, `email`, `text`, `itemname`, `price`, `quantity`, `total`) VALUES
(21, '', '', '', 'ТОЛСТОВКА ESSENTIALS 3-STRIPES', 3399, 1, 3399),
(22, 'Azizxon', 'qwerty@mail.ru', '555', 'БРЮКИ ADIDAS SPORTSWEAR', 3999, 2, 7998),
(23, 'Azizxon', 'bionorica2015@mail.ru', '1', 'КРОССОВКИ CORERACER', 2399, 1, 2399),
(24, 'Azizxon', 'qwerty@mail.ru', '555', 'БРЮКИ ADIDAS SPORTSWEAR', 3999, 1, 3999),
(25, 'Azizxon', 'qwerty@mail.ru', '555', 'КОМПЛЕКТ: ДЖЕМПЕР И БРЮКИ CREW', 3999, 1, 3999),
(26, 'Azizxon', 'bionorica2015@mail.ru', '1', 'БРЮКИ ADIDAS SPORTSWEAR', 3999, 1, 3999),
(27, 'Azizxon', 'bionorica2015@mail.ru', '1', 'КОМПЛЕКТ: ДЖЕМПЕР И БРЮКИ CREW', 3999, 1, 3999),
(28, 'Azizxon', 'bionorica2015@mail.ru', '1', 'КРОССОВКИ CORERACER', 2399, 1, 2399);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
