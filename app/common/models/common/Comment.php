<?php

namespace App\Models\common;

class Comment extends \App\Models\CallModel
{
    public $table = "common_comment";

    public $topic_type_attr = [1=>"作品"];
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
     * @Column(type="integer", length=6, nullable=false)
     */
    public $topic_id;

    /**
     *
     * @var integer
     * @Column(type="integer", length=1, nullable=false)
     */
    public $topic_type;

    /**
     *
     * @var string
     * @Column(type="string", nullable=true)
     */
    public $content;

    /**
     *
     * @var integer
     * @Column(type="integer", length=5, nullable=false)
     */
    public $from_uid;

    /**
     *
     * @var integer
     * @Column(type="integer", length=5, nullable=false)
     */
    public $to_uid;

    /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=false)
     */
    public $update_time;

}
