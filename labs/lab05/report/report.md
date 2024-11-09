---
## Front matter
title: "Лабораторная работа №5"
subtitle: "Основы работы с MC (Midnight Commnader), структура программы на языке ассемблера NASM, системные вызовы в OC GNU Linux"
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

Ознакомиться с программой Midnight commander и освоить написание программ на языке ассемблера с помощью инструкций mov и int

# Выполнение лабораторной работы

Для начала запустим Midnight Commander (рис. 2.1).

![Запуск Midnight Commander](image/1.PNG)

Мы увидим такой интерфейс (рис. 2.2).

![Интерфейс Midnight Commander](image/2.PNG)

Перейдем в каталог arch-pc (рис. 2.3).

![Переход в каталог arch-pc](image/3.PNG)

Создадим с помощью touch файл lab5-1.asm (рис. 2.4).

![Создание файла lab5-1.asm](image/4.PNG)

Вставим в него следующий код (рис. 2.5).

![Редактирование файла lab5-1.asm](image/0.PNG)

Теперь скомпилируем и соберем его (рис. 2.6 и 2.7).

![Компиляция lab5-1.asm](image/5.PNG)

![Сборка lab5-1.asm](image/6.PNG)

Запустим его (рис. 2.8 и 2.9).

![Запуск lab5-1.asm](image/7.PNG)

![Результат lab5-1.asm](image/8.PNG)

Теперь скачаем файл in_out.asm и откроем папку с ним в правой панели (рис. 2.10).

![Открытие папки с файлом in_out.asm в правой панели](image/9.PNG)

Скопируем его в рабочую область (рис. 2.11).

![Копирование файла in_out.asm](image/10.PNG)

Теперь сделаем копию файла lab5-1.asm и назовём копию lab5-2.asm (рис. 2.12).

![Создание копии lab5-1.asm](image/11.PNG)

Теперь наша папка выглядит так (рис. 2.13).

![Вид рабочей папку](image/12.PNG)

Напишем в файл lab5-2.asm следующий код(рис. 2.14).

![Редактирование файла lab5-2.asm](image/13.PNG)

Теперь скомпилируем, соберем и запустим его (рис. 2.15).

![Компиляция и сборка lab5-2.asm](image/14.PNG)

![Запуск lab5-2.asm](image/15.PNG)

 Попробуем теперь вместо команды sprintLF использовать просто команду sprint (рис. 2.17).

![Изменение файла lab5-2.asm](image/16.PNG)

Теперь запустим его (рис. 2.18).

![Повторный запуск lab5-2.asm](image/17.PNG)

# Выполнение задания для самостоятельной работы

Создадим копию файла lab5-1.asm (рис. 3.1).

![Создание копии файла lab5-1.asm](image/31.PNG)

Изменим копию так, чтобы она выводила тот текст, который получила на ввод (рис. 3.2).

![Изменение файла lab5-1-1.asm](image/32.PNG)

Теперь создадим исполняем файл и и запустим его (рис. 3.3).

![Создание и запуск lab5-1-1.asm](image/33.PNG)

Создадим копию файла lab5-2.asm (рис. 3.4).

![Создание копии файла lab5-2.asm](image/34.PNG)

Теперь сделаем так, чтобы этот код также выводил тот текст, что получит на ввод. Для этого перед последней строкой добавим строчку, которая записывает в eax адрес buf1, а также строчку, которая вызывает подпрограмму sprintLF (рис. 3.5).

![Изменение файла lab5-2-1.asm](image/35.PNG)

Теперь запустим программу и убедимся, что она работает (рис. 3.6).

![Запуск lab5-2-1.asm](image/36.PNG)

# Выводы

В результате выполнения работы были получены навыки работы с Midnight commander, а также навыки написания простых программ ввода-вывода на языке ассемблера

