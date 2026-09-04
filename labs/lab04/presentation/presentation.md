---
lang: ru-RU
title: Лабораторная работа №4
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
- Тема: продвинутое использование git (git-flow)

:::
::: {.column width="30%"}

![](../../../photo.png)

:::
::::::::::::::

# Цель работы

## Цель работы

- Получение навыков правильной работы с репозиториями git

# Задание

## Задание

- Освоить git-flow на тестовом репозитории
- Преобразовать рабочий репозиторий на git-flow и conventional commits

# Выполнение работы
## Установка gitflow

Включаем COPR-репозиторий, устанавливаем `gitflow`.

![](photos/1.png){width=55%}

## Node.js и commitizen

Устанавливаем Node.js, pnpm, глобально `commitizen`.

![](photos/2.png){width=55%}

## standard-changelog

Устанавливаем `standard-changelog`, создаём тестовый репозиторий.

![](photos/3.png){width=55%}

## Индекс и адаптер

Добавляем файл в индекс, ставим адаптер `cz-conventional-changelog`.

![](photos/4.png){width=55%}

## package.json

Инициализируем `package.json`.

![](photos/5.png){width=55%}

## Настройка commitizen

Добавляем блок `config.commitizen` в `package.json`.

![](photos/6.png){width=55%}

## Первый коммит через cz

`git add .`, `git cz` — выбираем тип `feat`.

![](photos/7.png){width=55%}

## Диалог commitizen

Проходим диалог: область, описание, breaking changes.

![](photos/8.png){width=55%}

## git flow init

Отправляем коммит, инициализируем git-flow.

![](photos/9.png){width=55%}

## Начало релиза

`git push --all`, начинаем релиз 1.0.0, генерируем CHANGELOG.

![](photos/10.png){width=55%}

## Завершение релиза

`git flow release finish 1.0.0`, сообщение для тега.

![](photos/11.png){width=55%}

## Push веток и тегов

`git push --all`, `git push --tags`.

![](photos/12.png){width=55%}

## GitHub release

Создаём релиз на GitHub через `gh release create`.

![](photos/13.png){width=55%}

## Feature-ветка

Создаём ветку для новой функциональности.

![](photos/14.png){width=55%}

## Завершение feature и релиз 1.2.3

Завершаем feature, начинаем релиз 1.2.3.

![](photos/15.png){width=55%}

## Завершение второго релиза

`git flow release finish 1.2.3`.

![](photos/16.png){width=55%}

## Push второго релиза

Отправляем ветки и теги второго релиза.

![](photos/17.png){width=55%}

## Второй GitHub release

Создаём второй релиз на GitHub.

![](photos/18.png){width=55%}

# Выводы

## Выводы

- Изучена модель ветвления Gitflow и Conventional Commits
- Проведён полный цикл разработки: feature-ветка и два релиза с автогенерацией changelog
