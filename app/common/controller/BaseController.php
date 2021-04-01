<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/29
 * Time: 23:03
 */
namespace App\Controller;

use Phalcon\Mvc\Controller;

abstract class BaseController extends Controller
{
    /**
     * 基础
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function initialize(){}

    /**
     * 返回错误信息
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param array $info
     * @param null $url
     * @param int $code
     * @param int $time
     * @return string
     */
    protected function error($info = [], $url = null, $code = 0,$time=10)
    {
        if ($this->request->isAjax()) {
            $this->sendJson(['msg'=>$info, 'url'=>$url, 'code'=>$code, 'status'=>false]);
        } else {
            $this->view->setVars([
                'msg'=>$info,
                'url'=>$url,
                'code'=>$code,
                'time'=>$time,
            ]);
            $this->view->pick("info/error");
        }
    }

    /**
     * 成功返回数据
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param string $data
     * @param string $info
     * @param null $url
     * @param int $code
     * @param int $time
     * @return string
     */
    protected function success($data = '', $info = '', $url = null, $code = 1,$time=10){
        if ($this->request->isAjax()) {
            $this->sendJson(['data'=>$data,'info'=>$info, 'url'=>$url, 'code'=>$code, 'status'=>true]);
        }else{
            $this->view->setVars([
                'msg'=>$info,
                'url'=>$url,
                'code'=>$code,
                'time'=>$time,
            ]);
            $this->view->pick("info/success");
        }
    }

    /**
     * 发送json
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param array $content
     * @param string $code
     */
    protected function sendJson(array $content,$code=''){
        $this->response->setHeader('Content-Type', 'application/json; charset=UTF-8');
        $this->response->setHeader('Access-Control-Allow-Origin', '*');
        $this->response->setJsonContent($content);
        if($code && is_int($code)){
            $this->response->setStatusCode($code);
        }
        $this->response->send();exit();
    }
}