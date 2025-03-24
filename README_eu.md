<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# myTinyTodo YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/mytinytodo)](https://ci-apps.yunohost.org/ci/apps/mytinytodo/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/mytinytodo)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/mytinytodo)

[![Instalatu myTinyTodo YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mytinytodo)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek myTinyTodo YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

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


**Paketatutako bertsioa:** 1.8.1~ynh4

**Demoa:** <https://www.mytinytodo.net/demo/>

## Pantaila-argazkiak

![myTinyTodo(r)en pantaila-argazkia](./doc/screenshots/shot-v14b1.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <http://www.mytinytodo.net/>
- Administratzaileen dokumentazio ofiziala: <https://www.mytinytodo.net/faq.php>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/maxpozdeev/mytinytodo>
- YunoHost Denda: <https://apps.yunohost.org/app/mytinytodo>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/mytinytodo_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
edo
sudo yunohost app upgrade mytinytodo -u https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
