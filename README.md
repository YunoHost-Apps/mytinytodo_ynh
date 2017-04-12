# myTinyTodo for Yunohost / LaBriqueInter.net

  * en : A **simple** way to manage your todo list. 
  * fr : Un simple, mais **efficace** script de gestion de todo list (*GTD*).
  * [Original Site](http://www.mytinytodo.net/)
   * [Demo](http://www.mytinytodo.net/demo/)
   * [Demo for mobile](http://www.mytinytodo.net/demo/?pda)
  * Auteur : Max Pozdeev

## En image :

![capture mytinytodo](http://www.mytinytodo.net/images/shot-v14b1.png)

## Francais :

Pour le moment, je pars sur une installation simple.

  * pas de multi-instance,
  * mysql/mariadb uniquement (pas de sqlite),
  * gestion des langues 
   * fr : French
   * en : English
   * de : German
   * ru : Russian
   * ar : Arabic
   * zh-cn : Chinese (Simplified)

## Anglais :

   * Multiple lists
   * Task notes
   * Tags (and tag cloud)
   * Due dates (input format: y-m-d, m/d/y, d.m.y, m/d, d.m)
   * Priority (-1, 0, +1, +2)
   * Different sortings including sort by drag-and-drop
   * Search
   * Password protection
   * Smart syntax improves creation of tasks
    * (usage: /priority/ Task /tags/)
   * Print-friendly CSS
   * Style for mobiles devices 

## Mise à jour :

  * Juste pour moi, le projet n'a pas bougé depuis plusieurs années, si il y a des modifications, je ferais une archive maison.
  * La mise a jour n'utilisera pas le mécanisme d'origine (setup.php)

```bash
yunohost app upgrade --verbose mytinytodo -u https://github.com/plabuse/mytinytodo_ynh
```


## Astuces :

  * Pour saisir rapidement une tâche, avec une priorité et des mots clefs

```python
/+2/ Faire la traduction en anglais du README.md /#yunohost, mytinytodo/
```

