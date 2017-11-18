<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/15
 * Time: 11:00
 */
namespace app\admin\controller;
use app\admin\model\ClientModel;
use app\admin\model\Node;
use think\Controller;
use app\admin\model\UserModel;
use app\admin\model\UserType;
use think\Db;
use think\Model;

class Client extends Common
{
    //客户列表
    public function index()
    {
        $input = input('get.');
        $page = isset($input['page']) && $input['page'] ? $input['page'] : 1;
        $last_login_source = isset($input['last_login_source']) && $input['last_login_source'] ? 
                             $input['last_login_source'] : 0;

        $data = model('client')->clientlist(10);
        if($data['code'] == 0)
        {
             return json($data);
        }
        $data['allpage'] = isset($data['allpage']) ? $data['allpage']: 0;
        $data['count'] = isset($data['count']) ? $data['count']: 0;
        $this->assign('Nowpage', $page); //当前页
        $this->assign('allpage', $data['allpage']); //总页数 
        $this->assign('count', $data['count']);
        $this->assign('source', getOption(config('sys.source_phone'), '', $last_login_source));
        if(input('get.page')){
            return json($data);
        }
        return $this->fetch();
    }

    //屏蔽客户
    public function delClient()
    {
        return json(model('client')->delClient());
    }

}