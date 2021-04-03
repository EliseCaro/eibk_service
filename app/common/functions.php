<?php
/**
 * 实例化service
 * @author 一根小腿毛 <1368213727@qq.com>
 *
 * @param string $name api/sing
 * @param string $opt
 * @return string
 */
function service($name='',$opt=''){
    if(!$name) return false;
    list($module,$s_name) = explode('/',$name);
    if(!$module || !$s_name) return false;
    $module = ucwords($module);
    $s_name = ucwords($s_name);
    $namespace = "App\\Modules\\{$module}\\service\\{$s_name}Service";
    return new $namespace($opt);
}

/**
 * 获取附件地址
 * @author 一根小腿毛 <1368213727@qq.com>
 *
 * @param int $id
 * @param string $attr
 * @return string
 */
function get_file_path($id = 0,$attr="path")
{
    $path = App\Models\admin\Attachment::get_file_column($id,$attr);
    return (!$path) ? '/static/img/none.png' : config('system.static_domain').'/'.$path;
}
/**
 * 将IP转换为数字
 * @author 一根小腿毛 <1368213727@qq.com>
 * @return string
 * @param bool $isNumb
 * @return number
 */
function get_client_ip($isNumb = true){
    $di = Phalcon\DI::getDefault();
    $ip =$di->get('request')->getClientAddress();
    if($isNumb){
        $ip_str = '';
        $ip_arr=explode('.',$ip);//分隔ip段
        foreach ($ip_arr as $value){
            $ip_hex=dechex($value);
            if(strlen($ip_hex)<2) {$ip_hex='0'.$ip_hex;}
            $ip_str.=$ip_hex;
        }
        return hexdec($ip_str);
    }else{
        return $ip;
    }
}

/**
 * 获取url
 * @author 一根小腿毛 <1368213727@qq.com>
 * @param string $str
 * @param array $opt
 * @return string
 */
function url($str='',$opt=[]){
    $di = Phalcon\DI::getDefault();
    $url =$di->get('url')->get($str,$opt);
    return $url;
}
/**
 * cache
 * @param string|array $name cache
 * @param mixed $value cache
 * @param null $time
 * @return mixed
 */
function cache($name, $value = '',$time =null){
    $di = Phalcon\DI::getDefault();
    if(is_string($name)){
        if($name && $value){
            return $di->get('modelsCache')->save($name,$value,$time?$time:config('system.cache_time'));
        }else if($name && $value === ''){
            return $di->get('modelsCache')->get($name);
        }else if ($name && is_null($value)){
            return $di->get('modelsCache')->delete($name);
        }
    }else{
        return false;
    }
}



/**
 * 获取||写入 配置
 * @author 一根小腿毛 <1368213727@qq.com>
 * @return string
 * @param null $name
 * @param string $value
 * @return bool|mixed|\Phalcon\Di\ServiceInterface|string
 */
function config($name=null, $value = '')
{
    $di = Phalcon\DI::getDefault();
    if(is_array($name)){
        $config = new \Phalcon\Config(array_merge(config()->toArray(),$name));
        return $di->set('config', $config);
    }
    if(is_null($name) && empty($value)){return  $di->get('config');}
    $name = explode('.',$name);
    if(count($name) == 1){
        $name = $name[0];
        if(is_string($name)){
            if($name && $value){
                return $di->get('config')->$name=$value;
            }else if($name && $value === ''){
                return $di->get('config')->$name;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }else{
        $val = $di->get('config');
        foreach ($name as $key=>$value){
            if(isset($val->$value)){
                $val = $val->$value;
            }else{
                return false;
                break;
            }
        }
        return $val;
    }
}

/**
 * User: 一根小腿毛@QQ:1368213727
 * @param $p
 * @return string 获取页面完整url
 * 获取页面完整url
 */
function curPageURL($p){
    $di = Phalcon\DI::getDefault()->get('dispatcher');
    $opt = $di->getParams();
    $opt["page"] = $p;
    return url("{$di->getModuleName()}/{$di->getControllerName()}/{$di->getActionName()}",$opt);
}

/**
 * 单位字节转换
 * User: 一根小腿毛@QQ:1368213727
 * @param $filesize
 * @return string
 */
function changeFileSize($filesize){
    if($filesize >= 1073741824) {
        $filesize = round($filesize / 1073741824  ,2) . ' Gb';
    } elseif($filesize >= 1048576){
        $filesize = round($filesize / 1048576 ,2) . ' Mb';
    } elseif($filesize >= 1024){
        $filesize = round($filesize / 1024, 2) . ' Kb';
    } else{
        $filesize = $filesize . ' Bytes';
    }
    return $filesize;
}

/**
 * 生成随机数
 * User: 一根小腿毛@QQ:1368213727
 * @param int $length
 * @return int
 */
function get_random2($length = 4) {
    $min = pow(10 , ($length - 1));
    $max = pow(10, $length) - 1;
    return mt_rand($min, $max);
}