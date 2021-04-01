<?php
/**
 * Created by PhpStorm.
 * User: 一根小腿毛
 * Date: 2017/9/29
 * Time: 15:49
 */
namespace App\Models;

use Phalcon\Mvc\Model\Resultset\simple as Resultset;
use Phalcon\Paginator\Adapter\Model as PaginateModel;

class BaseModel
{

    private $opt;
    private $query;
    private $builder_obj;

    /**初始化
     * BaseModel constructor.
     * @param null $query
     */
    public function __construct($query =null){
        $this->query =  $query;
        $this->query->setup(['notNullValidations'=>false]);
        $this->_opt();
    }

    /**
     * _opt();
     * 初始化sql条件；
     *
     * @access private
     * @since 1.0
     */
    private function _opt(){
        $this->opt = array(
            'field' => '*',
            'where' => '',
            'order' => '',
            'limit' => '',
            'cache'=>'',
            "bind"=>'',
        );
    }

    /**
     * 查询一条
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function _find(){
     if($this->builder_obj){
         return $this->alias_builder(function ($data =''){
            if($data && $data=$data->toArray()){
                return $data[0] ? $data[0] : false;
            }
         },true);
     }else{
         return $this->alias_opt(function (array $conditions){
             return $this->query->findFirst($conditions);
         });
     }
    }
    /**
     * 查询一个字段值
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $column
     */
    public function _value($column){
        return $this->alias_opt(function (array $conditions)use ($column){
            $v=$this->query->findFirst($conditions);
            if($v) $v = $v->toArray();
            return isset($v[$column]) ? $v[$column] : '';
        });
    }

    /**
     * 获取条数
     * User: 一根小腿毛@QQ:1368213727
     * @return string
     */
    public function _count(){
        return $this->alias_opt(function (array $conditions){
            $count=$this->query->count($conditions);
            return $count ? $count : 0;
        });
    }

    /**
     * 取多条数据
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @internal param null $where
     * @internal param string $attr
     * @internal param string $order
     * @internal param string $limit
     */
    public function _select(){
        if($this->builder_obj){
         return $this->alias_builder(function ($data =''){
            return $data;
         });
        }else{
            return $this->alias_opt(function (array $conditions){
                return $this->query->find($conditions);
            });
        }
    }

    /**
     * 更新
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param array $data
     */
    public function _update(array $data =[]){
        if(!$this->opt['where'] && isset($data['id']) && $data['id']){
            $this->where(['id'=>$data['id']]);
        }
        $Info = $this->_find();
        foreach ($data as $key=>$val){$Info->$key = $val;}
        if($Info->update() === false){
            $error = '';
            foreach ($Info->getMessages() as $message) {
                $error.= $message->getMessage().',';
            }
            $this->query->error = $error;
            return false;
        }else{
           return true;
        }
    }

    /**
     * 添加数据
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param array $data
     * @return bool
     */
    public function _insert(array $data=[]){
     if(!$data){
         $this->query->error = '空数组不能入库~';
         return false;
     }
     foreach ($data as $key=>$val){
        $this->query->$key = $val;
     }
     if($this->query->save()){
        return (isset($this->query->id)) ? $this->query->id :true;
     }else{
         $error = '';
         foreach ($this->query->getMessages() as $message) {
             $error=$message->getMessage();
             break;
         }
         $this->query->error = $error;
         return false;
     }
    }

    /**
     * 删除
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @return bool
     */
    public function _delete(){
        $customer = $this->_select();
        foreach($customer as $row){
            if ($row->delete() == false) {
                $error = '';
                foreach ($customer->getMessages() as $message) {
                    $error.= $message->getMessage().',';
                }
                $this->query->error = $error;
                return false;
            }
        }
        return true;
    }

    /**
     * User: 一根小腿毛@QQ:1368213727
     * @param $name
     * @param $key
     * @return string
     */
    public function _column($name,$key){
        if($this->builder_obj){
            return $this->alias_builder(function ($data ='')use ($key,$name){
                return array_column($data->toArray(), $name, $key);
            });
        }else{
            return $this->alias_opt(function (array $conditions)use ($key,$name){
                return array_column($this->query->find($conditions)->toArray(), $name, $key);
            });
        }
    }


    /**
     * 分页
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param int $count  每页多少条
     * @param int $page 当前第几页
     * @param string $list 分页数据
     * @return string
     */
    public function paginate($count=0,$page=0,$list=''){
      $list  = $list ? $list :$this->_select();
      $count = ($count>0) ? $count : config('web.paginate_count');
      $page  = ($page>0) ? $page : $this->get_page();
      $paginate   = new PaginateModel([
          "data"  => $list,
          "limit" => $count,
          "page"  => $page
      ]);
      return $paginate->getPaginate();
    }

    /**
     * 批量插入
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $data
     * @return bool
     */
    function saveAll($data){
        $table_name=$this->query->table;//表名
        if(!isset($data[0])){return false;}
        $keys=$data[0];
        $field = implode(',', array_keys($keys));
        $value='';
        foreach ($data as $v){
            $value.="(".implode(',',array_values($v))."),";
        }
        $value=rtrim($value,",");
        $update_field='';
        foreach ($keys as $key=>$v){
            $update_field.=" ".$key." = VALUES(".$key."),";
        }
        $update_fiele=rtrim($update_field,",");
        $sql="INSERT INTO {$table_name} ({$field}) VALUES {$value} ON DUPLICATE KEY  UPDATE {$update_fiele}";
        try{
            $info=new Resultset(null,$this->query, $this->query->getWriteConnection()->execute($sql));
            if(!empty($info->toArray())){
                return false;
            }
            return true;
        }catch (\Exception $e){
            $this->query->error=$e->getMessage();
            return false;
        }
    }

    /**
     * @access public
     * @param 字段名|bool $field 字段名
     * @return BaseModel
     * @since 1.0
     */
    public function field($field=true){
        $this->opt['field'] = ($field===true) ? '*' : $field;
        return $this;
    }
    /**
     * 排序
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param string $order
     * @return $this
     */
    public function order($order=''){
        $this->opt['order'] = $order;
        return $this;
    }

    /**
     * 条数
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param string $limit
     * @return $this
     */
    public function limit($limit = ''){
        if($limit){
            $l = explode(",",$limit);
            $offset =(count($l)==2) ? $l[0] :0;
            $limit  =(count($l)==2) ? $l[1] :$l[0];
            $this->opt['limit'] = ["offset"=>$offset,"limit"=>$limit];
        }
        return $this;
    }

    /**
     * 构建builder器
     * @author 一根小腿毛 <1368213727@qq.com>
     *
     * @param array $model
     * @return string
     * @internal param string $namespace
     */
    public function builder(array $model=[]){
      if(!$model){
          $table = $this->query->table;
          list($namespace_prefix)=explode('_',$table);
          $modelName = $this->convertUnderline1($table);
          $modelName = str_replace($this->convertUnderline1($namespace_prefix),"",$modelName);
          $model['a'] = "App\\Models\\{$namespace_prefix}\\{$modelName}";
      }
      $this->builder_obj= $this->query->getModelsManager()->createBuilder()->from($model);
      return $this;
    }
    /**
     * 左链接
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param string $namespace
     * @param string $conditions
     * @param string $alias
     * @return $this
     */
    public function Leftjoin($namespace='',$conditions='',$alias=''){
        $this->builder_obj = $this->builder_obj->leftJoin($namespace, $conditions, $alias);
        return $this;
    }
    /**
     * 右链接
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param string $namespace
     * @param string $conditions
     * @param string $alias
     * @return $this
     */
    public function Rightjoin($namespace='',$conditions='',$alias=''){
        $this->builder_obj = $this->builder_obj->rightJoin($namespace, $conditions, $alias);
        return $this;
    }
    /**
     * 中链接
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param string $namespace
     * @param string $conditions
     * @param string $alias
     * @return $this
     */
    public function Innerjoin($namespace='',$conditions='',$alias=''){
        $this->builder_obj = $this->builder_obj->innerJoin($namespace, $conditions, $alias);
        return $this;
    }

    /**
     * 缓存
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param string $lifetime
     * @return string
     */
    public function _cache($lifetime=''){
        if(empty($lifetime)) $lifetime = config('system.cache_time');
        $this->opt['cache'] = $lifetime;
        return $this;
    }

    /**
     * 开始事物
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    public function _begin(){
       return $this->query->getDI()->get('db')->begin();
    }

    /**
     * 回滚事物
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @return mixed
     */
    public function _rollback(){
        return $this->query->getDI()->get('db')->rollback();
    }

    /**
     * 提交事物
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @return mixed
     */
    public function _commit(){
        return $this->query->getDI()->get('db')->commit();
    }


    /**
     * 写入条件
     * @author 一根小腿毛 <1368213727@qq.com>
     * @param array $where
     * @param string $link
     * @return string
     */
    public function where(array $where=[],$link =" AND "){
        $str = '';
        foreach ($where as $k=>$v){
            $b_k = (isset($this->opt["bind"][$k]) || isset($this->opt["bind"]["{$k}_one"]) || isset($this->opt["bind"]["{$k}_tow"])) ? "{$k}_{$k}" : $k;
            if(is_array($v) && count($v) >= 2){
                $v[0] = strtoupper($v[0]);
                if(count($v) == 2){
                    switch ($v[0]){
                        case "IN":
                             $str .= "{$k} {$v[0]} ({{$this->int_str($b_k)}:array}) AND ";
                        break;
                        default:
                             $str .= "{$k} {$v[0]} :{$this->int_str($b_k)}: AND ";
                    }
                    $this->opt["bind"][$this->int_str($b_k)] = $v[1];
                }
                if(count($v) == 3){
                    $str .= "{$k} {$v[0]} :{$this->int_str($b_k)}_one: AND :{$this->int_str($b_k)}_tow:";
                    $this->opt["bind"]["{$this->int_str($b_k)}_one"] = $v[1];
                    $this->opt["bind"]["{$this->int_str($b_k)}_tow"] = $v[2];
                }
            }else{
                $str .= "{$k}=:{$this->int_str($b_k)}: AND ";
                $this->opt["bind"][$this->int_str($b_k)] = $v;
            }
        }
        if(empty($this->opt['where'])){
            $this->opt['where']=rtrim($str,' AND ');
        }else{
            $this->opt['where'] .= $link .rtrim($str,' AND ');
        }
        return $this;
    }

    /**OR
     * User: 一根小腿毛@QQ:1368213727
     * @param array $w
     * @return string
     */
    public function whereOr(array $w=[]){
        return $this->where($w," OR ");
    }

    /**
     * 处理高级查询跟普通查询绑定where
     * User: 一根小腿毛@QQ:1368213727
     * @param string $str
     * @return string
     */
    private function int_str($str = ""){
         if(!$str){return "";}
         $str = explode(".",$str);
         if(count($str) == 2){
             return $str[1];
         }else{
             return $str[0];
         }
    }
    /**
     * 狗机器处理
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param callable $bc
     */
    private function alias_builder(callable $bc,$isOne=false){
        //var_dump($this->opt);
        $res = $this->builder_obj;
        if($this->opt['field'] && $this->opt['field'] != "*") $res ->columns($this->opt['field']);
        if($this->opt['where']) $res=$res->where($this->opt['where'],$this->opt['bind']);
        if($this->opt['order']) $res=$res->orderBy($this->opt['order']);
        if(is_array($this->opt["limit"])) $res=$res->limit($this->opt["limit"]["limit"],$this->opt["limit"]["offset"]);
        if($isOne ==true) $res=$res->limit(1,0);
        //$ck=md5(self::_createKey($this->opt));
/*        if(apc_fetch($ck) && config('system.debug') === false && $this->opt['cache']){
          $rs = apc_fetch($ck);
        }else{
            $rs = $res->getQuery()->execute();
            if(config('system.debug') === false && $this->opt['cache'] && $rs){
               apc_store($ck, $rs,$this->opt['cache']);
            }
        }*/
        $rs = $res->getQuery()->execute();
        return $bc($rs);
    }

    /**
     * 拼接查询参数
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param callable $bc
     * @return mixed
     */
    private function alias_opt(callable $bc){
        $conditions = ["columns"=>$this->opt['field']];
        if($this->opt['where']){
            $conditions["conditions"] = $this->opt['where'];
            $conditions["bind"] = $this->opt['bind'];
        }
        if($this->opt['order']){
            $conditions["order"] =  $this->opt['order'];
        }
        if(is_array($this->opt["limit"])){
            $conditions["limit"] =  $this->opt["limit"]["limit"];
            $conditions["offset"] =  $this->opt["limit"]["offset"];
        }
        if($this->opt['cache'] && config('system.debug') === false){
            $conditions['cache'] =["key" => self::_createKey($conditions),"lifetime" => $this->opt['cache']];
        }
        if(!$conditions['order']){unset($conditions['order']);};
        //var_dump($conditions);
        return $bc($conditions);
    }
    /**
     * Implement a method that returns a string key based
     * on the query parameters
     */
    private static function _createKey($parameters)
    {
        $uniqueKey = array();
        foreach ($parameters as $key => $value) {
            if (is_scalar($value)) {
                $uniqueKey[] = $key . ':' . $value;
            } else {
                if (is_array($value)) {
                    $uniqueKey[] = $key . ':[' . self::_createKey($value) .']';
                }
            }
        }
        return join(',', $uniqueKey);
    }
    /**
     * 强制驼峰
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     * @param $str
     * @param bool $ucfirst
     * @return string
     */
    private function convertUnderline1 ( $str , $ucfirst = true)
    {
        while(($pos = strpos($str , '_'))!==false)
            $str = substr($str , 0 , $pos).ucfirst(substr($str , $pos+1));

        return $ucfirst ? ucfirst($str) : $str;
    }

    /**
     * 获得页码
     * @author 一根小腿毛 <1368213727@qq.com>
     * @return string
     */
    private function get_page(){
        $DI = $this->query->getDI();
        if($DI->get('dispatcher')->getParam('page','int')){
            return $DI->get('dispatcher')->getParam('page','int');
        }else{
            return $DI->get('request')->getPost('page','int',1);
        }
    }
}