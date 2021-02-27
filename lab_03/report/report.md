---
# Front matter
lang: ru-RU
title: "Отчёт по лабораторной работе №3"
subtitle: "Модель боевых действий"
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

Промоделировать ход боевых действий между двумя армиями. Отработать навыки моделирования систем дифференциальных уравнений.

# Теоретическое введение

Рассмотрим некоторые простейшие модели боевых действий – модели
Ланчестера. В противоборстве могут принимать участие как регулярные войска,
так и партизанские отряды. В общем случае главной характеристикой соперников
являются численности сторон. Если в какой-то момент времени одна из
численностей обращается в нуль, то данная сторона считается проигравшей (при
условии, что численность другой стороны в данный момент положительна).

Рассмотрим два случая ведения боевых действий:

1. Боевые действия между регулярными войсками

2. Боевые действия с участием регулярных войск и партизанских
отрядов

В первом случае численность регулярных войск определяется тремя
факторами:

- скорость уменьшения численности войск из-за причин, не связанных с
боевыми действиями (болезни, травмы, дезертирство);

- скорость потерь, обусловленных боевыми действиями
противоборствующих сторон (что связанно с качеством стратегии,
уровнем вооружения, профессионализмом солдат и т.п.);

- скорость поступления подкрепления (задаётся некоторой функцией от
времени).

В этом случае модель боевых действий между регулярными войсками
описывается следующим образом (fig. -@fig:001)

![Система для регулярных войск](image/01.jpg){ #fig:001 width=70% }

Потери, не связанные с боевыми действиями, описывают члены -a(t)x(t) и -h(t)y(t)
, члены -b(t)y(t) и -c(t)x(t) отражают потери на поле боя.
Коэффициенты b(t) и c(t) указывают на эффективность боевых действий со
стороны у и х соответственно, a(t), h(t) - величины, характеризующие степень
влияния различных факторов на потери. Функции R(t), Q(t) учитывают 
возможность подхода подкрепления к войскам Х и У в течение одного дня.

Во втором случае в борьбу добавляются партизанские отряды. Нерегулярные
войска в отличии от постоянной армии менее уязвимы, так как действуют скрытно,
в этом случае сопернику приходится действовать неизбирательно, по площадям,
занимаемым партизанами. Поэтому считается, что тем потерь партизан,
проводящих свои операции в разных местах на некоторой известной территории,
пропорционален не только численности армейских соединений, но и численности
самих партизан. В результате модель принимает следующий вид (fig. -@fig:002)

![Система для партизан и регулярных](image/02.jpg){ #fig:002 width=70% }

В этой системе все величины имеют тот же смысл, что и в первой системе.

# Задание

Вариант 50

Между страной Х и страной У идет война. Численность состава войск
исчисляется от начала войны, и являются временными функциями x(t) и y(t). В
начальный момент времени страна Х имеет армию численностью 61100 человек, а
в распоряжении страны У армия численностью в 45400 человек. Для упрощения
модели считаем, что коэффициенты a, b, c, h постоянны. Также считаем P(t) и Q(t)
непрерывными функциями.

Постройте графики изменения численности войск армии Х и армии У для
двух случаев:

1. Модель боевых действий между регулярными войсками (fig. -@fig:003)

![Система для регулярных войск](image/03.jpg){ #fig:003 width=70% }

2. Модель ведение боевых действий с участием регулярных войск и
партизанских отрядов (fig. -@fig:004)

![Система для партизан и регулярных](image/04.jpg){ #fig:004 width=70% }

# Выполнение лабораторной работы

На основе полученного варианта пишем код (fig. -@fig:005).
Здесь forces - начальная численность войск, t - временной интервал, 
функции regular и mixed обозначают системы уравнений для битвы регулярных и для смешанных войс соответственно, 
а graph1 и graph2 - переменные для графиков.

![Код программы](image/05.jpg){ #fig:005 width=70% }

Полученные графики представленны на иллюстрации (fig. -@fig:006). 

![Графики](image/06.jpg){ #fig:006 width=70% }

# Выводы

В ходе работы был успешно промоделирован ход боевых действий, отработаны навыки моделирования систем дифференциальных уравнений.