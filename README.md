# 贝壳云笔记服务端

> 一个基于 phalcon3.x 开发的云储存平台

### 安装依赖包

``` bash
git clone https://github.com/Beatrice950201/eibk_service.git

cd eibk_service

composer install
```
### 安装Phalcon

``` bash

请安装Phalcon3.x,不支持Phalcon4,

Phalcon安装教程请查看逛网

请安装PHP7.x

```

### 数据库配置
``` bash
数据库文件存于public目录下eibk.sql

请手动创建数据库并导入数据库文件；

数据库里面的都是临时数据可以根据自己需求进行删除

以上步骤完成请修改app/config/config.php文件中的以下配置：

 'database' => [
        'adapter'  => 'Mysql',
        'host'     => '',// 填写链接地址：例如：127.0.0.1
        'username' => '',// 填写数据库用户名：例如：root
        'password' => '',// 填写数据库密码
        'dbname'   => 'eibk',// 数据库名
        'charset'  => 'utf8',// 数据库编码
    ],

```

### 储存配置
``` bash
本系统采用七牛云储存

首先申请七牛空间以及七牛媒体处理服务

以上步骤完成后请修改app/config/config.php文件中的以下配置：

'system'=>[
        'static_domain'=>'http://static.xxx.com',// 填写七牛自定义域名
        'q_access_key'=>'',                      // 填写七牛AccessKey
        'q_secret_key'=>'',                      // 填写七牛SecretKey
        'q_bucket'=>'',                          // 填写七牛空间名
        'q_bucket_md'=>'',                       // 填写七牛媒体处理任务名
    ],
```

### 伪静态配置
``` bash
 nginx伪静态：rewrite ^/(.*)$ /index.php?_url=/api/$1;
 Apache请自行翻译，这里不做介绍
```

### 客户端代码

[https://github.com/EliseCaro/eibk_client](https://github.com/Beatrice950201/eibk_client)

### 如有疑问请联系本人

``` bash

# QQ:1368213727 (一根小腿毛)

```
