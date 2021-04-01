<?php
/**
 * Created by PhpStorm.
 * User: User: 一根小腿毛@qq：1368213727
 * Date: 2018/1/31
 * Time: 14:49
 */

namespace App\Modules\Api\Controllers;


use App\Models\admin\Attachment;
use App\Models\admin\User;
use App\Models\common\Theme;
use App\Modules\Api\service\ProfileService;

class PersonalController extends BaseController
{

    /**
     * 获得个人资料修改
     * 获得是否开通api
     * 获得主题界面数据
     * 个人资料首页
     */
    public function indexAction(){
      $uid = $this->userId;
      $userInfo = User::where(["id"=>$uid])->field("id,nickname,email,mobile,sing,avatar,bg,api_open,api_secret,api_openid")->_find()->toArray();
      $userInfo["avatar"] = Attachment::where(["id"=>$userInfo["avatar"]])->_value("path");
      $userInfo["avatar_up_url"] = config('system.q_server');
      $userInfo["avatar_up_token"] = (new ProfileService())->avatar_token();
      $coverList = Theme::builder()
          ->where(["a.status"=>1])
          ->field(['a.title,a.shortdesc,a.browse,a.cover'])
          ->order("a.id DESC")
          ->paginate(9);
      $this->success(["userInfo"=>$userInfo,"coverList"=>$coverList]);
    }

    /**
     * 保存用户主题
     */
    public function browseSaveAction(){
       $uid = $this->userId;
       $path = $this->request->getPost("url","string","");
       if(!$path) $this->error("地址不合法~");
       $m = new User();
       if($m->where(["id"=>$uid])->_update(["bg"=>$path])){
           $this->success($this->getUserinfo($uid)["bg"],"更换主题成功~");
       }else{
           $this->error($m->error);
       }
    }


    /**
     * 保存用户资料
     */
    public function SaveUserInfoAction(){
       $uid = $this->userId;
       $data = $this->request->getPost();
       $s_data["nickname"]=$data["nickname"];
       $s_data["email"]=$data["email"];
       $s_data["mobile"]=$data["mobile"];
       $s_data["sing"]=$data["sing"];
       if(isset($data["old_password"]) && $data["old_password"] && isset($data["password1"]) && $data["password1"] && isset($data["password2"]) && $data["password2"]){
           //检测原密码
           $old_p = User::where(["id"=>$uid])->_value("password");
           if(!password_verify((string)$data["old_password"],$old_p)) $this->error("原密码不符合~");
           if($data["password1"] != $data["password2"]) $this->error("两次密码输入不一致~");
           $s_data["password"]=password_hash($data["password2"],PASSWORD_DEFAULT);
       }
       $m =new User();
       if($m->where(["id"=>$uid])->_update($s_data)){
          $this->success($this->getUserinfo($uid),"资料修改成功~");
       }else{
          $this->error($m->error);
       }
    }

    /**
     * 开通api
     */
    public function OpenApiAction(){
        $uid = $this->userId;
        $s_data["api_secret"] = md5("{$uid}{$this->userInfo['username']}_bkybj");
        $s_data["api_openid"] = md5("{$uid}_bkybj");
        $s_data["api_open"] = 1;
        $m =new User();
        if($m->where(["id"=>$uid])->_update($s_data)){
            $this->success($this->getUserinfo($uid),"API开通成功~");
        }else{
            $this->error($m->error);
        }
    }


    /**
     * 获取用户资料
     * @param $uid
     * @return mixed
     */
    public function getUserinfo($uid){
        $userInfo = User::where(["id"=>$uid])->field("id,nickname,username,avatar,email,mobile,sing,bg,api_open,api_secret,api_openid")->_find()->toArray();
        $userInfo['avatar'] = get_file_path($userInfo['avatar']);
        return $userInfo;
    }



}