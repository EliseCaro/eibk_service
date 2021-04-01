<?php

namespace App\Modules\Api\Controllers;

use App\Modules\Api\service\IndexService;

class IndexController extends BaseController
{
    private $service;

    /**
     * 基础
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function initialize(){
        parent::initialize();
        $this->service = new IndexService();
    }

    /**
     * 获取数量
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function indexAction()
    {
       $_data=[];
       $_data["count"] = service("api/index")->count()->get_data();
       $_data["music"] = service("api/index")->getMusic()->get_data();
       $_data["cover"] = service("api/index")->getCover()->get_data();
       $_data["comment"] = service("api/index")->comment()->get_data();
       $this->success($_data);
    }

}

