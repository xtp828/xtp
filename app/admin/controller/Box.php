<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/17
 * Time: 10:07
 */

namespace app\admin\controller;
use think\Controller;
use think\Validate;

class Box extends Common
{
    //盒子列表
    public function index()
    {
        $result = model('box')->boxlist();
        if(isset($result['code']) && $result['code'] == 0)
        {
            $this->error($result['msg']);
        }

        $this->assign('status', getOption(config('sys.status'), '', input('get.status')));
        $this->assign('content', $result);
        $this->assign('curr_pca', json_encode(['province' => input('get.province'), 'city' => input('get.city'), 'district' => input('get.area')]));//默认省市区
        return $this->fetch();
    }

    //屏蔽盒子
    public function delBox()
    {
        return json(model('box')->delBox());
    }

    //编辑盒子
    public function editBox()
    {
        if(request()->isAjax()){
            return json(model('box')->editBox());
        }

        $id = input('get.id/d');
        if(empty($id)) {
            $this->error('参数错误');
        }

        $product = model('box')->alias('a')
            ->field('a.*, bu.province, bu.city, bu.area, bu.name, bu.address')
            ->join('building bu', 'a.building_id = bu.id', 'LEFT')
            ->where(array('a.id' => $id))->find();
        $this->assign('info', $product);
        return $this->fetch();
    }

    //添加盒子
    public function addBox()
    {
        if(request()->isAjax()){
            return json(model('box')->editBox());
        }
        $number_no = model('box')->max('number_no');
        $this->assign('number_no', $number_no+1);
        return $this->fetch();
    }

    //iframe弹出框选择大厦信息
    public function souHouse()
    {
        $input = input('get.');

        $validate = new Validate(['name', 'chs', '大厦名只能为汉字']);
        $result = $validate->check($input);
        if (empty($result)) {
            $this->error($validate->getError());
        }

        $where = array();
        $where['name'] = isset($input['name']) && !empty($input['name']) ? $input['name'] : '';
        $where['province'] = isset($input['province']) && !empty($input['province']) ? $input['province'] : '';
        $where['city'] = isset($input['city']) && !empty($input['city']) ? $input['city'] : '';
        $where['area'] = isset($input['area']) && !empty($input['area']) ? $input['area'] : '';

        unset($input);
        $this->assign('curr_pca', json_encode(['province' => $where['province'], 'city' => $where['city'], 'district' => $where['area']]));//默认省市区
        $this->assign('content', model('box')->houseList($where));
        return $this->fetch();
    }

    //大楼列表
    public function house()
    {
        $input = input('get.');

        $validate = new Validate(['name', 'chs', '大厦名只能为汉字']);
        $result = $validate->check($input);
        if (empty($result)) {
            $this->error($validate->getError());
        }

        $where = array();
        $where['name'] = isset($input['name']) && !empty($input['name']) ? $input['name'] : '';
        $where['province'] = isset($input['province']) && !empty($input['province']) ? $input['province'] : '';
        $where['city'] = isset($input['city']) && !empty($input['city']) ? $input['city'] : '';
        $where['area'] = isset($input['area']) && !empty($input['area']) ? $input['area'] : '';
        $where['status'] = isset($input['area']) && !empty($input['status']) ? $input['status'] : '';

        unset($input);
        $this->assign('status', getOption(config('sys.status'), '', $where['status']));
        $this->assign('curr_pca', json_encode(['province' => $where['province'], 'city' => $where['city'], 'district' => $where['area']]));//默认省市区
        $this->assign('content', model('box')->houseList($where));
        return $this->fetch();
    }

}