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
                    "username"  => "用户名不能为空~",
                    "nickname"  => "昵称不能为空~",
                    "password"  => "密码不能为空~",
                    "avatar"  => "头像不能为空~",
                    "role"    => "角色不能为空~",
                    "sing"    => "签名不能为空~",
                    "is_client"    => "请选择是否可以登录客户端~",
                ],
            ])
        );
        $validator->add("username", new Uniqueness([
            "message" => "用户名已经存在~"
        ]));
        $validator->add('username', new Regex([
            'message' => '用户名只允许字母和数字下划线',
            'pattern' => '/^[A-Za-z0-9_]+$/'/* /\+44 [0-9]+/ */
        ]));
        return $this->validate($validator);
    }

}
