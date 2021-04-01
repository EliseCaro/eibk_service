<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/29
 * Time: 23:01
 */


/**
 * 生成随机数 就支持liunx
 * @author 一根小腿毛 <1368213727@qq.com>
 * @return string
 * @param string $len
 * @return bool|string
 */
function create_3rd_session($len = '50'){
    $fp = @fopen('/dev/urandom','rb');
    $result = '';
    if ($fp !== FALSE) {
        $result .= @fread($fp, $len);
        @fclose($fp);
    } else {
        trigger_error('Can not open /dev/urandom.');
    }
    $result = base64_encode($result);
    $result = strtr($result, '+/', '-_');
    return substr($result, 0, $len);
}
/**
 * 缓存当session使用
 * @author 一根小腿毛 <1368213727@qq.com>
 * @return string
 * @param null $key
 * @param string $value
 * @return bool|mixed|null
 */
function Session($key=null,$value=''){
    $di = Phalcon\DI::getDefault();
    $token = $di->get('dispatcher')->getParam("token","string","");
    if(!$token) return false;
    $info = \App\Models\common\Token::where(["token"=>$token,"type"=>1])->_find();
    if(!$info) return false;
    if((time()-$info->time) > 86400){
       \App\Models\common\Token::where(["token"=>$token,"type"=>1])->_delete();
       return false;
   }
   return intval($info->uid);
}