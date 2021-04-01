<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 */

namespace App\Modules\Api\service;

use App\Models\CallModel;
use App\Models\common\Column;
use App\Models\common\Document;
use App\Models\common\DocumentPhotos;
use App\Service\BaseService;

class PhotosService extends BaseService
{
    /**
     * 获取相册列表
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param int $count
     * @return ServiceResult
     */
     public function get_cover_list($count = 6){
         if(!$uid = Session('user_id')) $this->fail('用户未登录~');
         $map =[];
         $map['a.model']=3;
         $map['a.uid']=$uid;
         $map['a.status']=1;
         $map['a.cover']=['!=',0];
         $list = Column::builder()
             ->LeftJoin('App\Models\admin\Attachment', 'b.id=a.cover', 'b')
             ->where($map)
             ->field(['a.name,a.id,a.description,a.update_time','b.path'])
             ->order("a.id DESC")
             ->paginate($count);
         $items = $list->items;
         foreach ($items as $k=>&$v){
             $v->child = Document::builder()
                 ->InnerJoin('App\Models\common\DocumentPhotos', 'b.aid=a.id', 'b')
                 ->InnerJoin('App\Models\admin\Attachment', 'b.file_id=c.id', 'c')
                 ->where(['a.status'=>1,"a.trash"=>0,"a.cid"=>$v["id"]])
                 ->limit("0,6")
                 ->field([
                     'a.id,a.update_time,a.view,a.update_time',
                     'c.thumb,c.path,c.name AS title',
                 ])->_select()->toArray();
         }
         $list->items = $items;
         return $this->success($list);
     }

    /**
     * 获取相片列表
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param int $cid
     * @param int $count
     * @return string
     */
     public function get_list($cid = 0,$count=8){
         if(!$uid = Session('user_id')) $this->fail('用户未登录~');
         $map =[];
         $map['a.model']='3';
         $map['a.uid']=$uid;
         $map['a.status']=1;
         $map['a.cid']=$cid;
         $list = Document::builder()
             ->InnerJoin('App\Models\common\DocumentPhotos', 'b.aid=a.id', 'b')
             ->InnerJoin('App\Models\admin\Attachment', 'b.file_id=c.id', 'c')
             ->where($map)
             ->field([
                 'a.title,a.id,a.shorttitle,a.update_time',
                 'b.description,b.file_id',
                 'c.path',
             ])
             ->order("a.id DESC,a.sort DESC")
             ->paginate($count);
         return $this->success($list);
     }

    /**
     *删除相册
     * @param int $id
     * @return $this|ServiceResult
     */
     public  function delete_cover($id =0){
         CallModel::_begin();
         if(!Column::where(['id'=>$id])->_delete()){
             CallModel::_rollback();
             return $this->fail('删除分类失败~');
         }
         $id_group = Document::where(['cid'=>$id])->field('id')->_select();
         if($id_group){
             if(!Document::where(['cid'=>$id])->_delete()){
                 CallModel::_rollback();
                 return $this->fail('删除主表失败~');
             }
             foreach ($id_group as $value){
                 DocumentPhotos::where(['aid'=>$value['id']])->_delete();
             }
         }
         CallModel::_commit();
         return $this->success('删除成功了~');
     }


    /**
     * 删除啊
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param int $id
     */
    public function del($id=0){
        CallModel::_begin();
        if(!Document::where(['id'=>$id])->_delete()){
            CallModel::_rollback();
            return $this->fail('删除主表失败~');
        }
        if(!DocumentPhotos::where(['aid'=>$id])->_delete()){
            CallModel::_rollback();
            return $this->fail('删除付表失败~');
        }
        CallModel::_commit();
        return $this->success('删除成功了~');
    }


}