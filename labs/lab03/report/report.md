---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык раметки Markdown"
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

Здесь приводится формулировка цели лабораторной работы. Формулировки
цели для каждой лабораторной работы приведены в методических
указаниях.

Цель данного шаблона --- максимально упростить подготовку отчётов по
лабораторным работам.  Модифицируя данный шаблон, студенты смогут без
труда подготовить отчёт по лабораторным работам, а также познакомиться
с основными возможностями разметки Markdown.

# Выполнение лабораторной работы

Для начала переместимся в рабочий каталог (см. рис. 2.1)

![Переход в каталог](image/1.PNG)

Синхронизируем файлы на компьютере при помощи команды git pull (см. рис. 2.2)

![Использование git pull](image/2.PNG)

Перейдем в рабочий каталог третьей лабораторной работы (см. рис. 2.3)

![Перемещение в каталог 3 лаб. работы](image/3.PNG)

Теперь скомпилируем шаблон отчета при помощи команды make (см. рис. 2.4)

![Использование make](image/4.PNG)

Проверим создались ли файлы (см. рис. 2.5 - 2.7)

![Файлы на компьютере](image/5.PNG)
![Проверка docx файла](image/6.PNG)
![Проверка pdf файла](image/7.PNG)

Попробуем все это удалить (см. рис. 2.8)

![Использование make clean](image/8.PNG)

Проверим, сработала ли команда (см. рис. 2.9)

![Файлы на компьютере](image/9.PNG)

Откровем файл report.md при помощи редактора degit (см. рис. 2.10)

![Открытие файла при помощи degit](image/10.PNG)

Посмотрим как выглядит файл (см. рис. 2.11)

![Структура файла report.md](image/11.PNG)

После заполнения отчета, скомпилируем готовый отчет при помощи команды make (см. рис. 2.12)

![Сборка отчёта](image/12.PNG)

Перейдем в рабочий каталог (см. рис. 2.13)

![Переход в каталог](image/13.PNG)

Осталось только отправить файлы на github (см. рис. 2.14-2.15)

![Добавление коментария](image/14.PNG)
![Отправка файлов на github](image/15.PNG)

# Выполнения задания для самостоятельной работы

Нам нужно переделать вторую лабораторную работу в формате markdown, для начала перейдем в каталог второй лабораторной работы (см. рис. 3.1)

![Переход в нужный каталог](image/16.PNG)

Откроем файл при помощи degit (см. рис. 3.2)

![Открытие файла](image/17.PNG)

Заполним титульную страницу (см. рис. 3.3)

![Заполнение титульной страницы](image/18.PNG)

Заполним цель и выполнение работы (см. рис. 3.4)

![Заполнение цели и основной части](image/19.PNG)

Запишем задания для самостоятельной работы (см. рис. 3.5)

![Заполнение задания для самостоятельной работы](image/20.PNG)

Заполним выводы (см. рис. 3.6)

![Заполнение выводов](image/21.PNG)

Поместим скриншоты в отдельную папку (см. рис. 3.7)

![Папка image](image/22.PNG)

Соберем отчет (см. рис. 3.8)

![Использование make](image/23.PNG)

Зайдем в рабочий каталог (см. рис. 3.9)

![Переход в рабочий каталог](image/24.PNG)

Отправим все файлы на github (см. рис. 3.10 - 3.11)

![Добавление коментария](image/25.PNG)

![Отправка файлов на сервер](image/26.PNG)

# Выводы

В результате выполнение лабораторной работы были получены знания для работы с языком разметки markdown, также были заполнены две лабораторные работы.
