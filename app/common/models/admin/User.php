<?php

namespace App\Models\admin;

use App\Models\CallModel;
use Phalcon\Validation;
use Phalcon\Validation\Validator\Email as EmailValidator;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Regex;
use Phalcon\Validation\Validator\Uniqueness;


class User extends CallModel
{

    public $table = 'admin_user';
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
     * @var string
     * @Column(type="string", length=32, nullable=false)
     */
    public $username;

    /**
     *
     * @var string
     * @Column(type="string", length=32, nullable=false)
     */
    public $nickname;

    /**
     *
     * @var string
     * @Column(type="string", length=96, nullable=false)
     */
    public $password;

    /**
     *
     * @var string
     * @Column(type="string", length=64, nullable=false)
     */
    public $email;

    /**
     *
     * @var integer
     * @Column(type="integer", length=1, nullable=false)
     */
    public $auth_qq;

    /**
     *
     * @var string
     * @Column(type="string", length=11, nullable=false)
     */
    public $mobile;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $avatar;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $role;

    /**
     *
     * @var integer
     * @Column(type="integer", length=11, nullable=false)
     */
    public $sing;
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
    public $last_login_time;

    /**
     *
     * @var integer
     * @Column(type="integer", length=20, nullable=false)
     */
    public $last_login_ip;

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
    public $is_client;

    /**
     * ????????????
     * @author ??????????????? <1368213727@qq.com>
     * @return string
     */
    public function beforeCreate()
    {
        $this->create_time = time();
        $this->update_time = time();
    }

    /**
     * ????????????
     * @author ??????????????? <1368213727@qq.com>
     * @return string
     */
    public function beforeUpdate()
    {
        $this->update_time = time();
    }

    /**
     * Validations and business logic
     *
     * @return boolean
     */
    public function validation()
    {
        $validator = new Validation();
        $validator->add(
            ["username","nickname","password","avatar","role","sing","is_client"],
            new PresenceOf([
                "message" => [
                    "username"  => "?????????????????????~",
                    "nickname"  => "??????????????????~",
                    "password"  => "??????????????????~",
                    "avatar"  => "??????????????????~",
                    "role"    => "??????????????????~",
                    "sing"    => "??????????????????~",
                    "is_client"    => "????????????????????????????????????~",
                ],
            ])
        );
        $validator->add("username", new Uniqueness([
            "message" => "?????????????????????~"
        ]));
        $validator->add('username', new Regex([
            'message' => '??????????????????????????????????????????',
            'pattern' => '/^[A-Za-z0-9_]+$/'/* /\+44 [0-9]+/ */
        ]));
        return $this->validate($validator);
    }

}
