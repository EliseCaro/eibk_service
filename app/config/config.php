<?php
/*
 * Modified: prepend directory path of current file, because of this file own different ENV under between Apache and command line.
 * NOTE: please remove this comment.
 */
defined('BASE_PATH') || define('BASE_PATH', getenv('BASE_PATH') ?: realpath(dirname(__FILE__) . '/../..'));
defined('APP_PATH') || define('APP_PATH', BASE_PATH . '/app');
defined('MEDIAWIKI_PATH') || define("MEDIAWIKI_PATH", BASE_PATH."/wiki/");//语言转换工具
defined('URL_CALLBACK') || define('URL_CALLBACK', 'http://www.eibk.com/index/sing/callback?type=');//第三方登录回掉地址
return new \Phalcon\Config([
    'version' => '1.0',
    'database' => [
        'adapter'  => 'Mysql',
        'host'     => '',// 填写链接地址：例如：127.0.0.1
        'username' => '',// 填写数据库用户名：例如：root
        'password' => '',// 填写数据库密码
        'dbname'   => 'eibk',
        'prefix'   => 'ek_',
        'charset'  => 'utf8',
    ],
    'application' => [
        'appDir'         => APP_PATH . '/',
        'modelsDir'      => APP_PATH . '/common/models/common/',//临时
        'controllersDir' => APP_PATH . '/modules/index/controllers/',//临时
        'cacheDir'       => BASE_PATH . '/cache/',
        'baseUri'        => '/',
    ],
    'modules'=>[
        'index' => [
            'className' => 'App\Modules\Index\Module',
            'ModulePath'=>APP_PATH . '/modules/index/Module.php',
        ],
        'api' => [
            'className' => 'App\Modules\Api\Module',
            'ModulePath'=>APP_PATH . '/modules/api/Module.php',
        ],
    ],
    'namespaces'=>[
        'App\Models' => APP_PATH . '/common/models/',
        'App\Tools' => APP_PATH . '/common/tools/',
        'App\Behavior' => APP_PATH . '/common/behavior/',
        'App\Controller' => APP_PATH . '/common/controller/',
        'App\Service' => APP_PATH . '/common/service/',
    ],

    'system'=>[
        'cache_time' =>86400,//缓存时间
        'debug'=>true,//调试模式
         //上传配置
        'static_domain'=>'http://static.xxx.com',// 填写七牛自定义域名
        'q_access_key'=>'',                      // 填写七牛AccessKey
        'q_secret_key'=>'',                      // 填写七牛SecretKey
        'q_bucket'=>'',                          // 填写七牛空间名
        'q_bucket_md'=>'',                       // 填写七牛媒体处理任务名
        'q_server'=>'http://up.qiniu.com',
        'vd_accept'=>"mp4,flv,mkv,mov,rmvb"
    ],
    'web'=>[
        'paginate_count'=>10,//分页数量
    ],
    'printNewLine' => true,

]);
