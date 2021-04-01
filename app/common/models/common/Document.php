<?php

namespace App\Models\common;

class Document extends \App\Models\CallModel
{

    public $table = 'common_document';

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
    public $cid;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $model;

    /**
     *
     * @var string
     * @Column(type="string", length=256, nullable=false)
     */
    public $title;

    /**
     *
     * @var string
     * @Column(type="string", length=32, nullable=false)
     */
    public $shorttitle;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $uid;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $user_folder;

    /**
     *
     * @var string
     * @Column(type="string", nullable=true)
     */
    public $flag;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $view;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $comment;

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
    public $mark;

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
     * @Column(type="integer", length=2, nullable=false)
     */
    public $trash;

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
