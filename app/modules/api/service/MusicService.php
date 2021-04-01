<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 */

namespace App\Modules\Api\service;

use App\Models\CallModel;
use App\Service\BaseService;
use App\Tools\Music\Music;
use App\Tools\QiniuDrive;
use App\Models\common\Music AS MusicModel;
use App\Models\common\Document;
use App\Models\common\DocumentMusic;
class MusicService extends BaseService
{
    private $music;
    private $uid;
    /**
     * 构造curl
     * @author 一根小腿毛 <1368213727@qq.com>
     */
    public function __construct(){
     parent::__construct();
      $this->music =new Music();
      $this->uid =Session('user_id');
    }

    /**
     * 搜索歌曲
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param string $kw
     * @param int $page
     * @return string
     */
    public function search($kw='',$limit,$page=1){
        $res = $this->music->mc_get_song_by_name($kw, $page,$limit);
        return $this->success($res);
    }

    /**
     * 入库搜索结果
     * User: 一根小腿毛@QQ:1368213727
     * @param array $res
     * @return \App\Service\ServiceResult
     */
    public function addMusic($res = []){
        if($res && is_array($res)){
            foreach ($res as $k=>$v){
                $q = new QiniuDrive();
                $q->addMp3($v["file"],$v["cover"],$v["title"], $v["artist"]);
            }
            return $this->success([],"成功~");
        }
        return $this->fail("数据不合法~");
    }

    /**
     * 搜索本地
     * @param string $kw
     * @return \App\Service\ServiceResult
     */
    public function searchLocal($kw=""){
        $kw_arr = explode("-",$kw);//初始
        if(count($kw_arr) == 2){
            $_list = MusicModel::where(["name"=>["LIKE","%{$kw_arr[0]}%"],"author"=>["LIKE","%{$kw_arr[1]}%"]]);
        }else{
            $_list = MusicModel::where(["name"=>["LIKE","%{$kw}%"]])
                    ->whereOr(["author"=>["LIKE","%{$kw}%"]]);
        }
        $_list=$_list->field("id,name AS title,path AS file,author AS artist,cover")
            ->limit(15)
            ->_select();
        return $this->success($_list);
    }

    /**
     * 收藏音乐
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param $id
     * @param $uid
     * @return string
     */
    public function collect($id,$uid){
        $m=MusicModel::where(["id"=>$id])->field("name,author")->_find();
        if(!$m) return $this->fail("音乐不存在~");
        $m = $m->toArray();
        $Model1 = new Document();
        $sql_data1['cid'] = 0;
        $sql_data1['model'] = 2;
        $sql_data1['title'] = $m['name'];
        $sql_data1['shorttitle'] = "{$m['name']} - {$m['author']}";
        $sql_data1['uid'] = $uid;
        $sql_data1['status'] = 1;
        $aid = $Model1->_insert($sql_data1);
        if($aid){
            $Model2 = new DocumentMusic();
            $sql_data2['aid'] = $aid;
            $sql_data2['file_id'] = $id;
            $Model2->_insert($sql_data2);
            return $this->success(['id'=>$id],'成功拉~');
        }else{
            return $this->fail("收藏失败,错误:{$Model1->error}");
        }
    }

    /**
     * 取消收藏
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param int $id
     * @return $this|\App\Service\ServiceResult
     */
    public function del($id=0){
        CallModel::_begin();
        if(!Document::where(['id'=>$id])->_delete()){
            CallModel::_rollback();
            return $this->fail('删除主表失败~');
        }
        if(!DocumentMusic::where(['aid'=>$id])->_delete()){
            CallModel::_rollback();
            return $this->fail('删除付表失败~');
        }
        CallModel::_commit();
        return $this->success('删除成功了~');
    }


    /**
     * 获得热门列表
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $count
     * @param string $order
     * @return string
     */
    public function getHot($count,$order="a.good DESC"){
        $map =[];
        $map['a.model']='2';
        $map['a.status']='1';
        $map['a.trash']='0';
        $list = Document::builder()
            ->InnerJoin('App\Models\common\DocumentMusic', 'b.aid=a.id', 'b')
            ->InnerJoin('App\Models\common\Music', 'b.file_id=c.id', 'c')
            ->InnerJoin('App\Models\admin\User', 'd.id=a.uid', 'd')
            ->where($map)
            ->field([
                'a.title,a.id AS aid,a.update_time,a.view',
                'c.id,c.name AS title,c.path AS file,c.author AS artist,cover',
                "d.nickname"
            ])
            ->order($order)
            ->limit("0,{$count}")
            ->_select()
            ->toArray();
        foreach ($list as $k=>&$v){$v["is_collect"] = $this->is_collect($v["id"]);}
        return $this->success($list);
    }

    /**
     * 获得收藏列表
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param string $order
     * @param string $count
     */
    public function getList($order="a.id DESC",$count="24"){
        $map =[];
        $map['a.model']='2';
        $map['a.status']='1';
        $map['a.trash']='0';
        $map['a.uid']=$this->uid;
        $list = Document::builder()
            ->InnerJoin('App\Models\common\DocumentMusic', 'b.aid=a.id', 'b')
            ->InnerJoin('App\Models\common\Music', 'b.file_id=c.id', 'c')
            ->InnerJoin('App\Models\admin\User', 'd.id=a.uid', 'd')
            ->where($map)
            ->field([
                'a.title,a.id AS aid,a.update_time,a.view',
                'c.id,c.name AS title,c.path AS file,c.author AS artist,cover',
                "d.nickname"
            ])
            ->order($order)
            ->paginate($count);
        foreach ($list->items as $k=>&$v){$v->is_collect = $this->is_collect($v["id"]);}
        $list->limit = intval($list->limit);
        return $this->success($list);
    }

    /**
     * 是否收藏
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $mid
     */
    public function is_collect($mid){
        $is = Document::builder()
            ->InnerJoin('App\Models\common\DocumentMusic', 'b.aid=a.id', 'b')
            ->where(["a.uid"=>$this->uid,"b.file_id"=>$mid])
            ->field(['a.id'])
            ->_find();
        return $is?1:0;
    }

}