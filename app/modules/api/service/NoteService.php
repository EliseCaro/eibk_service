<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 */

namespace App\Modules\Api\service;

use App\Models\common\Document;
use App\Models\common\DocumentNote;
use App\Service\BaseService;

class NoteService extends BaseService
{
    /**
     * 获取视频列表
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param int $cid 文件夹id 0=all
     * @param int $count 每页多少条
     * @param string $kw
     * @return string
     */
    public function get_list($cid=0,$count = 5,$kw=""){
        if(!$uid = Session('user_id')) $this->fail('用户未登录~');
        $map =[];
        $map['a.model']='4';
        $map['a.uid']=$uid;
        //$map['a.status']=1;
        $map['a.trash']="0";
        if($cid) $map['a.cid']=$cid;
        if($kw) $map['a.title']=["like","%{$kw}%"];
        $list = Document::builder()
            ->InnerJoin('App\Models\common\DocumentNote', 'b.aid=a.id', 'b')
            ->where($map)
            ->field(['a.title,a.status,a.id,a.update_time','b.descriptions'])
            ->order("a.id DESC")
            ->paginate($count);
        return $this->success($list);
    }

    /**
     * 获取一条数据
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param int $id
     */
    public function get_info($id =0){
        if(!$uid = Session('user_id')) $this->fail('用户未登录~');
        $map =[];
        $map['a.model']='4';
        $map['a.id']=$id;
        $map['a.uid']=$uid;
        //$map['a.status']=1;
        $map['a.trash']="0";
        $info = Document::builder()
            ->InnerJoin('App\Models\common\DocumentNote', 'b.aid=a.id', 'b')
            ->where($map)
            ->field([
                'a.title,a.id,a.status',
                'b.descriptions,b.content',
            ])
            ->order("a.sort DESC,a.id DESC")
            ->_find();
        Document::where(['id'=>$id])->_update(['update_time'=>time()]);
        return $this->success($info);
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
        if(!DocumentNote::where(['aid'=>$id])->_delete()){
            Document::_rollback();
            return $this->fail('删除付表失败~');
        }
        Document::_commit();
        return $this->success('删除成功了~');
    }
}