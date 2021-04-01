<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/29
 * Time: 23:30
 */

namespace App\Service;


use Phalcon\Di;

abstract class BaseService{


    /**
     * 一根小腿毛
     * @var null
     * 对象状态
     */
    protected $data = null;

    protected $status = false;

    protected $message = "";

    protected $di;

    /**
     * 构造函数
     * @author 一根小腿毛 <1368213727@qq.com>
     */
    public function __construct(){
      $this->di =DI::getDefault();
    }
    /**状态管理
     * User:一根小腿毛
     * @param null $data
     * @return ServiceResult
     */
    public function success($data = null)
    {
        $this->status = true;
        $this->data = $data;
        return $this;
    }

    public function fail($errorMessage = '')
    {
        $this->status = false;
        $this->message = $errorMessage;
        return $this;
    }

    public function is_success()
    {
        return $this->status;
    }

    public function get_data()
    {
        return $this->data;
    }

    public function get_message()
    {
        return $this->message;
    }
}