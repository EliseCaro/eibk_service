<?php

namespace App\Models\common;

class Like extends \App\Models\CallModel
{

    public $table = 'common_like';

    public $type_attr = [1=>"作品",2=>"评论"];
    public $status_attr = [0=>"取消赞",1=>"点赞",-1=>"踩"];
    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=10, nullable=false)
     */
    public $id;

    /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=false)
     */
    public $type_id;

    /**
     *
     * @var integer
     * @Column(type="integer", length=1, nullable=false)
     */
    public $type;

    /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=false)
     */
    public $user_id;

    /**
     *
     * @var integer
     * @Column(type="integer", length=1, nullable=false)
     */
    public $status;

    /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=false)
     */
    public $update_time;

}
