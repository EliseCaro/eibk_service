<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/12/31
 * Time: 14:11
 */
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/12/31
 * Time: 14:11
 */

namespace App\Tools\Music;


class Config{
    /**
     *  Curl 代理地址，例如：define('MC_PROXY', 'someproxy.com:9999')
     */
    const MC_PROXY = false;
    /**搜索接口
    [
    'netease'    => '网易',
    'qq'         => 'ＱＱ',
    'kugou'      => '酷狗',
    'kuwo'       => '酷我',
    'xiami'      => '虾米',
    'baidu'      => '百度',
    '1ting'      => '一听',
    'migu'       => '咪咕',
    'lizhi'      => '荔枝',
    'qingting'   => '蜻蜓',
    'ximalaya'   => '喜马拉雅',
    'kg'         => '全民K歌',
    '5singyc'    => '5sing原创',
    '5singfc'    => '5sing翻唱',
    'soundcloud' => 'SoundCloud'
    ]
     * @var string
     */
    const TYPE = "netease";
    /**
     *  Curl 代理用户名和密码，例如：define('MC_PROXYUSERPWD', 'username:password')
     */
    const MC_PROXYUSERPWD=false;
}