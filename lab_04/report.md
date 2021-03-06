---
# Front matter
lang: ru-RU
title: "Отчёт по лабораторной работе №4"
subtitle: "Модель гармонических колебаний"
author: "Абакумов Егор Александрович"

# Formatting
toc-title: "Содержание"
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4paper
documentclass: scrreprt
polyglossia-lang: russian
polyglossia-otherlangs: english
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase
indent: true
pdf-engine: lualatex
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Промоделировать гармонические колебания осциллятора. Отработать навыки моделирования систем дифференциальных уравнений.

# Теоретическое введение

Движение грузика на пружинке, маятника, заряда в электрическом контуре, а также эволюция во времени многих систем в физике, химии, биологии и других науках при определенных предположениях можно описать одним и тем же дифференциальным уравнением, которое в теории колебаний выступает в качестве основной модели. Эта модель называется линейным гармоническим осциллятором.

Уравнение свободных колебаний гармонического осциллятора имеет следующий вид:

$$\ddot{x} + 2\gamma \dot{x} + \omega_0^2x = 0$$

Здесь $x$ – переменная, описывающая состояние системы (смещение грузика, заряд конденсатора и т.д.), $\gamma$ – параметр, характеризующий потери энергии (трение в механической системе, сопротивление в контуре), $\omega_0$ – собственная частота колебаний, $t$ – время. ($\ddot{x} = \frac {\partial^2x}{\partial t^2}, \dot{x} = \frac {\partial x}{\partial t}$)

Данное уравнение есть линейное однородное дифференциальное уравнение второго порядка и оно является примером линейной динамической системы. Его можно представить в виде системы двух уравнений первого порядка:

$$ \left {\begin{matrix} \dot{x} = y \ \dot{y} = -2\gamma \dot{x} -\omega_0^2x \end{matrix}\right.$$

Независимые переменные x, y определяют пространство, в котором «движется» решение. Это фазовое пространство системы, поскольку оно двумерно будем называть его фазовой плоскостью.

Значение фазовых координат x, y в любой момент времени полностью определяет состояние системы. Решению уравнения движения как функции времени отвечает гладкая кривая в фазовой лоскости. Она называется фазовой траекторией. Если множество различных решений (соответствующих различным начальным условиям) изобразить на одной фазовой плоскости, возникает общая картина поведения системы. Такую картину, образованную набором фазовых траекторий, называют фазовым портретом.

# Задание

Вариант 50

Постройте фазовый портрет гармонического осциллятора и решение уравнения гармонического осциллятора для следующих случаев

  1. Колебания гармонического осциллятора без затуханий и без действий внешней силы

$$\dot{x} + 3.5x = 0$$

  2. Колебания гармонического осциллятора c затуханием и без действий внешней силы

$$\ddot{x} + 11\dot{x} + 11x = 0$$

  3. Колебания гармонического осциллятора c затуханием и под действием внешней силы

$$\ddot{x} + 12\dot{x} + x = 2cos(0.5t)$$

На интервале $t\in [0; 51]$ (шаг 0.05) с начальными условиями $x_0 = 0, y_0 = -1.2$

# Выполнение лабораторной работы

На основе полученного варианта пишем код (fig. -@fig:001).
Здесь каждая функция обозначает одну из ситуаций, res 1-3 - переменные для уравнений, а gr 1-3 - переменные для графиков. 

![Код программы](image/01.jpg){ #fig:001 width=70% }

Полученные графики представленны на иллюстрациях (fig. -@fig:002 - -@fig:004). 

![График 1](image/02.jpg){ #fig:002 width=70% }

![График 2](image/03.jpg){ #fig:003 width=70% }

![График 3](image/04.jpg){ #fig:004 width=70% }

# Выводы

В ходе работы был успешно промоделирован осциллятор, отработаны навыки моделирования систем дифференциальных уравнений.

# Ответы на контрольные вопросы

 1. x'' + Ax + Bx = 0, где А - удвоенный параметр потери энергии, а В - квадрат частоты колебаний.

 2. Осциллятор - система, совершающая гармонические колебания.

 3. x'' + Bx = 0.

 4. x'' + Ax' + Bx = C <=> x'=y; y' = C - Ax' - Bx.

 5.  
 	 - Фазовая траектория - набор состояний системы, выраженный в виде точек.
     - Фазовый портрет - совокупность точек фазовой траектории на графике.