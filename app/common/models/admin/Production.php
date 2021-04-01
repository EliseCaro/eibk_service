<?php

namespace App\Models\admin;
use Phalcon\Validation;
use Phalcon\Validation\Validator\PresenceOf;
class Production extends \App\Models\CallModel
{
    public $table ="admin_production";

    /**
     *
     * @var integer
     * @Primary
     * @Identity
     * @Column(type="integer", length=5, nullable=false)
     */
    public $id;
    public $title;
    public $url;

    /**
     *
     * @var string
     * @Column(type="string", length=150, nullable=false)
     */
    public $des;

    /**
     *
     * @var string
     * @Column(type="string", length=100, nullable=false)
     */
    public $cover;

    /**
     *
     * @var string
     * @Column(type="string", nullable=false)
     */
    public $content;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $time;

    /**
     * Validations and business logic
     *
     * @return boolean
     */
    public function validation()
    {
        $validator = new Validation();
        $validator->add(
            ["title","des","cover","content"],
            new PresenceOf([
                "message" => [
                    "title"  => "标题不能为空~",
                    "des"  => "描述不能为空~",
                    "cover"  => "封面不能为空~",
                    "content"  => "内容不能为空~",
                    "time"  => "时间不能为空~",
                ],
            ])
        );
        return $this->validate($validator);
    }

}
