<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/12/31
 * Time: 12:46
 */

namespace App\Tools\Music;

class Music extends Func {


    /**
     * 歌曲名字搜索
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param $query
     * @param int $page
     * @return string
     * @internal param string $site
     */
    public function mc_get_song_by_name($query,$page = 1,$limit){
        $radio_search_url = $this->mc_song_urls($query, 'query', Config::TYPE, $page,$limit);
        $radio_result = $this->mc_curl($radio_search_url);
        if (empty($radio_result)) {return false;}
        $radio_songid = $this->song_id($radio_result);
        return $this->mc_get_song_by_id($radio_songid, Config::TYPE, true);
    }

    /**
     * 获取音乐id
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $songid
     * @param string $site
     * @param bool $multi
     * @return array|string
     */
    function mc_get_song_by_id($songid, $site = 'netease', $multi = false){
            if (empty($songid) || empty($site)) {return false;}
            $radio_song_urls =[];
            $site_allow_multiple =['netease','qq'];
            if ($multi) {
                if (!is_array($songid)) {return false;}
                if (in_array($site, $site_allow_multiple, true)) {
                    $radio_song_urls[] = $this->mc_song_urls(implode(',', $songid), 'songid', $site);
                } else {
                    foreach ($songid as $key => $val) {
                        $radio_song_urls[] = $this->mc_song_urls($val, 'songid', $site);
                    }
                }
            } else {
                $radio_song_urls[] = $this->mc_song_urls($songid, 'songid', $site);
            }

            if (empty($radio_song_urls) || !array_key_exists(0, $radio_song_urls)) {
                return false;
            }
            $radio_result = array();
            foreach ($radio_song_urls as $key => $val) {
                $radio_result[] = $this->mc_curl($val);
            }
            if (empty($radio_result) || !array_key_exists(0, $radio_result)) {
                return false;
            }
            switch ($site) {
                case 'qq':
                    $radio_songs = $this->qq_data($radio_result,$site);
                    break;
                case 'netease':
                default:
                    $radio_songs = $this->netease_data($radio_result,$songid,$site);
                    break;
            }
            return !empty($radio_songs) ? $radio_songs : '';
    }




}