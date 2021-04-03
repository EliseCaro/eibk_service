<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/12/31
 * Time: 14:13
 */
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/12/31
 * Time: 14:13
 */

namespace App\Tools\Music;


class Urls{
    /**
     * 搜索url
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $query
     * @param $page
     * @return array
     */
    public function search_urls($query,$page,$limit){
        $radio_search_urls=[];
        /**
         * 网易云音乐
         */
        $radio_search_urls["netease"]=[
            'method'         => 'POST',
            'url'            => 'http://music.163.com/api/linux/forward',
            'referer'        => 'http://music.163.com/',
            'proxy'          => false,
            'body'           => $this->encode_netease_data([
                'method'     => 'POST',
                'url'        => 'http://music.163.com/api/cloudsearch/pc',
                'params'     => [
                    's'      => $query,
                    'type'   => 1,
                    'offset' => $page * 2 - 2,
                    'limit'  => $limit ? $limit : 1
                ]
            ])
        ];
        $radio_search_urls["kugou"]=[
            'method'         => 'GET',
            'url'            => 'http://songsearch.kugou.com/song_search_v2',
            'referer'        => 'http://www.kugou.com',
            'proxy'          => false,
            'body'           => [
                'keyword'    => $query,
                'platform'   => 'WebFilter',
                'format'     => 'json',
                'page'       => $page,
                'pagesize'   => $limit ? $limit : 1
            ]
        ];
      return $radio_search_urls;
    }

    /**
     * 音乐MP3地址
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $songid
     * @return array
     */
    public function song_urls($songid){
        $radio_song_urls=[];
        $radio_song_urls["netease"]=[
            'method'        => 'POST',
            'url'           => 'http://music.163.com/api/linux/forward',
            'referer'       => 'http://music.163.com/',
            'proxy'         => false,
            'body'          => $this->encode_netease_data([
                'method'    => 'GET',
                'url'       => 'http://music.163.com/api/song/detail',
                'params'    =>[
                    'id'      => $songid,
                    'ids'     => '[' . $songid . ']'
                ]
            ])
        ];
        return $radio_song_urls;
    }

    /**
     * 加密网易云音乐 api 参数
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param $data
     * @return array
     */
    public function encode_netease_data($data){
        $_key     = '7246674226682325323F5E6544673A51';
        $data     = json_encode($data);
        if (function_exists('openssl_encrypt')) {
            $data = openssl_encrypt($data, 'aes-128-ecb', pack('H*', $_key));
        } else {
            $_pad = 16 - (strlen($data) % 16);
            $data = base64_encode(mcrypt_encrypt(
                MCRYPT_RIJNDAEL_128,
                hex2bin($_key),
                $data.str_repeat(chr($_pad), $_pad),
                MCRYPT_MODE_ECB
            ));
        }
        $data     = strtoupper(bin2hex(base64_decode($data)));
        return array('eparams' => $data);
    }
}