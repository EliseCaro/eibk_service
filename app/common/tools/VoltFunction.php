<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛@QQ:1368213727
 * Date: 2018/1/15
 * Time: 15:38
 */

namespace App\Tools;


class VoltFunction
{
    /**
     * volt模版编译识别php函数
     * This method is called on any attempt to compile a function call
     * @param $name
     * @param $arguments
     * @return string
     */
    public function compileFunction($name, $arguments)
    {
        if (function_exists($name)) {
            return $name . "(". $arguments . ")";
        }
    }
}