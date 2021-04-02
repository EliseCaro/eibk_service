<?php

header('Access-Control-Allow-Origin:*');
header('Access-Control-Allow-Headers:content-type');
header('Access-Control-Request-Method:GET,POST');

use Phalcon\Di\FactoryDefault;
use Phalcon\Mvc\Application;
date_default_timezone_set("Asia/Shanghai");
define('BASE_PATH', dirname(__DIR__));
define('APP_PATH', BASE_PATH . '/app');

try {

    /**
     * The FactoryDefault Dependency Injector automatically registers the services that
     * provide a full stack framework. These default services can be overidden with custom ones.
     */
    $di = new FactoryDefault();

    /**
     * Include general services
     */
    require APP_PATH . '/config/services.php';

    /**
     * Get config service for use in inline setup below
     */
    $config = $di->getConfig();

    /**
     * Include Autoloader
     */
    include APP_PATH . '/config/loader.php';

    /**
     * Handle the request
     */
    $application = new Application($di);

    /**
     * Register application modules
     */
    $registerModules=[];
    $modules = $config->modules->toArray();
    foreach ($modules as $key=>$value){$registerModules[$key] = ['className' =>$value['className']];}
    $application->registerModules($registerModules);

    /**
     * Include routes
     */
    require APP_PATH . '/config/routes.php';

    echo $application->handle()->getContent();

} catch (\Exception $e) {
    echo $e->getMessage() . '<br>';
    echo '<pre>' . $e->getTraceAsString() . '</pre>';
}
