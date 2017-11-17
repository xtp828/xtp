<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/15
 * Time: 11:08
 */
namespace app\admin\model;
use think\Model;
use think\Db;
use think\Validate;

class Client extends Model
{
    /**
     * 客户列表
     */
    public function clientList()
    {
        $input['mobile']            = input('get.mobile','','/^1[34578]{1}\d{9}$/');
        $input['last_login_time']   = input('get.last_login_time');
        $input['last_login_source'] = input('get.last_login_source/d');

        if($input['last_login_time'])
        {
            $validate = new Validate(['last_login_time' => 'date']);
            $result   = $validate->check(['last_login_time' => $input['last_login_time']]);
            if(empty($result)) {
                unset($input['last_login_time']);
            }
        }

        $where = array_filter($input);
        $list = $this->where($where)->paginate(1, false, [
            'type'     => 'BoxPage',
            'var_page' => 'page',
            'query' => $input,
        ]);

        unset($input);
        $page = $list->render();
        return ['list' => $list, 'page' => $page];
    }

    public function delClient()
    {
        try{
            $id     = input('post.ids/d');
            $status = input('post.status/d');
            if($id)
            {
                if($status == 1)
                {
                    $status = 2;
                    $tip = ['code' => 1, 'icon' => 4, 'msg' => '已经禁止'];
                }else{
                    $status = 1;
                    $tip = ['code' => 1, 'icon' => 1, 'msg' => '已经打开'];
                }
                $info   = model('client')->save(['status' => $status], ['id' => $id]);
                $result = $info ? $tip : ['code' => 0, 'icon' => 5, 'msg' => '操作失败'];
            }else{
                $result = ['code' => 2, 'icon' => '2',  'msg' => '参数错误'];
            }
            return $result;
        }catch( PDOException $e){
            return ['code' => 2, 'icon' => '2', 'msg' => $e->getMessage()];
        }
    }
}