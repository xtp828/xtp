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

        $this->assign('source', getOption(config('sys.source_phone'), '', input('get.last_login_source')));
        $this->assign('content', model('client')->clientlist());
        return $this->fetch();
    }

    //屏蔽客户
    public function delClient()
    {
        return json(model('client')->delClient());
    }

}