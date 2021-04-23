# myTinyTodo pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/mytinytodo.svg)](https://dash.yunohost.org/appci/app/mytinytodo) ![](https://ci-apps.yunohost.org/ci/badges/mytinytodo.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/mytinytodo.maintain.svg)  
[![Installer myTinyTodo pour YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mytinytodo)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer myTinyTodo rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Un moyen simple de gérer votre liste de tâches dans le style AJAX. Écrit en PHP et jQuery. Données stockées dans la base de données MySQL.

**Version incluse :** 1.6.4

## Captures d'écran

![](http://www.mytinytodo.net/images/shot-v14b1.png)

## Démo

* [Démo officielle](http://www.mytinytodo.net/demo/)

## Configuration

Comment configurer cette application : via le panneau d'administration.

## Documentation

 * Documentation officielle : https://www.mytinytodo.net/faq.php
 * Documentation YunoHost : Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? **Non**
* L'application peut-elle être utilisée par plusieurs utilisateurs ? **Non**

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mytinytodo.svg)](https://ci-apps.yunohost.org/ci/apps/mytinytodo/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mytinytodo.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mytinytodo/)

## Limitations

* Limitations connues.

## Informations additionnelles

* Autres informations que vous souhaitez ajouter sur cette application.

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/mytinytodo_ynh/issues
 * Site de l'application : http://www.mytinytodo.net/
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mytinytodo -u https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
```
