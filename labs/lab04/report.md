---
bibliography: cite.bib
csl: gost-r-7-0-5-2008-numeric.csl
## Author
author:
  name: Савкин Дмитрий Вадимович
  affiliation:
    - name: Российский университет дружбы народов
      country: Российская Федерация
      city: Москва

## Title
title: "Отчёт по лабораторной работе № 4"
subtitle: "Продвинутое использование git"
license: "CC BY"
---
# Введение

## Актуальность

Модель git-flow и Conventional Commits — общепринятая практика организации командной разработки с предсказуемой историей релизов.

## Цель работы

Получение навыков правильной работы с репозиториями git.

## Задачи

- Выполнить работу для тестового репозитория.
- Преобразовать рабочий репозиторий в репозиторий с git-flow и conventional commits.

## Объект и предмет исследования

Объект — git-репозиторий; предмет — модель ветвления git-flow и формат коммитов Conventional Commits.

## Методы исследования

Эмпирический метод: практическое выполнение заданий в виртуальной машине Fedora Linux с фиксацией результатов скриншотами и видеозаписью.

## Схема выполнения работы

Работа выполнялась по стандартной схеме курса: выполнение действия в виртуальной машине, фиксация скриншотом, занесение в отчёт, публикация в git-репозиторий отдельным релизом.

# Теоретическая часть

Git-flow — модель ветвления для Git (Vincent Driessen), разделяющая разработку на долгоживущие ветки master/develop и вспомогательные ветки feature/release/hotfix. Conventional Commits — соглашение об оформлении сообщений коммитов (`<тип>(<область>): <описание>`), облегчающее автоматическую генерацию журнала изменений (changelog) и семантическое версионирование.

Более подробно см. в [@gitdocs].

# Материалы и методы

Используемое ПО и оборудование: хост-машина под управлением Windows, гипервизор VirtualBox, виртуальная машина с Fedora Linux (Sway), стандартные утилиты дистрибутива.

# Выполнение лабораторной работы

Включаем COPR-репозиторий и устанавливаем `gitflow`: `dnf copr enable elegos/gitflow`, `dnf install gitflow`.

![Включаем COPR-репозиторий и устанавливаем `gitflow`: `dnf copr enable elegos/gitflow`, `dnf install gitflow`](фото/1.png){width=70%}

Устанавливаем Node.js и pnpm, настраиваем окружение и глобально ставим `commitizen`: `dnf install nodejs`, `dnf install pnpm`, `pnpm setup`, `source ~/.bashrc`, `pnpm add -g commitizen`.

![Устанавливаем Node.js и pnpm, настраиваем окружение и глобально ставим `commitizen`: `dnf install nodejs`, `dnf install pnpm`, `pnpm setup`, `source ~/.bashrc`, `pnpm add -g commitizen`](фото/2.png){width=70%}

Устанавливаем `standard-changelog` и создаём тестовый репозиторий: `pnpm add -g standard-changelog`, `mkdir ~/git-extended && cd ~/git-extended`, `git init -b master`, `echo "test" > readme.txt`.

![Устанавливаем `standard-changelog` и создаём тестовый репозиторий: `pnpm add -g standard-changelog`, `mkdir ~/git-extended && cd ~/git-extended`, `git init -b master`, `echo "test" > readme.txt`](фото/3.png){width=70%}

Добавляем файл в индекс и устанавливаем адаптер commitizen для формата коммитов: `git add readme.txt`, `pnpm add -g cz-conventional-changelog`.

![Добавляем файл в индекс и устанавливаем адаптер commitizen для формата коммитов: `git add readme.txt`, `pnpm add -g cz-conventional-changelog`](фото/4.png){width=70%}

Инициализируем `package.json`: `pnpm init`.

![Инициализируем `package.json`: `pnpm init`](фото/5.png){width=70%}

Редактируем `package.json`, добавляя блок `config.commitizen` с путём к адаптеру `cz-conventional-changelog`, а также поля `repository` и `author`.

![Редактируем `package.json`, добавляя блок `config.commitizen` с путём к адаптеру `cz-conventional-changelog`, а также поля `repository` и `author`](фото/6.png){width=70%}

Добавляем все файлы и создаём первый коммит через commitizen вместо обычного `git commit`: `git add .`, `git cz` — выбираем тип изменения `feat`.

![Добавляем все файлы и создаём первый коммит через commitizen вместо обычного `git commit`: `git add .`, `git cz` — выбираем тип изменения `feat`](фото/7.png){width=70%}

Проходим весь диалог commitizen: область изменения, краткое и подробное описание коммита, отметка о breaking changes.

![Проходим весь диалог commitizen: область изменения, краткое и подробное описание коммита, отметка о breaking changes](фото/8.png){width=70%}

Отправляем коммит на GitHub и инициализируем git-flow: `git push`, `git flow init` (префикс тегов `v`).

![Отправляем коммит на GitHub и инициализируем git-flow: `git push`, `git flow init` (префикс тегов `v`)](фото/9.png){width=70%}

Проверяем текущую ветку, отправляем весь репозиторий в хранилище и начинаем релиз версии 1.0.0: `git branch`, `git push --all`, `git flow release start 1.0.0`, генерируем журнал изменений `standard-changelog --first-release`, добавляем и коммитим `CHANGELOG.md`.

![Проверяем текущую ветку, отправляем весь репозиторий в хранилище и начинаем релиз версии 1.0.0: `git branch`, `git push --all`, `git flow release start 1.0.0`, генерируем журнал изменений `standard-changelog --first-release`, добавляем и коммитим `CHANGELOG.md`](фото/10.png){width=70%}

Завершаем релиз: `git flow release finish 1.0.0`, вводим сообщение для тега `Release 1.0.0`.

![Завершаем релиз: `git flow release finish 1.0.0`, вводим сообщение для тега `Release 1.0.0`](фото/11.png){width=70%}

Отправляем ветки и теги на GitHub: `git push --all`, `git push --tags`.

![Отправляем ветки и теги на GitHub: `git push --all`, `git push --tags`](фото/12.png){width=70%}

Создаём релиз на GitHub с описанием из журнала изменений: `gh release create v1.0.0 -F CHANGELOG.md`.

![Создаём релиз на GitHub с описанием из журнала изменений: `gh release create v1.0.0 -F CHANGELOG.md`](фото/13.png){width=70%}

Создаём ветку для новой функциональности: `git flow feature start feature_branch`.

![Создаём ветку для новой функциональности: `git flow feature start feature_branch`](фото/14.png){width=70%}

Завершаем работу над функциональностью и начинаем второй релиз версии 1.2.3: `git flow feature finish feature_branch`, `git flow release start 1.2.3`.

![Завершаем работу над функциональностью и начинаем второй релиз версии 1.2.3: `git flow feature finish feature_branch`, `git flow release start 1.2.3`](фото/15.png){width=70%}

Завершаем второй релиз, вводим сообщение для тега `Release 1.2.3`: `git flow release finish 1.2.3`.

![Завершаем второй релиз, вводим сообщение для тега `Release 1.2.3`: `git flow release finish 1.2.3`](фото/16.png){width=70%}

Отправляем ветки и теги второго релиза на GitHub: `git push --all`, `git push --tags`.

![Отправляем ветки и теги второго релиза на GitHub: `git push --all`, `git push --tags`](фото/17.png){width=70%}

Создаём второй релиз на GitHub: `gh release create v1.2.3 -F CHANGELOG.md`.

![Создаём второй релиз на GitHub: `gh release create v1.2.3 -F CHANGELOG.md`](фото/18.png){width=70%}

# Результаты

В ходе выполнения работы получены следующие объективные результаты: Изучена и опробована на практике модель ветвления Gitflow и принцип общепринятых коммитов (Conventional Commits). Настроены git-flow и commitizen в тестовом репозитории, проведён полный цикл разработки новой функциональности через feature-ветку и два цикла выпуска релизов (1.0.0 и 1.2.3) с автоматической генерацией журнала изменений и публикацией релизов на GitHub.

# Обсуждение результатов

Применение git-flow и Conventional Commits на тестовом репозитории подтвердило ожидаемое поведение: чёткое разделение веток и автоматическая генерация журнала изменений.

# Заключение

Изучена и опробована на практике модель ветвления Gitflow и принцип общепринятых коммитов (Conventional Commits). Настроены git-flow и commitizen в тестовом репозитории, проведён полный цикл разработки новой функциональности через feature-ветку и два цикла выпуска релизов (1.0.0 и 1.2.3) с автоматической генерацией журнала изменений и публикацией релизов на GitHub.

# Список литературы {.unnumbered}

::: {#refs}
:::

# Ответы на контрольные вопросы{.unnumbered}


