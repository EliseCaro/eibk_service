<?php

namespace App\Models\common;

class Token extends \App\Models\CallModel
{

    public $table ="common_token";
    /**
     *
     * @var integer
     * @Primary
     * @Column(type="integer", length=10, nullable=false)
     */
    public $uid;

    /**
     *
     * @var string
     * @Column(type="string", length=50, nullable=false)
     */
    public $token;

    /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=false)
     */
    public $time;

        /**
     *
     * @var integer
     * @Column(type="integer", length=10, nullable=false)
     */
    public $type;

}
