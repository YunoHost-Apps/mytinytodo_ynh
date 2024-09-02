<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# myTinyTodo для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/mytinytodo.svg)](https://ci-apps.yunohost.org/ci/apps/mytinytodo/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/mytinytodo.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/mytinytodo.maintain.svg)

[![Установите myTinyTodo с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mytinytodo)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить myTinyTodo быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Simple way to manage your todo lists. 

### Features

- Multiple lists
- Task notes
- Tags (and tag cloud)
- Due dates
- Priority (-1, 0, +1, +2)
- Different sortings including sort by drag-and-drop
- Search
- Password protection


**Поставляемая версия:** 1.8.1~ynh1

**Демо-версия:** <https://www.mytinytodo.net/demo/>

## Снимки экрана

![Снимок экрана myTinyTodo](./doc/screenshots/shot-v14b1.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <http://www.mytinytodo.net/>
- Официальная документация администратора: <https://www.mytinytodo.net/faq.php>
- Репозиторий кода главной ветки приложения: <https://github.com/maxpozdeev/mytinytodo>
- Магазин YunoHost: <https://apps.yunohost.org/app/mytinytodo>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/mytinytodo_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
или
sudo yunohost app upgrade mytinytodo -u https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
