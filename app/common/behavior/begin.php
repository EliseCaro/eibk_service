<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 22:15
 */
namespace App\Behavior;
use Phalcon\Config;

class begin
{
    /**
     * 行为初始化
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $di
     * @param $dispatcher
     * @return string
     */
  function run($di,$dispatcher){
      //加载函数库
      $this->load_function($dispatcher);
      //合并配置
       $this->merge_config($di);
      //参数转换
      $this->analysis_params($di,$dispatcher);
      //错误提示
      $this->status_debug($di);
  }

    /**
     * 加载自定义行数
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param $dispatcher
     * @return string
     * @internal param $module
     */
  private function load_function($dispatcher){
      $module = $dispatcher->getModuleName();
      //自定义函数
      if(is_file(APP_PATH."/modules/{$module}/function.php")){
          include_once APP_PATH."/modules/{$module}/function.php";
      }
  }

    /**
     * 处理参数问题
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $di
     * @param $dispatcher
     * @return string
     */
  private function analysis_params($di,$dispatcher){
      $get = $di->get('request')->getQuery();unset($get['_url']);
      $param = $dispatcher->getParams();
      $getParams = [];
      foreach ($param as $key => $value) {
          if ($key % 2 != 0) {
              $getParams[$param[$key - 1]] = $value;
          } else {
              $getParams[$value] = false;
          }
      }
      $getParams = array_merge($getParams,$get);
      $dispatcher->setParams($getParams);
  }

    /**
     * 合并配置 TODO
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $di
     */
  private function merge_config($di){
      $config = $di->getConfig()->toArray();
      $config = array_merge($config,['abdbdbdb'=>'1111']);
      $di->setConfig(new Config($config));
  }

    /**
     * 是否开启错误提示
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $di
     * @return string
     */
  private function status_debug($di){
      $debug = $di->getConfig()->system->debug;
      if($debug == true){
          ini_set("display_errors", "On");
          error_reporting(E_ALL | E_STRICT);
          error_reporting(E_ALL^E_NOTICE^E_WARNING);
      }else{
          error_reporting(0);
      }
  }

}