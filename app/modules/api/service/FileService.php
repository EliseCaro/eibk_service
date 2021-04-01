<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 */

namespace App\Modules\Api\Service;

use App\Models\common\Document;
use App\Models\common\DocumentFile;
use App\Service\BaseService;

class FileService extends BaseService
{
    /**
     * 获取列表
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param int $cid
     * @param int $count
     * @param string $kw
     * @return string
     */
    public function get_list($cid=0,$count = 24,$kw=''){
        if(!$uid = Session('user_id')) $this->fail('用户未登录~');
        $map =[];
        $map['a.model']='6';
        $map['a.uid']=$uid;
        $map['a.status']=['>=',0];
        $map['a.trash']=0;
        if($cid) $map['a.cid']=$cid;
        if($kw) $map['a.title']=["like","%{$kw}%"];
        $list = Document::builder()
            ->InnerJoin('App\Models\common\DocumentFile', 'b.aid=a.id', 'b')
            ->InnerJoin('App\Models\admin\Attachment', 'b.file_id=c.id', 'c')
            ->where($map)
            ->field([
                'a.title,a.id,a.update_time,a.status',
                'b.description',
                'c.path,c.name,c.ext,c.size'
            ])
            ->order("a.sort DESC,a.id DESC")
            ->paginate($count);
        return $this->success($list);
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
        if(!DocumentFile::where(['aid'=>$id])->_delete()){
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
        if(!DocumentFile::where(['aid'=>$w['id']])->_update(['description'=>$data['description']])){
            Document::_rollback();
            return $this->fail('修改付表失败~');
        }
        Document::_commit();
        return $this->success('修改成功了~');
    }

}