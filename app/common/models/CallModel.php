<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/29
 * Time: 16:32
 */
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/29
 * Time: 16:32
 */

namespace App\Models;

use Phalcon\Mvc\Model;

class CallModel  extends Model
{

    public $table;
    public $error;
    /**
     * 设置表名
     */
    public function initialize(){
        if($this->table){
            $this->setSource(config('database.prefix').strtolower($this->table));
        }
    }
    /**
     * 接收到静态方法
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $method
     * @param $params
     * @return mixed
     */
    public static function __callStatic($method, $params){
        $model = new static();
        if (!method_exists($model, $method)) {
            $query = new BaseModel($model);
            return call_user_func_array([$query, $method], $params);
        }
    }

    /**
     * 捕捉
     * @param string $method
     * @param mixed $params
     * @return mixed
     * @internal param string $name
     * @internal param mixed $arguments
     */
    public function __call($method, $params)
    {
        if (!method_exists($this, $method)) {
            $query = new BaseModel($this);
            return call_user_func_array([$query,$method], $params);
        }
    }

}