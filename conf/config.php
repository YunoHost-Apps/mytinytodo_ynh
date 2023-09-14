<?php

/*
  Uncomment the line with MTT_DB_TYPE if you make clean install only.
  Leave it commented (with # at start) if you are upgrading from version before 1.7.
  Select the database type: sqlite or mysql or postgres.
*/

define("MTT_DB_TYPE", "mysql");

define("MTT_DB_HOST", "localhost");

define("MTT_DB_NAME", "__DB_NAME__");

define("MTT_DB_USER", "__DB_USER__");

define("MTT_DB_PASSWORD", "__DB_PWD__");

define("MTT_DB_PREFIX", "");

// set mysqli if needed
define("MTT_DB_DRIVER", "mysqli");

define("MTT_SALT", "__SALT__");
