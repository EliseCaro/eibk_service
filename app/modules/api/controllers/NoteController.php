<?php

namespace App\Modules\Api\Controllers;

use App\Models\common\Document;
use App\Models\common\DocumentNote;
use App\Modules\Api\service\NoteService;
use App\Tools\QiniuDrive;

class NoteController extends BaseController
{
    private $service;

    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub
        $this->service = new NoteService();
    }

    public function indexAction()
    {
        $kw = $this->request->getPost("kw");
        $res = $this->service->get_list(0,5,$kw);
        if(!$res->is_success()) $this->error($res->get_message());
        $res = $res->get_data();
        $res->token = (new QiniuDrive())->get_token_editor(url('/notice/uploadEditor'));
        $res->up_url = config('system.q_server');
        $this->success($res,'获取成功');
    }

    /**
     * 添加笔记 编辑
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function addAction(){
        $data = $this->request->getPost();
        $content = $data['text'];
        if($content){
            $Model1 = new Document();
            $title = strip_tags($content);
            $sql_data1=[];
            if(isset($data['id']) && $data['id']){
                $sql_data1['id'] = $data['id'];
            }
            $sql_data1['cid'] = isset($data['cid']) ? $data['cid'] : 0;
            $sql_data1['model'] = 4;
            $sql_data1['title'] =  mb_substr(strip_tags($title),0,20,'utf-8');
            $sql_data1['shorttitle'] = mb_substr(strip_tags($title),0,20,'utf-8');
            $sql_data1['uid'] = $this->userInfo['id'];
            $sql_data1['create_time'] = time();
            if(in_array($data['status'],[0,1])){
                $sql_data1['status'] =$data['status'];
            }
            $id = $Model1->_insert($sql_data1);
            if($id){
                $sql_data2=[];
                $sql_data2['aid'] = $id;
                $sql_data2['content'] = $content;
                $sql_data2['descriptions'] = mb_substr(strip_tags($title),0,80,'utf-8')."...";
                $Model2 = new DocumentNote();
                $Model2->_insert($sql_data2);
                return $this->success(['id'=>$id],'添加笔记成功~');
            }else{
                return $this->error($Model1->error);
            }
        }else{
            return $this->error('内容不容许为空');
        }
    }

    /**
     * 更改状态
     * User: 一根小腿毛@QQ:1368213727
     */
    public function statusAction(){
        $id = $this->request->getPost('id','int',0);
        $status = $this->request->getPost('status','int',0);
        if(!$id) $this->error('非法请求~');
        $s = Document::where(["id"=>$id])->_value("status");
        if(!in_array($s,[0,1])) $this->error('笔记不存在~');
        $map=["status"=>$status];
        if(Document::where(["id"=>$id])->_update($map)){
            $this->success([],"更改状态成功~");
        }else{
            $this->error("更改状态失败~");
        }
    }
    /**
     * 编辑获取数据
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function EditContentAction(){
      $id = $this->request->getPost('id','int',0);
      if(!$id) $this->error('非法请求~');
      $data = $this->service->get_info($id);
      if(!$data->is_success()) $this->error($data->get_message());
      $this->success($data->get_data(),'获取成功~');
    }

    /**
     * 删除
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function DelAction(){
        $id = $this->request->getPost('id','int',0);
        if(!$id){$this->error('非法参数...');}
        $res = $this->service->del($id);
        if(!$res->is_success()){$this->error($res->get_message());}
        $this->success([],$res->get_data());
    }

}
