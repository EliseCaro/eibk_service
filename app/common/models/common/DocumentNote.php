<?php

namespace App\Models\common;

class DocumentNote extends \App\Models\CallModel
{

    public $table = 'common_document_note';
    /**
     *
     * @var integer
     * @Primary
     * @Column(type="integer", length=11, nullable=false)
     */
    public $aid;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $content;

    /**
     *
     * @var string
     * @Column(type="string", length=256, nullable=false)
     */
    public $descriptions;

}
