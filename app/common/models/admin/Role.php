<?php

namespace App\Models\admin;

class Role extends \App\Models\CallModel
{

    public $table = 'admin_role';
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
     * @var string
     * @Column(type="string", length=32, nullable=false)
     */
    public $name;

    /**
     *
     * @var string
     * @Column(type="string", length=255, nullable=false)
     */
    public $description;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $menu_auth;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $sort;

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
     * @Column(type="integer", length=2, nullable=false)
     */
    public $status;

    /**
     *
     * @var integer
     * @Column(type="integer", length=4, nullable=false)
     */
    public $access;

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
