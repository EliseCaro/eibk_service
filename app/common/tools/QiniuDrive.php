<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/10/2
 * Time: 11:06
 */
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/10/2
 * Time: 11:06
 */

namespace App\Tools;
use App\Models\admin\Attachment;
use App\Models\admin\User;
use App\Models\common\Document;
use App\Models\common\DocumentPhotos;
use App\Models\common\Music;
use Qiniu\Auth;
use Qiniu\Processing\PersistentFop;
use Qiniu\Storage\BucketManager;

class QiniuDrive
{

    /**视频处理方式
     * @var array
     */
    static $handle_video =[
        "path"=>"avthumb/mp4/s/1124x675/h264Crf/19",//视频转码
        "thumb"=>"vframe/jpg/offset/7/w/800/h/480",//视频截图
    ];


    /**
     * 换取七牛token
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param string $callback
     * @param array $opt
     * @return string
     */
    function get_token($callback ='',$opt=[]){
        $uid = Session('user_id');
        if(!$uid || !$callback) return false;
        $callback = "http://{$_SERVER['HTTP_HOST']}{$callback}";
        $opt_str = '{"fkey":"$(key)","fname":"$(fname)","fsize":"$(fsize)","mimeType":"$(mimeType)","ext":"$(ext)","uid":'.$uid;
        foreach ($opt as $k=>$v){
            $opt_str .= ','.'"'.$k.'"'.':'.$v;
        }
        $opt_str .= '}';
        $policy = [
            "callbackUrl" =>$callback,
            'callbackBody' =>$opt_str,
        ];
        $auth = new Auth(config('system.q_access_key'),config('system.q_secret_key'));

        return $auth->uploadToken(config('system.q_bucket'), null, 3600, $policy);
    }

    /**
     * 编辑器 上传产生token
     * @param string $callback
     * @param array $opt
     * @param int $uid
     * @return bool|string
     */
    function get_token_editor($callback ='',$opt=[],$uid=0){
        $uid = $uid?$uid:Session('user_id');
        if(!$uid || !$callback) return false;
        $callback = "http://{$_SERVER['HTTP_HOST']}{$callback}";
        $opt_str = '{"fkey":"$(key)","fname":"$(fname)","fsize":"$(fsize)","mimeType":"$(mimeType)","ext":"$(ext)","uid":'.$uid;
        foreach ($opt as $k=>$v){
            $opt_str .= ','.'"'.$k.'"'.':'.$v;
        }
        $opt_str .= '}';
        $policy = [
            "callbackUrl" =>$callback,
            'callbackBody' =>$opt_str,
        ];
        $auth = new Auth(config('system.q_access_key'),config('system.q_secret_key'));
        return $auth->uploadToken(config('system.q_bucket'), null, 3600, $policy);
    }
    /**
     * 普通上传 只入库
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param string $body
     * @return string
     */
    function upload($body=''){
        $body  = json_decode($body,true);
        if(!is_array($body) || !$body['fkey']){return ['status' => "非法请求~",'code'=>500];}
        $sql_data=[];
        $sql_data['uid']=$body['uid'];
        $sql_data['name']=$body['fname'];
        $sql_data['path']=$body['fkey'];
        $sql_data['thumb']=$body['fkey'];
        $sql_data['url']=$body['fkey'];
        $sql_data['mime']=$body['mimeType'];
        $sql_data['ext']=trim($body['ext'],'.');
        $sql_data['size']=$body['fsize'];
        $sql_data['md5_key']=$body['fkey'];
        $res = $this->add_file($sql_data,function (array $status = [])use ($body){
            if(true !== $status['status']) return ['status' => $status['data'],'code'=>500];
            return ['status' =>true,'code'=>200,'file_id'=>$status['data'],'file_path'=>get_file_path($status['data'])];
        });
        return $res;
    }

    /**
     * 相册照片上传
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $body
     * @return string
     */
    function upload_photos($body){
        $body  = json_decode($body,true);
        $this->log_result(json_encode($body,JSON_UNESCAPED_UNICODE));
        if(!is_array($body) || !$body['fkey']){return ['status' => "非法请求~",'code'=>500];}
        $sql_data=[];
        $sql_data['uid']=$body['uid'];
        $sql_data['name']=$body['fname'];
        $sql_data['path']=$body['fkey'];
        $sql_data['thumb']=$body['fkey'];
        $sql_data['url']=$body['fkey'];
        $sql_data['mime']=$body['mimeType'];
        $sql_data['ext']=trim($body['ext'],'.');
        $sql_data['size']=$body['fsize'];
        $sql_data['md5_key']=$body['fkey'];
        $res = $this->add_file($sql_data,function (array $status = [])use ($body){
            if(true !== $status['status']) return ['status' => $status['data'],'code'=>500];
            //入库文档表
            $model1 = new Document();
            $d_sql=[];
            $d_sql['cid']=intval($body['cid']);
            $d_sql['model']=3;
            $d_sql['title']=$body['fname'];
            $d_sql['shorttitle']=$body['fname'];
            $d_sql['uid']=$body['uid'];
            $d_sql['status']=1;
            if($id = $model1->_insert($d_sql)){
                $model2 = new DocumentPhotos();
                $p_sql=[];
                $p_sql['aid']=$id;
                $p_sql['file_id']=$status['data'];
                $p_sql['description']=$body['fname'];
                $model2->_insert($p_sql);
                return ['status' =>true,'code'=>200,'file_id'=>$status['data'],'file_path'=>get_file_path($status['data'])];
            }else{
                return ['status' => $model1->error,'code'=>500];
            }
        });
        return $res;
    }
    /**
     * 视频上传回掉
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param string $body 七牛返回数据
     */
    public function video($body=''){
        $body  = json_decode($body,true);
        if(is_array($body) && $body['fkey']){
            $sql_data=[];
            $sql_data['uid']=$body['uid'];
            $sql_data['name']=$body['fname'];
            $sql_data['url']=$body['fkey'];
            $sql_data['mime']=$body['mimeType'];
            $sql_data['ext']=trim($body['ext'],'.');
            $sql_data['size']=$body['fsize'];
            $sql_data['md5_key']=$body['fkey'];
            $sql_data['status']=-1;
            $res = $this->add_file($sql_data,function (array $status = [])use ($body){
                if(true !== $status['status']) return ['status' => $status['data'],'code'=>500];
                $file_status = Attachment::where(['id'=>$status['data']])->_value('status');
                if($file_status !=1){
                    //发起处理请求
                    foreach (self::$handle_video as $key => $val){
                        $back_url = url('/notice/handleVideo',['field'=>$key]);
                        $resHandle = $this->coding($body["fkey"],$val,$back_url);
                        if(!$resHandle){
                            $this->log_result("发起{$key}hi失败~");
                            return false;
                        }
                    }
                }
                return ['status' =>true,'code'=>200,'file_id'=>$status['data']];
            });
            return $res;
        }else{
            return ['status' => "非法请求~",'code'=>500];
        }
    }
    /**
     * 上传头像处理
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param string $body
     * @return string
     * @internal param array $array
     */
    public function avatar($body=''){
        $body  = json_decode($body,true);
        if(is_array($body) && $body['fkey']){
            $sql_data=[];
            $sql_data['uid']=$body['uid'];
            $sql_data['name']=$body['fname'];
            $sql_data['path']=$body['fkey'];
            $sql_data['thumb']=$body['fkey'];
            $sql_data['url']=$body['fkey'];
            $sql_data['mime']=$body['mimeType'];
            $sql_data['ext']=trim($body['ext'],'.');
            $sql_data['size']=$body['fsize'];
            $sql_data['md5_key']=$body['fkey'];
            $res = $this->add_file($sql_data,function (array $status = [])use ($body){
                if(true !== $status['status']) return ['status' => $status['data'],'code'=>500];
                $model = new User();
                if($model->where(['id'=>$body['uid']])->_update(['avatar'=>$status['data']])){
                    $user = User::where(['id'=>$body['uid']])->field('id,username,nickname,avatar,password')->_find();
                    $user = $user ? $user->toArray() :[];
                    $user['avatar'] = get_file_path($user['avatar']);
                    $user['status'] = true;
                    $user['code'] = 200;
                    return $user;
                }else{
                    return ['status' => $model->error,'code'=>500];
                }
            });
            return $res;
        }else{
            return ['status' => "非法请求~",'code'=>500];
        }
    }

    /**
     * 统一发起处理请求
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param null $fkey
     * @param null $fops
     * @param null $backUrl
     * @return bool
     */
    private function coding($fkey = NULL,$fops=NULL,$backUrl = NULL){
        $accessKey = config('system.q_access_key');
        $secretKey = config('system.q_secret_key');
        $bucket    = config('system.q_bucket');
        $pipeline  = config('system.q_bucket_md');//队列名
        $url = $callback = "http://{$_SERVER['HTTP_HOST']}{$backUrl}";
        $auth = new Auth($accessKey, $secretKey);
        $pfop = new PersistentFop($auth, $bucket, $pipeline,$url);
        list($id,$err) = $pfop->execute($fkey, $fops);
        if($err != null){
            return false;
        }else{
            return $id;
        }
    }

    /**
     * 入库文件
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param array $data
     * @param callable $bc
     * @return string
     */
    public function add_file(array $data,callable $bc){
        $model =new Attachment();
        $data['driver'] = 'qiniu';
        $file_id = Attachment::where(['md5_key'=>$data['md5_key'],'driver'=>$data['driver']])->_value('id');
        if($file_id){
            $status = ['status'=>true,'data'=>$file_id];
        }else if($id = $model->_insert($data)){
            $status = ['status'=>true,'data'=>$id];
        }else{
            $status = ['status'=>false,'data'=>$model->error];
        }
        return $bc($status);
    }

    /**
     * 删除文件
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $file_id
     */
    public function del_file($file_id = 0){
        if(!$file_id){return false;};
        $accessKey = config('system.q_access_key');
        $secretKey = config('system.q_secret_key');
        $bucket    = config('system.q_bucket');
        $auth = new Auth($accessKey, $secretKey);
        $manager = new BucketManager($auth);
        $file_key = Attachment::where(['id'=>$file_id])->_value('md5_key');
        $path = Attachment::where(['id'=>$file_id])->_value('path');
        $thumb = Attachment::where(['id'=>$file_id])->_value('thumb');
        $url = Attachment::where(['id'=>$file_id])->_value('url');
        $err= $manager->delete($bucket, $file_key);
        if($path) $manager->delete($bucket, $path);
        if($thumb) $manager->delete($bucket, $thumb);
        if($url) $manager->delete($bucket, $url);
        if($err != null){
             return false;
        }else{
            Attachment::where(['id'=>$file_id])->_delete();
            return true;
        }
    }

    /**
     * 删除音乐
     * User: 一根小腿毛@QQ:1368213727
     * @param string $mId
     * @return bool
     */
    public function del_music($mId = ""){
        if(!$mId){return false;};
        $accessKey = config('system.q_access_key');
        $secretKey = config('system.q_secret_key');
        $bucket    = config('system.q_bucket');
        $auth = new Auth($accessKey, $secretKey);
        $manager = new BucketManager($auth);
        $file_key = Music::where(['id'=>$mId])->field("path,cover")->_find();
        if($file_key){
            $file_key = $file_key->toArray();
            $err1= $manager->delete($bucket, $file_key["path"]);
            $err2= $manager->delete($bucket, $file_key["cover"]);
            if($err1 != null &&  $err2 != null){
                return false;
            }else{
                Music::where(['id'=>$mId])->_delete();
                return true;
            }
        }
    }

    /**
     * 存入mp3
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param string $mp3Url
     * @param string $coverUrl
     * @param string $name
     * @param string $author
     * @return string
     */
    public function addMp3($mp3Url="",$coverUrl="",$name="",$author=""){
        if(!$mp3Url || !$coverUrl || !$name || !$author){return false;}
        $map=["name"=>"{$name}","author"=>"{$author}"];
        if(Music::where($map)->_value("id")){return true;};
        $auth = new Auth(config('system.q_access_key'),config('system.q_secret_key'));
        $manager = new BucketManager($auth);
        $bucket = config('system.q_bucket');
        /** @var TYPE_NAME $manager */
        $mp3 = $manager->fetch($mp3Url,$bucket);
        if($mp3 && isset($mp3[0]) && isset($mp3[0]["hash"])){
            $mp3 = $mp3[0];
        }else{
            return false;
        }
        /** @var TYPE_NAME $coverUrl */
        $cover = $manager->fetch($coverUrl,$bucket);
        if($cover && isset($cover[0]) && isset($cover[0]["hash"])){
            $cover = $cover[0];
        }else{
            return false;
        }
        /**
         * 入库
         */
        $s_data = [];
        $s_data["name"] = $name;
        $s_data["path"] = $mp3["key"];
        $s_data["author"] = $author;
        $s_data["cover"] = $cover["key"];
        $s_data["hash"] = $mp3["hash"];
        $s_data["fsize"] = $mp3["fsize"];
        $s_data["mime"] = $mp3["mimeType"];
        $s_data["update_time"] = time();
        $model =new Music();
        if($model->_insert($s_data)){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 拉去视频
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $url
     * @param $uid
     * @param $thumb
     */
    public function get_url_file_video($url,$uid,$thumb){
        $auth = new Auth(config('system.q_access_key'),config('system.q_secret_key'));
        $manager = new BucketManager($auth);
        $bucket = config('system.q_bucket');
        $res = $manager->fetch($url,$bucket);
        $thumb = $manager->fetch($thumb,$bucket);
        if(!$thumb && !isset($thumb[0]) && !isset($thumb[0]["hash"])){return false;}
        if($res && isset($res[0]) && isset($res[0]["hash"])){
            $res = $res[0];
            $ext = explode("/",$res['mimeType']);
            $sql_data=[];
            $sql_data['uid']=$uid;
            $sql_data['name']=$res['key'];
            $sql_data['url']=$res['key'];
            $sql_data['mime']=$res['mimeType'];
            $sql_data['ext']=isset($ext[1]) ? $ext[1]:$ext[0];
            $sql_data['size']=$res['fsize'];
            $sql_data['md5_key']=$res['fkey'];
            $sql_data['path']=$res['key'];
            $sql_data['thumb']=$thumb[0]['key'];
            $res = $this->add_file($sql_data,function (array $status = [])use ($res){
                if(true !== $status['status']) return false;
                return $status['data'];
            });
            return $res;
        }else{
            return false;
        }
    }

    /**
     * 函数库
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param $url
     * @param $uid
     * @return string
     * @internal param $isVideo
     */
    public function get_url_file($url,$uid){
        $auth = new Auth(config('system.q_access_key'),config('system.q_secret_key'));
        $manager = new BucketManager($auth);
        $bucket = config('system.q_bucket');
        $res = $manager->fetch($url,$bucket);
        if($res && isset($res[0]) && isset($res[0]["hash"])){
            $res = $res[0];
            $ext = explode("/",$res['mimeType']);
            $sql_data=[];
            $sql_data['uid']=$uid;
            $sql_data['name']=$res['key'];
            $sql_data['url']=$res['key'];
            $sql_data['mime']=$res['mimeType'];
            $sql_data['ext']=isset($ext[1]) ? $ext[1]:$ext[0];
            $sql_data['size']=$res['fsize'];
            $sql_data['md5_key']=$res['fkey'];
            $sql_data['path']=$res['key'];
            $sql_data['thumb']=$res['key'];
            $res = $this->add_file($sql_data,function (array $status = [])use ($res){
                if(true !== $status['status']) return false;
                return $status['data'];
            });
            return $res;
        }else{
            return false;
        }
    }


    /**
     * 日志
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param string $log
     * @return string
     * @internal param $logthis
     */
    public function log_result($log=''){
        file_put_contents(BASE_PATH.'/public/qiniu_log.log', date("Y-m-d H:i:s"). " " . $log. "\r\n", FILE_APPEND | LOCK_EX);
    }

}