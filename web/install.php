<?php

$app_root    = dirname(realpath('.'));

define('APP_PATH',      $app_root . '/simple-onethink/wwwroot/Application/' );
define('RUNTIME_PATH',  $app_root . '/Runtime/' );

chdir($app_root . '/simple-onethink/wwwroot');
#################################################################

require './install.php';
