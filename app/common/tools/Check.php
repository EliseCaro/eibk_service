<?php
namespace App\Tools;
class check
{
    /* 检测用户名 */
    public static function username($str)
    {
        return preg_match("/^[A-Za-z0-9_]+$/", $str);
    }

    /**
     * 只允许字母和数字下划线
     */
    public static function a_z0_9_($str)
    {
        return preg_match("/^[A-Za-z0-9_]+$/", $str);
    }

    /**
     * 只允许字母和数字下划线
     */
    public static function a_z0_9_line($str)
    {
        return preg_match("/^[A-Za-z0-9_-]+$/", $str);
    }

    /**
     *  只允许字母下划线开头
     */
    public static function a_z_start($str)
    {
        return preg_match("/^[a-zA-Z][a-zA-Z0-9_]*+$/", $str);
    }

    /**
     * 只允许中文和数字字母下划线
     */
    public static function a_z0_9_chinese($str)
    {
        return preg_match("/^[\x{4e00}-\x{9fa5}A-Za-z0-9_]+$/u", $str);
    }

    /**
     * 判断域名是否为合法域名,中文域名会转成字符串对比
     */
    public static function domain($str)
    {
        $str = idn_to_ascii($str);
        return preg_match("/^[.A-Za-z0-9--]+$/", $str);
    }
    /**
     * 只允许中文和字母
     */
    public static function a_z_chinese($str)
    {
        return preg_match("/^[\x{4e00}-\x{9fa5}A-Za-z_]+$/u", $str);
    }

    /**
     * 只允许中文和空格
     */
    public static function chinese($str, $start = 1, $end = 50)
    {
        return preg_match("/^[\x{4e00}-\x{9fa5}\s?]{{$start},{$end}}+$/u", $str);
    }

    /*只允许字母*/
    public static function a_z($str, $start = 1, $end = 50)
    {
        return preg_match("/^[a-zA-Z]{{$start},{$end}}+$/", $str);
    }
    /*只允许数字*/
    public static function numeric($str, $start = 1, $end = 50)
    {
        return preg_match("/^\d{{$start},{$end}}$/", $str);
    }

    /*只允许字母和空格*/
    public static function a_z_space($str, $start = 1, $end = 50)
    {
        return preg_match("/^([a-zA-Z]\s?){{$start},{$end}}+$/", $str);
    }

    /**
     * 只允许英文和数字空格
     */
    public static function a_z0_9space($str, $start = 2, $end = 50)
    {
        return preg_match("/^([a-zA-z0-9]\s?){{$start},{$end}}+$/", $str);
    }

    /**
     * 只允许英文和数字空格中英文括号
     */
    public static function a_z0_9space_bracket($str, $start = 2, $end = 50)
    {
        return preg_match("/^([a-zA-z0-9()（）]\s?){{$start},{$end}}+$/", $str);
    }

    /**
     * 只允许英文和数字空格中英文括号
     */
    public static function a_z0_9space_bracket_douhao($str, $start = 2, $end = 50)
    {
        return preg_match("/^([a-zA-z0-9()（）.,]\s?){{$start},{$end}}+$/", $str);
    }


    /**
     * 只允许英文和数字
     */
    public static function a_z0_9($str, $start = 2, $end = 50)
    {
        return preg_match("/^[A-Za-z0-9]{{$start},{$end}}+$/", $str);
    }

    /* 检测手机号码 */
    public static function mobile($str)
    {
        return preg_match("/^0?(13|15|18|14|17)[0-9]{9}$/", $str);
    }

    /* 检测座机号码 */
    public static function tel($str)
    {
        return preg_match("/^(0[0-9]{2,3}\-?)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$/", $str);
    }

    /**
     * 判断邮箱
     */
    public static function email($str)
    {
        return preg_match("/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/", $str);
    }

    /* 判断QQ号码 */
    public static function qq($str)
    {
        return preg_match("/^[1-9][0-9]{4,}$/", $str);
    }

    /**
     * 判断网址
     */
    public static function url($str)
    {
        return preg_match("/^http[s]?:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"])*$/", $str);
    }

    /**
     * 验证姓名 限制在大小写英文、中文
     * 添加长度20的限制
     *@param $name
     *@return bool
     */
    public static function checkName($name) {
        $pattern = '/^[a-zA-Z\x{4e00}-\x{9fa5}]+$/u';
        if (preg_match($pattern, $name) && mb_strlen($name, 'utf-8')<=20) {
            return true;
        }
        return false;
    }
    /**
     * 判断图片格式
     */
    public static function picture($str)
    {
        return preg_match("/^(\/file\/upload\/|\/UploadFiles\/editor\/)[0-9]+\/[0-9]+\.(jpg|gif|jpeg|png|bmp)$/", $str);
    }
    /**
     * 判断Excel格式
     */
    public static function excel($str)
    {
        return preg_match("/^(\/file\/upload\/|\/UploadFiles\/editor\/)[0-9]+\/[0-9]+\.(xls|xlsx)$/", $str);
    }

    /**
     * 判断附件格式
     */
    public static function file($str)
    {
        return preg_match("/^(\/file\/upload\/|\/UploadFiles\/editor\/)[0-9]+\/[0-9]+\.(png|jpg|jpeg|gif|bmp|flv|swf|mkv|avi|rm|rmvb|mpeg|mpg|ogg|ogv|mov|wmv|mp4|webm|mp3|wav|mid|rar|zip|tar|gz|7z|bz2|cab|iso|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|md|xml)$/", $str);
    }

    /* 判断时间格式 */
    public static function date($str)
    {
        return strtotime($str) !== false;
    }

    /* 判断中文地址 */
    public static function chinese_address($str)
    {
        return preg_match("/[A-Za-z0-9_()（）\#\-\x{4e00}-\x{9fa5}]+$/u", $str);
    }

    /* 检测邮编 */
    public static function postcode($str)
    {
        return preg_match("/^[0-9]\d{5}(?!\d)$/", $str);
    }

    public static function ipv4($str)
    {
        return preg_match("/^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})$/", $str);
    }

    public static function isJson($str)
    {
        json_decode($str);
        return (json_last_error() == JSON_ERROR_NONE);
    }
}