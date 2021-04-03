<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 */

namespace App\Modules\Api\service;

use App\Models\common\Document;
use App\Models\common\DocumentVideo;
use App\Service\BaseService;

class VideoService extends BaseService
{

    /**
     * 获取视频列表
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param int $cid 文件夹id 0=all
     * @param int $count 每页多少条
     * @return string
     */
     public function get_list($cid=0,$count = 16,$kw=''){

        if(!$uid = Session('user_id')) $this->fail('用户未登录~');

        $map =[];
        $map['a.model']=1;
        $map['a.uid']=$uid;
        //$map['a.status']=1;
        $map['a.trash']=0;
        if($cid) $map['a.cid']=$cid;
        if($kw) $map['a.title']=["like","%{$kw}%"];

        $list = Document::builder()
                ->InnerJoin('App\Models\common\DocumentVideo', 'b.aid=a.id', 'b')
                ->InnerJoin('App\Models\admin\Attachment', 'b.file_id=c.id', 'c')
                ->where($map)
                ->field([
                    'a.title,a.id',
                    'b.file_id,b.description',
                    'c.path,c.name,c.thumb,c.status'
                ])
                ->order("a.sort DESC,a.id DESC")
                ->paginate($count);
        return $this->success($list);
     }

    /**
     * 获取视频详情
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $id
     */
     public function get_info($id){

         if(!$uid = Session('user_id')) $this->fail('用户未登录~');

         $info = Document::builder()
             ->InnerJoin('App\Models\common\DocumentVideo', 'b.aid=a.id', 'b')
             ->InnerJoin('App\Models\admin\Attachment', 'b.file_id=c.id', 'c')
             ->where(['a.id'=>$id])
             ->field([
                 'a.title,a.id,a.update_time,a.status',
                 'b.file_id,b.description',
                 'c.path,c.name,c.thumb,c.url,c.ext,c.status AS attr_status'
             ])
             ->order("a.sort DESC,a.id DESC")
             ->_find();
         if($info['ext'] == 'mp4'){$info['path']  = $info['url'];}
         $map =[];$map['model']='1';$map['uid']=$uid;$map['trash']=0;
         $btn=[
             'next'=>Document::where(array_merge($map,['id'=>['<',$info['id']]]))->order("id DESC")->_value('id'),
             'prev'=>Document::where(array_merge($map,['id'=>['>',$info['id']]]))->order("id ASC")->_value('id')
         ];
         return $this->success(['info'=>$info,'btn'=>$btn]);
     }


    /**
     * 删除啊
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param int $id
     */
    public function del($id=0){
        Document::_begin();
        if(!Document::where(['id'=>$id])->_delete()){
            Document::_rollback();
            return $this->fail('删除主表失败~');
        }
        if(!DocumentVideo::where(['aid'=>$id])->_delete()){
            Document::_rollback();
            return $this->fail('删除付表失败~');
        }
        Document::_commit();
        return $this->success('删除成功了~');
    }

    /**
     * 编辑
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param array $w
     * @param array $data
     * @return string
     */
    public function edit(array $w=[],array $data=[]){
        Document::_begin();
        if(!Document::where($w)->_update(['title'=>$data['title'],'status'=>$data['status']])){
            Document::_rollback();
            return $this->fail('修改主表失败~');
        }
        if(!DocumentVideo::where(['aid'=>$w['id']])->_update(['description'=>$data['description']])){
            Document::_rollback();
            return $this->fail('修改付表失败~');
        }
        Document::_commit();
        return $this->success('修改成功了~');
    }

}