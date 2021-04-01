<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/27
 * Time: 23:34
 * 个人资料服务类
 */

namespace App\Modules\Api\service;

use App\Service\BaseService;
use App\Tools\QiniuDrive;

class ProfileService extends BaseService
{
    /**
     * 获得上传头像token
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
     public function avatar_token(){
         $drive = new QiniuDrive();
         $bc = url('/notice/Avatar');
         return $drive->get_token($bc);
     }
}