<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 */

namespace App\Modules\Api\service;

use App\Models\common\Column;
use App\Models\common\Comment;
use App\Models\common\Document;
use App\Service\BaseService;

class IndexService extends BaseService
{
    /**
     * 获得数量
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
     public function count(){
         $uid = Session("user_id");
         $_arrCount = [];
         $_arrCount[] = ["title"=>"视频","count"=>Document::where(["model"=>1,"trash"=>0,"uid"=>$uid])->_count(),"url"=>"/video/index"];
         $_arrCount[] = ["title"=>"音乐","count"=>Document::where(["model"=>2,"trash"=>0,"uid"=>$uid])->_count(),"url"=>"/music/index"];
         $_arrCount[] = ["title"=>"笔记","count"=>Document::where(["model"=>4,"trash"=>0,"uid"=>$uid])->_count(),"url"=>"/note/index"];
         $_arrCount[] = ["title"=>"照片","count"=>Document::where(["model"=>3,"trash"=>0,"uid"=>$uid])->_count(),"url"=>"/images/index"];
         $_arrCount[] = ["title"=>"文件","count"=>Document::where(["model"=>6,"trash"=>0,"uid"=>$uid])->_count(),"url"=>"/file/index"];
         return $this->success($_arrCount);
     }

    /**
     * 首页相册
     * User: 一根小腿毛@QQ:1368213727
     * @return \App\Service\ServiceResult
     */
     public function getCover(){
         $map =[];
         $map['a.model']=3;
         $map['a.status']=1;
         //$map['a.rank_auth']=1;
         $map['a.uid']=Session('user_id');
         $list = Column::builder()
             ->InnerJoin('App\Models\admin\Attachment', 'a.cover=b.id', 'b')
             ->InnerJoin('App\Models\admin\User', 'c.id=a.uid', 'c')
             ->where($map)
             ->field([
                 'a.id,a.uid,a.name,a.description,a.update_time',
                 'b.thumb AS cover',
                 'c.nickname',
             ])
             ->order("a.good DESC")
             ->limit("0,2")
             ->_select()
             ->toArray();
         foreach ($list as $k=>&$v){
             $v["child"] = Document::builder()
                 ->InnerJoin('App\Models\common\DocumentPhotos', 'b.aid=a.id', 'b')
                 ->InnerJoin('App\Models\admin\Attachment', 'b.file_id=c.id', 'c')
                 ->where(['a.status'=>1,"a.trash"=>0,"a.cid"=>$v["id"]])
                 ->limit("0,2")
                 ->field([
                     'a.id,a.update_time,a.view,a.update_time',
                     'c.thumb,c.path,c.name AS title',
                 ])->_select()->toArray();
         }
        return $this->success($list);
     }

    /**
     * 获取评论
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
     public function comment(){
         $map =[];
         //$map['a.from_uid']=Session('user_id');
         $map['a.from_uid']=1;
         $list = Comment::builder()
                 ->InnerJoin('App\Models\common\Document', 'a.topic_id=b.id', 'b')
                 ->InnerJoin('App\Models\admin\User', 'c.id=a.from_uid', 'c')
                 ->InnerJoin('App\Models\admin\Attachment', 'd.id=c.avatar', 'd')
                 ->where($map)
                 ->field([
                     'b.title,b.id AS did',
                     'a.id AS aid,a.content,a.update_time',
                     "c.nickname",
                     "d.path"
                 ])
                ->order("a.id DESC")
                ->paginate(3);
             $lists =   $list->items; 
            foreach ($lists as $key => &$value) {
                $value->content = str_replace("/static/comment/","http://{$_SERVER['HTTP_HOST']}/static/comment/",$value->content);
            }    
             $list->items =  $lists;
         return $this->success($list);
     }


     public function getMusic(){
         $map =[];
         $map['a.model']='2';
         $map['a.status']='1';
         $map['a.trash']='0';
         $map['a.uid']=Session('user_id');
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
             ->limit("0,6")
             ->order("a.id DESC")
             ->_select()
             ->toArray();
         return $this->success($list);
     }




}