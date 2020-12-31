# myTinyTodo for YunoHost

[![Integration level](https://dash.yunohost.org/integration/mytinytodo.svg)](https://dash.yunohost.org/appci/app/mytinytodo) ![](https://ci-apps.yunohost.org/ci/badges/mytinytodo.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/mytinytodo.maintain.svg)  
[![Install mytinytodo with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mytinytodo)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install mytinytodo quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Quick description of this app.

**Shipped version:** 1.6.3

## Screenshots

![](http://www.mytinytodo.net/images/shot-v14b1.png)

## Demo

* [Official demo](http://www.mytinytodo.net/demo/)

## Configuration

 Default login
  user:     **admin**
  password: **admin**

## Documentation

 * Official documentation: Link to the official documentation of this app
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

Are LDAP and HTTP auth supported?
Can the app be used by multiple users?

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mytinytodo%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/mytinytodo/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mytinytodo%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mytinytodo/)

## Limitations

* Any known limitations.

## Additional information

* Other info you would like to add about this app.

**More info on the documentation page:**  
https://yunohost.org/packaging_apps

## Links

 * Report a bug: https://github.com/YunoHost-Apps/mytinytodo_ynh/issues
 * App website: http://www.mytinytodo.net/
 * Upstream app repository: Link to the official repository of the upstream app.
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
