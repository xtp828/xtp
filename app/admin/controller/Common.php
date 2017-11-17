<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Node;
use app\admin\model\UserType;
use app\admin\model\UserModel;

class Common extends Controller{

 	public function _initialize()
    {
        $url        = get_curr_cma();

        //不需要验证的
        $noauthurl = [
            'admin/index/login',
            'admin/index/dologin',
            'admin/index/loginout',
            'admin/index/cache'
        ];

        //跳过验证
        if(!in_array($url, $noauthurl)){

            if(!session('admin_uid')){
                //$this->redirect('/'.config('sys.login_url'));
                //$this->redirect('/YUNUCMSv1.0.2/index.php/admin/');
                $this->redirect(url('index/login'));
            }

            $auth = new \com\Auth();

            //跳过检测以及主页权限
            if(session('admin_uid') != 1){
                if(!in_array($url, ['admin/index/index'])){
                    if(!$auth->check($url,session('admin_uid'))){
                        $this->error('抱歉，您没有操作权限');
                    }
                }
            }

            $usermod = new UserModel();
            $hasUser = $usermod->getOneUser(session('admin_uid'));
            $user = new UserType();
            $roleinfo = $user->getRoleInfo($hasUser['groupid']);

            $node = new Node();
            $menu_list = $node->getMenu($roleinfo['rules']);
            $menu_child_url = $url == 'admin/index/index' ? $menu_list[0]['children'][0]['name'] : $url;
            $menu_child = $node->getMenuchild($menu_child_url, $roleinfo['rules']);

            $position = $node->getPosition($url);
            $position['name'] = $position['name'] ? $position['name'] : "管理控制台";

            $this->assign([
                'admintitle' => "点点盒子",
                'username' => $hasUser['username'],
                'menu' => $menu_list,
                'menu_child' => $menu_child,
                'rolename' => $roleinfo['title'],
                'position' => $position,
                'version' => config('yunucms.version')
            ]);
        }else{
            $this->assign([
                'admintitle' => "点点盒子",
                'position' => ['name'=>'管理员登陆'],
                'version' => config('yunucms.version')
            ]);
        }
        foreach (config('sys') as $k => $v) {
            config('sys.'.$k, strip_slashes_recursive($v));
        }
    }

}