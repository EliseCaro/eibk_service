<?php

namespace App\Models\common;

class DocumentMusic extends \App\Models\CallModel
{
    public $table = "common_document_music";

    /**
     *
     * @var integer
     * @Primary
     * @Column(type="integer", length=11, nullable=false)
     */
    public $aid;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $file_id;


}
