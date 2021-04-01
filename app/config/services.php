<?php
use Phalcon\Mvc\Model\Metadata\Memory as MetaDataAdapter;
use Phalcon\Mvc\Url as UrlResolver;
use Phalcon\Session\Adapter\Files as SessionAdapter;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Mvc\Router;
use Phalcon\Mvc\Dispatcher as MvcDispatcher;
use Phalcon\Events\Manager as EventsManager;
/**
 * Shared configuration service
 */
$di->setShared('config', function () {
    return include APP_PATH . "/config/config.php";
});

/**
 * Database connection is created based in the parameters defined in the configuration file
 */
$di->setShared('db', function () {
    $config = $this->getConfig();

    $class = 'Phalcon\Db\Adapter\Pdo\\' . $config->database->adapter;
    $params = [
        'host'     => $config->database->host,
        'username' => $config->database->username,
        'password' => $config->database->password,
        'dbname'   => $config->database->dbname,
        'charset'  => $config->database->charset
    ];

    if ($config->database->adapter == 'Postgresql') {
        unset($params['charset']);
    }

    $connection = new $class($params);

    return $connection;
});

/**
 * If the configuration specify the use of metadata adapter use it or use memory otherwise
 */
$di->setShared('modelsMetadata', function () {
    return new MetaDataAdapter();
});
/**
 * The URL component is used to generate all kinds of URLs in the application
 */
$di->setShared('url', function () {
    $config = $this->getConfig();

    $url = new UrlResolver();
    $url->setBaseUri($config->application->baseUri);

    return $url;
});

/**
 * Starts the session the first time some component requests the session service
 */
$di->setShared('session', function () {
    $session = new SessionAdapter();
    $session->start();

    return $session;
});
/**
 * Registering a router
 */
$di->setShared('router', function () {
    $router = new Router();
    $router->setDefaultModule('index');
    return $router;
});
/**
 * Set the default namespace for dispatcher
 */
$di->setShared('dispatcher',function()use ($di){
    $eventsManager = new EventsManager();
    $eventsManager->attach("dispatch:beforeException",
        function ($event, $dispatcher, $exception)use ($di) {
            if ($di->getConfig()->system->debug === false) {
                switch ($exception->getCode()) {
                    case Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:
                    case Dispatcher::EXCEPTION_ACTION_NOT_FOUND:
                        $dispatcher->forward(['controller' => 'error','action'=>'show404']);
                        break;
                    default:
                        $dispatcher->forward(['controller' => 'error','action'=> 'show404']);
                }
                return false;
            }
        }
    );
    $eventsManager->attach(
        "dispatch:beforeDispatchLoop",
        function ($event, $dispatcher)use ($di){
            $begin = new \App\Behavior\begin();
            $begin->run($di,$dispatcher);
        }
    );
    $dispatcher = new MvcDispatcher();
    $dispatcher->setDefaultNamespace('App\Modules\Index\Controllers');
    $dispatcher->setEventsManager($eventsManager);
    return $dispatcher;
});
/**
 * model Cache
 */
$di->set('modelsCache',function(){
    $config = $this->getConfig();
    $frontCache = new Phalcon\Cache\Frontend\Data([
        "lifetime" => $config->system->cache_time  //全局默认有效时间
    ]);
    $cache = new Phalcon\Cache\Backend\Apc($frontCache);
    return $cache;
});
/**
 * Configure the Volt service for rendering .volt templates
 */
$di->setShared('voltShared', function ($view) {
    $config = $this->getConfig();

    $volt = new \App\Tools\BaseVolt($view, $this);
    $volt->setOptions([
        'compileAlways' => $config->system->debug,
        'compiledPath' => function($templatePath) use ($config) {
            $basePath = $config->application->appDir;
            if ($basePath && substr($basePath, 0, 2) == '..') {
                $basePath = dirname(__DIR__);
            }

            $basePath = realpath($basePath);
            $templatePath = trim(substr($templatePath, strlen($basePath)), '\\/');

            $filename = basename(str_replace(['\\', '/'], '_', $templatePath), '.volt') . '.php';

            $cacheDir = $config->application->cacheDir;
            if ($cacheDir && substr($cacheDir, 0, 2) == '..') {
                $cacheDir = __DIR__ . DIRECTORY_SEPARATOR . $cacheDir;
            }

            $cacheDir = realpath($cacheDir);

            if (!$cacheDir) {
                $cacheDir = sys_get_temp_dir();
            }

            if (!is_dir($cacheDir . DIRECTORY_SEPARATOR . 'volt' )) {
                @mkdir($cacheDir . DIRECTORY_SEPARATOR . 'volt' , 0755, true);
            }

            return $cacheDir . DIRECTORY_SEPARATOR . 'volt' . DIRECTORY_SEPARATOR . $filename;
        }
    ]);
    $volt->initFunction();//注册自定义函数
    return $volt;
});