<?php

define('APP_PATH',      __DIR__ . '/../simple-onethink/wwwroot/Application/' );
define('RUNTIME_PATH',  __DIR__ . '/../Runtime/' );

chdir(__DIR__ . '/../simple-onethink/wwwroot');
#################################################################

define('APP_DEBUG', true );
define('BIND_MODULE','Admin');

require './ThinkPHP/ThinkPHP.php';
