<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 */

namespace App\Modules\Api\service;
use App\Models\admin\User;
use App\Service\BaseService;
use App\Tools\Check;

class SingService extends BaseService
{
    /**
     * d登录
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param array $array
     */
     public function login(array $array){
         $username = trim($array['username']);
         $password = trim($array['password']);
         if(!$username) return $this->fail('请填写用户名~');
         if(!$password) return $this->fail('请填写密码~');
         if (Check::email($username)) {
             $map['email'] = $username;
         }elseif (Check::mobile($username)) {
             $map['mobile'] = $username;
         }else{
             $map['username'] = $username;
         }
         $map['status'] = 1;
         $user = User::where($map)->field('id,username,nickname,avatar,password,is_client,bg')->_find();
         if ($user) {
             $user = $user->toArray();
             if (!password_verify((string)$password,$user['password'])) {
                 return $this->fail('密码错误！');
             }
             if(!$user["is_client"])  return $this->fail('当前账号测试阶段不容许登录！');
             unset($user['password']);
             $user['avatar'] = get_file_path($user['avatar']);
             $s_data['last_login_time'] = time();
             $s_data['last_login_ip'] = get_client_ip(1);
             $user_model = new User();
             if($user_model->where(['id'=>$user['id']])->_update($s_data)){
                 $data['token']=$this->creationToken($user["id"]);
                 $data['info']=$user;
                 return $this->success($data,'登录成功~');
             }else{
                 return $this->fail("登录信息更新失败！原因：{$user_model->error}");
             }
         } else {
             return $this->fail('用户不存在或者被禁用~');
         }
     }

    /**
     * 创建token
     * .
     * User: 一根小腿毛@qq：1368213727
     * Date: 2018/3/27
     * Time: 14:24
     * @param $uid
     * @return bool|string
     */
    public function creationToken($uid){
        \App\Models\common\Token::where(["uid"=>$uid])->_delete();
        $time = time();
        $str = create_3rd_session();
        $str = md5("{$uid}/{$time}/{$str}");
        $data=[];
        $data["uid"] = $uid;
        $data["token"] = $str;
        $data["time"] = time();
        $data["type"] = 1;
        $model=new \App\Models\common\Token();
        if($model->_insert($data)){
            return $str;
        }else{
            return false;
        }
    }

}

