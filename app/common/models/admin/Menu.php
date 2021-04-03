<?php

namespace App\Models\admin;

class Menu extends \App\Models\CallModel
{

    public $table ='admin_menu';
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
    public $pid;

    /**
     *
     * @var string
     * @Column(type="string", length=16, nullable=false)
     */
    public $module;

    /**
     *
     * @var string
     * @Column(type="string", length=32, nullable=false)
     */
    public $title;

    /**
     *
     * @var string
     * @Column(type="string", length=64, nullable=false)
     */
    public $icon;

    /**
     *
     * @var string
     * @Column(type="string", length=16, nullable=false)
     */
    public $url_type;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $url_value;

    /**
     *
     * @var string
     * @Column(type="string", length=16, nullable=false)
     */
    public $url_target;

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
}
