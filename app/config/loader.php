<?php

use Phalcon\Loader;

$loader = new Loader;
/**
 * Register Namespaces
 */
$loader->registerNamespaces($config->namespaces->toArray());
/**
 * Register Dirs
 */
$loader->registerDirs([]);
/**
 * Register Class
 */
$loader->registerClasses([
    APP_PATH . '/common/behavior/begin.php',
]);
/**
 * Register Files
 */
$loader->registerFiles([
    APP_PATH . '/common/functions.php',
    BASE_PATH.'/vendor/autoload.php'
]);
/**
 * Register module classes
 */
$register=[];
$modules = $config->modules->toArray();
foreach ($modules as $value){$register[$value['className']] = $value['ModulePath'];}
$loader->registerClasses($register);

$loader->register();
