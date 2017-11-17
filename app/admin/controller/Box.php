<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/17
 * Time: 10:07
 */

namespace app\admin\controller;
use think\Controller;

class Box extends Common
{
    //盒子列表
    public function index()
    {
        $this->assign('status', getOption(config('sys.status'), '', input('get.status')));
        $this->assign('type', getOption(get_goods_type(), '', input('get.type')));
        $this->assign('content', model('box')->boxlist());
        $this->assign('curr_pca', json_encode(['province' => '浙江省', 'city' => '杭州市', 'district' => '西湖区']));//默认省市区
        return $this->fetch();
    }

    //屏蔽盒子
    public function delBox()
    {
        return json(model('box')->delBox());
    }

    //大楼列表
    public function buidingList()
    {

    }

}