<?php

namespace App\Models\admin;

class Attachment extends \App\Models\CallModel
{
    public $table = 'admin_attachment';

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=11, nullable=false)
     */
    public $id;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $uid;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $name;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $path;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $thumb;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $url;

    /**
     *
     * @var string
     * @Column(type="string", length=64, nullable=false)
     */
    public $mime;

    /**
     *
     * @var string
     * @Column(type="string", length=4, nullable=false)
     */
    public $ext;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $size;

    /**
     *
     * @var string
     * @Column(type="string", length=32, nullable=false)
     */
    public $md5;

    /**
     *
     * @var string
     * @Column(type="string", length=40, nullable=false)
     */
    public $sha1;

    /**
     *
     * @var string
     * @Column(type="string", length=16, nullable=false)
     */
    public $driver;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $create_time;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $update_time;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $sort;

    /**
     *
     * @var integer
     * @Column(type="integer", length=2, nullable=false)
     */
    public $status;

    /**
     * 自动填充
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function beforeCreate()
    {
        $this->create_time = time();
        $this->update_time = time();
    }

    /**
     * 自动更新
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function beforeUpdate()
    {
        $this->update_time = time();
    }
    /**
     * 获取字段value
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $id
     * @param $column
     */
    static function get_file_column($id,$column){
       return self::where(['id'=>$id,'status'=>1])->_value($column);
    }
}
