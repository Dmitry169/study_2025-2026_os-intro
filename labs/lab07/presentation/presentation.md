---
lang: ru-RU
title: Лабораторная работа №7
subtitle: Операционные системы
author:
  - Савкин Д. В.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 02 сентября 2026

babel-lang: russian
toc: false
slide_level: 2
aspectratio: 169
theme: metropolis
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

- Савкин Дмитрий Вадимович
- РУДН, группа НПИбд-02-25
- Тема: анализ файловой системы Linux

:::
::: {.column width="30%"}

![](../../../photo.png)

:::
::::::::::::::

# Цель работы

## Цель работы

- Изучить файловую систему Linux, команды работы с файлами и правами доступа

# Задание

## Задание

- Копирование/перемещение файлов, подбор прав доступа chmod
- Изучение mount, fsck, df

# Выполнение работы
## Копирование файла

Копируем `/usr/include/sys/io.h` в `~/equipment`.

![](photos/1.png){width=55%}

## Новый каталог

Создаём `~/ski.plases`, перемещаем `equipment` туда.

![](photos/2.png){width=55%}

## Переименование

Переименовываем в `equiplist`.

![](photos/3.png){width=55%}

## Второй файл

Создаём `~/abc1`, копируем как `equiplist2`.

![](photos/4.png){width=55%}

## Подкаталог equipment

Создаём подкаталог `equipment` внутри `ski.plases`.

![](photos/5.png){width=55%}

## Перемещение equiplist*

Перемещаем оба `equiplist*` в новый подкаталог.

![](photos/6.png){width=55%}

## newdir → plans

Создаём `~/newdir` и перемещаем в `~/ski.plases/plans`.

![](photos/7.png){width=55%}

## Подбор прав chmod

Подбираем `chmod` для целевых прав четырёх файлов с нуля.

![](photos/8.png){width=55%}

## /etc/password

Просматриваем файл `/etc/password`.

![](photos/9.png){width=55%}

## Серия cp/mv/chmod

Проверяем поведение файлов после отнятия прав чтения/выполнения.

![](photos/10.png){width=55%}

## man mount/fsck/mkfs/kill

Изучаем справку по командам работы с файловой системой и процессами.

![](photos/11.png){width=40%} ![](photos/12.png){width=40%}

# Выводы

## Выводы

- Изучена структура файловой системы Linux
- Получены навыки работы с правами доступа и командами cp/mv/chmod
