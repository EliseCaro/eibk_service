<?php
namespace App\Modules\Api\Controllers;

use App\Controller\ApiController;
use App\Models\admin\User;

abstract class BaseController extends ApiController
{
    protected $userId;
    protected $userInfo;

    /**
     * 基础
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function initialize(){
        parent::initialize();
        $this->view->disable();
        if($this->dispatcher->getParam("is_client","int",0) != 1 && !file_get_contents('php://input')){
            $this->response->redirect('http://'.str_replace("api.","",$_SERVER['HTTP_HOST']));
        }
        /**
         * 登录认证
         */
        $this->userId = Session('user_id');
        $this->userInfo = User::where(['id'=>$this->userId])->field('username,avatar,email,id,nickname')->_find();
        if(!$this->userInfo){
             $this->error('未登录','','2');
        }else{
            $this->userInfo = $this->userInfo->toArray();
        }
    }
}
