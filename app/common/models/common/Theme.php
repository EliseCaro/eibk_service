<?php

namespace App\Models\common;

class Theme extends \App\Models\CallModel
{

    public $table = "common_theme";
    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=5, nullable=false)
     */
    public $id;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $title;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $shortdesc;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $cover;

    /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=false)
     */
    public $update_time;

}
