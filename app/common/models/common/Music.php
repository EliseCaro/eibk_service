<?php

namespace App\Models\common;

class Music extends \App\Models\CallModel
{
    public $table="common_music";

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
     * @var string
     * @Column(type="string", length=50, nullable=true)
     */
    public $name;

    /**
     *
     * @var string
     * @Column(type="string", length=200, nullable=true)
     */
    public $path;

    /**
     *
     * @var string
     * @Column(type="string", length=30, nullable=false)
     */
    public $author;

    /**
     *
     * @var string
     * @Column(type="string", length=200, nullable=false)
     */
    public $cover;

    /**
     *
     * @var string
     * @Column(type="string", length=40, nullable=true)
     */
    public $hash;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=true)
     */
    public $fsize;

    /**
     *
     * @var string
     * @Column(type="string", length=64, nullable=false)
     */
    public $mime;

    /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=true)
     */
    public $update_time;

}
