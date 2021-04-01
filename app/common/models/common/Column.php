<?php

namespace App\Models\common;

class Column extends \App\Models\CallModel
{

    public $table = "common_column";
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
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $uid;

    /**
     *
     * @var string
     * @Column(type="string", length=32, nullable=false)
     */
    public $name;

    /**
     *
     * @var string
     * @Column(type="string", length=150, nullable=false)
     */
    public $description;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $model;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $cover;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $good;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $bad;

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
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $rank_auth;

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
