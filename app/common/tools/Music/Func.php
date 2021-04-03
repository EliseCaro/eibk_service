<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/12/31
 * Time: 14:30
 */
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/12/31
 * Time: 14:30
 */

namespace App\Tools\Music;


use App\Tools\QiniuDrive;
use Curl\Curl;

class Func extends Urls {
    /**
     * 获得歌曲id
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $radio_result
     * @return bool
     */
   function song_id($radio_result){
       $radio_songid = [];
       switch (Config::TYPE) {
           case 'qq':
               $radio_data = json_decode($radio_result, true);
               if (empty($radio_data['data']) || empty($radio_data['data']['song']) || empty($radio_data['data']['song']['list'])) {
                   return false;
               }
               foreach ($radio_data['data']['song']['list'] as $val) {
                   $radio_songid[] = $val['songmid'];
               }
               break;
           case 'netease':
           default:
               $radio_data = json_decode($radio_result, true);
               if (empty($radio_data['result']) || empty($radio_data['result']['songs'])) {
                   return false;
               }
               foreach ($radio_data['result']['songs'] as $val) {
                   $radio_songid[] = $val['id'];
               }
               break;
       }
       return $radio_songid;
   }


    /**
     * qq获取数据
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function qq_data($radio_result,$site){
        $radio_vkey = json_decode($this->mc_curl(array(
            'method'     => 'GET',
            'url'        => 'http://base.music.qq.com/fcgi-bin/fcg_musicexpress.fcg',
            'referer'    => 'http://y.qq.com',
            'proxy'      => false,
            'body'       => array(
                'json'   => 3,
                'guid'   => 5150825362,
                'format' => 'json'
            )
        )), true);
        foreach ($radio_result as $val) {
            $radio_json                  = json_decode($val, true);
            $radio_data                  = $radio_json['data'];
            $radio_url                   = $radio_json['url'];
            if (!empty($radio_data) && !empty($radio_url)) {
                foreach ($radio_data as $value) {
                    $radio_song_id       = $value['mid'];
                    $radio_authors       = array();
                    foreach ($value['singer'] as $singer) {
                        $radio_authors[] = $singer['title'];
                    }
                    $radio_author        = implode(',', $radio_authors);
                    $radio_lrc_urls      = $this->mc_song_urls($radio_song_id, 'lrc', $site);
                    if ($radio_lrc_urls) {
                        $radio_lrc       = $this->jsonp2json($this->mc_curl($radio_lrc_urls));
                    }
                    if (!empty($radio_vkey['key'])) {
                        $radio_music     = $this->generate_qqmusic_url($radio_song_id, $radio_vkey['key']);
                    } else {
                        $radio_music     = 'http://' . str_replace('ws', 'dl', $radio_url[$value['id']]);
                    }
                    $radio_album_id      = $value['album']['mid'];
                    $radio_songs[]       = array(
                        'type'   => 'qq',
                        'link'   => 'http://y.qq.com/n/yqq/song/' . $radio_song_id . '.html',
                        'songid' => $radio_song_id,
                        'title'  => $value['title'],
                        'author' => $radio_author,
                        'lrc'    => $this->str_decode($radio_lrc['lyric']),
                        'url'    => $radio_music,
                        'pic'    => 'http://y.gtimg.cn/music/photo_new/T002R300x300M000' . $radio_album_id . '.jpg'
                    );
                }
            }
        }
        return $radio_songs;
    }

    /**
     * 网易云
     */
    public function netease_data($radio_result,$songid,$site){
        $radio_streams                   = array(
            'method'      => 'POST',
            'url'         => 'http://music.163.com/api/linux/forward',
            'referer'     => 'http://music.163.com/',
            'proxy'       => false,
            'body'        => $this->encode_netease_data(array(
                'method'  => 'POST',
                'url'     => 'http://music.163.com/api/song/enhance/player/url',
                'params'  => array(
                    'ids' => is_array($songid) ? $songid : [$songid],
                    'br'  => 320000,
                )
            ))
        );
        $radio_info                      = json_decode($this->mc_curl($radio_streams), true);
        $radio_urls                      = array();
        if (!empty($radio_info['data'])) {
            foreach ($radio_info['data'] as $val) {
                $radio_urls[$val['id']]  = $val['url'];
            }
        }
        foreach ($radio_result as $val) {
            $radio_json                  = json_decode($val, true);
            $radio_data                  = $radio_json['songs'];
            if (!empty($radio_data)) {
                foreach ($radio_data as $value) {
                    $radio_song_id       = $value['id'];
                    $radio_authors       = array();
                    foreach ($value['artists'] as $key => $val) {
                        $radio_authors[] = $val['name'];
                    }
                    $radio_author = implode(',', $radio_authors);
                    $id = $radio_song_id;
                    $title = $value['name'];
                    $artist = $radio_author;
                    $file = $radio_urls[$radio_song_id];
                    $cover = $value['album']['picUrl'] . '?param=600x600';
                    if($id && $title && $artist && $file && $cover){
                        $initMp3 =[
                            'id' => $id,
                            'title'  => $title,
                            'artist' => $artist,
                            'file'    => $file,
                            'cover'    => $cover
                        ];
                        $radio_songs[] = $initMp3;
                    }
                }
            }
        }
        return $radio_songs;
    }

    /**
     * 音频数据接口地址
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $value
     * @param string $type
     * @param string $site
     * @param int $page
     * @return mixed|void
     */
    public function mc_song_urls($value, $type = 'query', $site = 'netease', $page = 1,$limit){

        $query= ('query' === $type) ? $value : '';
        $songid= ('songid' === $type || 'lrc' === $type) ? $value : '';

        //获取搜索地址
        if ('query' === $type) {
            $radio_search_urls=$this->search_urls($query,$page,$limit);
            return $radio_search_urls[$site];
        }
        //获取MP3地址
        if ('songid' === $type) {
            $radio_song_urls = $this->song_urls($songid);
            return $radio_song_urls[$site];
        }
        return false;
    }
    /**
     * 准备curl
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param array $args
     */
    public function mc_curl($args = []){
        $default      = array(
            'method'     => 'GET',
            'user-agent' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.50 Safari/537.36',
            'url'        => null,
            'referer'    => 'https://www.google.co.uk',
            'headers'    => null,
            'body'       => null,
            'proxy'      => false
        );
        $args         = array_merge($default, $args);
        $method       = mb_strtolower($args['method']);
        $method_allow = array('get', 'post');
        if (null === $args['url'] || !in_array($method, $method_allow, true)) {return false;}
        $curl         = new Curl();
        $curl->setUserAgent($args['user-agent']);
        $curl->setReferrer($args['referer']);
        $curl->setTimeout(15);
        $curl->setHeader('X-Requested-With', 'XMLHttpRequest');
        $curl->setOpt(CURLOPT_FOLLOWLOCATION, true);
        if ($args['proxy'] && Config::MC_PROXY) {
            $curl->setOpt(CURLOPT_HTTPPROXYTUNNEL, 1);
            $curl->setOpt(CURLOPT_PROXY, Config::MC_PROXY);
            $curl->setOpt(CURLOPT_PROXYUSERPWD, Config::MC_PROXYUSERPWD);
        }
        if (!empty($args['headers'])) {
            $curl->setHeaders($args['headers']);
        }
        $curl->$method($args['url'], $args['body']);
        $curl->close();
        if (!$curl->error) {
            return $curl->rawResponse;
        }
    }

    /**
     * 转义
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $str
     * @return mixed|string
     */
    public function str_decode($str) {
        $str = str_replace(['&#13;', '&#10;'], ['', "\n"], $str);
        $str = html_entity_decode($str, ENT_QUOTES, 'UTF-8');
        return $str;
    }

    /**
     * jsonp 装json
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $jsonp
     * @return mixed
     */
    public function jsonp2json($jsonp) {
        if ($jsonp[0] !== '[' && $jsonp[0] !== '{') {
            $jsonp = mb_substr($jsonp, mb_strpos($jsonp, '('));
        }
        $json = trim($jsonp, "();");
        if ($json) {
            return json_decode($json, true);
        }
    }

    /**
     * 生成qq音乐各种链接
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $songmid
     * @param $key
     * @return string
     */
    public function generate_qqmusic_url($songmid, $key) {
        $quality = array('M800', 'M500', 'C400');
        foreach ($quality as $value) {
            $url = 'http://dl.stream.qqmusic.qq.com/' . $value . $songmid . '.mp3?vkey=' . $key . '&guid=5150825362&fromtag=1';
            if (!$this->mc_is_error($url)) {
                return $url;
            }
        }
    }

    /**
     * 判断地址是否有误
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $url
     * @return int
     */
    public function mc_is_error($url) {
        $curl = new Curl();
        $curl->setUserAgent('Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.50 Safari/537.36');
        $curl->head($url);
        $curl->close();
        return $curl->errorCode;
    }
}