# myTinyTodo for YunoHost

[![Integration level](https://dash.yunohost.org/integration/mytinytodo.svg)](https://dash.yunohost.org/appci/app/mytinytodo) ![](https://ci-apps.yunohost.org/ci/badges/mytinytodo.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/mytinytodo.maintain.svg)  
[![Install myTinyTodo with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mytinytodo)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install myTinyTodo quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview
Simple way to manage your todo list in AJAX style. Written in PHP and jQuery. Data stored in MySQL database.

**Shipped version:** 1.6.4

## Screenshots

![](http://www.mytinytodo.net/images/shot-v14b1.png)

## Demo

* [Official demo](http://www.mytinytodo.net/demo/)

## Configuration

 * How to configure this app: From an admin panel.

## Documentation

 * Official documentation: https://www.mytinytodo.net/faq.php
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

* Are LDAP and HTTP auth supported?
* Can the app be used by multiple users?

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mytinytodo.svg)](https://ci-apps.yunohost.org/ci/apps/mytinytodo/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mytinytodo.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mytinytodo/)

## Limitations

* Any known limitations.

## Additional information

* Other info you would like to add about this app.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/mytinytodo_ynh/issues
 * App website: http://www.mytinytodo.net/
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
or
sudo yunohost app upgrade mytinytodo -u https://github.com/YunoHost-Apps/mytinytodo_ynh/tree/testing --debug
```
