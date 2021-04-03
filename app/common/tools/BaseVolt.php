<?php
/**
 * Created by 一根小腿毛
 * User: 一根小腿毛@qq=1368213727
 * Date: 2017/12/17 0017
 * Time: 10:22
 */
namespace App\Tools;
use \Phalcon\Mvc\View\Engine\Volt;
class BaseVolt extends Volt{
    /**
     * 添加扩展函数
     */
    public function initFunction(){
        $compiler = $this->getCompiler();
        $compiler->addExtension(new VoltFunction());
    }

}