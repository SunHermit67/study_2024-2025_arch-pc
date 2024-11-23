---
## Front matter
title: "Команды безусловного и условного переходов в Nasm. Программирование ветвлений."
subtitle: "Лабораторная работа №7"
author: "Приходько Иван Иванович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Понять принцип работы условных и безусловных переходов в Ассемблере и научиться писать программы с командами, отвечающими за переходы. Научиться работать с файлами листинга и уметь их читать.

# Выполнение лабораторной работы

Для начала выполнения лабораторной работы необходимо создать файл lab7-1.asm (рис. 2.1).

![Создание lab7-1.asm](image/1.PNG)

Вставим в него код из листинга 7.1 (рис. 2.2).

![Вставка кода из файла листинга 7.1](image/2.PNG)

Скопируем файл in_out.asm из рабочей директории прошлой лабораторной работы (рис. 2.3).

![Копирование in_out.asm](image/3.PNG)

Соберем и запустим (рис. 2.4).

![Сборка и запуск lab7-1.asm](image/4.PNG)

Изменим файл lab7-1.asm согласно листингу 7.2 (рис. 2.5).

![Изменение файла lab7-1.asm согласно листингу 7.2](image/5.PNG)

Повторно соберем и запустим (рис. 2.6).

![Повторная сборка и запуск lab7-1.asm](image/6.PNG)

Теперь сделаем так, чтобы код выводил сообщения в обратном порядке, для этого внесём в код следующие изменения (рис. 2.7).

![Редактирование lab7-1.asm](image/7.PNG)

Запустим (рис. 2.8).

![Повторная сборка и запуск lab7-1.asm](image/8.PNG)

Теперь создадим файл lab7-2.asm (рис. 2.9).

![Создание lab7-2.asm](image/9.PNG)

Вставим код из листинга 7.3 в файл lab7-2.asm (рис. 2.10).

![Запись кода из листинга 7.3 в файл lab7-2.asm](image/10.PNG)

Соберем и запустим (рис. 2.11).

![Сборка и запуск lab7-2.asm](image/11.PNG)

Теперь попробуем создать файл листинга при сборке файла lab7-2.asm (рис. 2.12).

![Создание файла листинга из lab7-2.asm](image/12.PNG)

Открыв его, мы видим следующую картину (рис. 2.13).

![Вид файла lab7-2.lst](image/13.PNG)

Наша программа находится ниже (рис. 2.14).

![Нахождение программы в файле листинга](image/14.PNG)

Разберём несколько строк файла листинга:

1. Строка под номером 14 перемещает содержимое msg1 в регистр eax. Адрес указывается сразу после номера. Следом идёт машинный код, который представляет собой исходную ассемблированную строку в виде шестнадцатиричной системы. Далее идёт исходный код

2. 15-ая строка отвечает за вызов функции sprint. Она также имеет адрес и машинный код

3. Строка 17 отвечает за запись переменной B в регистр ecx. Как видно, все строки имеют номер, адрес, машинный код и исходный код. 

Теперь попробуем намеренно допустить ошибку в нашем коде, убрав у команды mov 1 операнд (рис. 2.15).

![Допуск ошибки в lab7-2.asm](image/15.PNG)

И попробуем собрать файл с ошибкой, генерируя файл листинга (рис. 2.16).

![Сборка файла с ошибкой](image/16.PNG)

Посмотрим как выглядит ошибка в файле листинга (рис. 2.17).

![Ошибка в lab7-2.lst](image/17.PNG)

# Задания для самостоятельной работу

Создадим файл для выполнения самостоятельной работы (рис. 3.1).

![Создание файла task1v6.asm](image/21.PNG)

Напишем код для первого задания (рис. 3.2).

![Код task1v6.asm](image/22.PNG)

Соберем и запустим его (рис. 3.3).

![Сборка и запуск task1v6.asm](image/23.PNG)

Теперь создадим второй файл (рис. 3.4).

![Создание файла task2v6.asm](image/24.PNG)

Мой код получился таким (рис. 3.5).

![Код task2v6.asm](image/25.PNG)

Соберем и проведем тесты (рис. 3.6).

![Сборка и запуск task2v6.asm](image/26.PNG)

# Выводы

В результате работы над лабораторной работой были написаны программы, которые используют команды условных и безусловных переходов, были получены навыки работы с этими командами, а также были созданы и успешно прочитаны листинги для некоторых из программ.
