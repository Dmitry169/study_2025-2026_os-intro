---
lang: ru-RU
title: Лабораторная работа №1
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
- Тема: установка и настройка ОС на виртуальную машину

:::
::: {.column width="30%"}

![](../../../photo.png)

:::
::::::::::::::

# Цель работы

## Цель работы

- Установить ОС на виртуальную машину и настроить её после установки

# Задание

## Задание

- Установить Fedora Sway на VirtualBox
- Настроить SELinux
- Настроить раскладку клавиатуры
- Задать имя пользователя и хоста

# Выполнение работы
## Скачивание VirtualBox

Скачиваем VirtualBox с официального сайта.

![](photos/1.png){width=55%}

## Скачивание образа

Скачиваем образ Fedora Sway Spin.

![](photos/2.png){width=55%}

## VirtualBox готов

VirtualBox установлен, менеджер готов к работе.

![](photos/3.png){width=55%}

## Параметры ВМ

Настраиваем параметры виртуальной машины.

![](photos/4.png){width=55%}

## Память и CPU

Задаём объём памяти и число CPU при создании ВМ.

![](photos/5.png){width=55%}

## Язык установки

Выбираем язык установки в установщике Fedora.

![](photos/6.png){width=55%}

## Запуск установщика

Инструкция по запуску установщика на Live-рабочем столе.

![](photos/7.png){width=55%}

## Первый вход

Первый вход в систему после установки, сессия Sway.

![](photos/8.png){width=55%}

## Рабочий стол

Рабочий стол Fedora после входа.

![](photos/9.png){width=55%}

## Средства разработки

Устанавливаем `sudo dnf -y group install development-tools`.

![](photos/10.png){width=55%}

## Обновление системы

Обновляем систему: `sudo dnf -y update`.

![](photos/11.png){width=55%}

## dnf-automatic

Устанавливаем `dnf-automatic`.

![](photos/12.png){width=55%}

## tmux и mc

Устанавливаем `tmux` и `mc`.

![](photos/13.png){width=55%}

## sudo -i

Переключаемся на суперпользователя.

![](photos/14.png){width=55%}

## Таймер автообновления

Включаем `dnf-automatic.timer`.

![](photos/15.png){width=55%}

## SELinux config

Просматриваем `/etc/selinux/config`.

![](photos/16.png){width=55%}

## Permissive

Меняем `SELINUX=enforcing` на `permissive`.

![](photos/17.png){width=55%}

## Перезагрузка

Перезагружаем ВМ.

![](photos/18.png){width=55%}

## Раскладка — конфиг

Создаём конфиг раскладки клавиатуры для Sway.

![](photos/19.png){width=55%}

## Раскладка — правка

Редактируем конфиг sway, снова заходим под sudo.

![](photos/20.png){width=55%}

## xorg keyboard

Редактируем `/etc/X11/xorg.conf.d/00-keyboard.conf` (us,ru).

![](photos/21.png){width=55%}

## Имя пользователя и хоста

Меняем имя пользователя и хоста.

![](photos/22.png){width=55%}

## Установка pandoc

Устанавливаем `pandoc`.

![](photos/23.png){width=55%}

## TeX Live

Устанавливаем TeX Live для сборки отчётов.

![](photos/24.png){width=55%}

## dmesg

Смотрим вывод `dmesg` для домашнего задания.

![](photos/25.png){width=55%}

# Выводы

## Выводы

- Установлена и настроена Fedora Sway на ВМ
- Обновлена система, настроены автообновление, SELinux, раскладка
- Изменены имя пользователя и хоста, установлено ПО для отчётов
