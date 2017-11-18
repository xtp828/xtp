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
use think\Db;

class Box extends Common
{
    //盒子列表
    public function index()
    {
        $input = input('get.');
        $page = isset($input['page']) && $input['page'] ? $input['page'] : 1;

        $data = model('box')->boxList(2);
        $data['allpage'] = isset($data['allpage']) ? $data['allpage']: 0;
        $data['count'] = isset($data['count']) ? $data['count']: 0;
        $this->assign('Nowpage', $page); //当前页
        $this->assign('allpage', $data['allpage']); //总页数 
        $this->assign('count', $data['count']);
        $this->assign('status', getOption(config('sys.status'), '', ''));
        if(input('get.page')){
            return json($data);
        }
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
        $page = isset($input['page']) && $input['page'] ? $input['page'] : 1;

        $validate = new Validate(['name', 'chs', '大厦名只能为汉字']);
        $result = $validate->check($input);
        if (empty($result)) {
            return json(['code' => 0, 'msg' => $validate->getError()]);
        }

        $where = array();
        $where['name'] = isset($input['name']) && !empty($input['name']) ? $input['name'] : '';
        $where['province'] = isset($input['province']) && !empty($input['province']) ? $input['province'] : '';
        $where['city'] = isset($input['city']) && !empty($input['city']) ? $input['city'] : '';
        $where['area'] = isset($input['area']) && !empty($input['area']) ? $input['area'] : '';
        unset($input);

        $data = model('box')->houseList($where, 10);
        $data['allpage'] = isset($data['allpage']) ? $data['allpage']: 0;
        $data['count'] = isset($data['count']) ? $data['count']: 0;
        $this->assign('Nowpage', $page); //当前页
        $this->assign('allpage', $data['allpage']); //总页数 
        $this->assign('count', $data['count']);

        if(input('get.page')){
            return json($data);
        }

        return $this->fetch();
    }

    //大楼列表
    public function house()
    {
        $input = input('get.');
        $page = isset($input['page']) && $input['page'] ? $input['page'] : 1;

        $validate = new Validate(['name', 'chs', '大厦名只能为汉字']);
        $result = $validate->check($input);
        if (empty($result)) {
           return json(['code' => 0, 'msg' => $validate->getError()]);
        }

        $where = array();
        $where['name'] = isset($input['name']) && !empty($input['name']) ? $input['name'] : '';
        $where['province'] = isset($input['province']) && !empty($input['province']) ? $input['province'] : '';
        $where['city'] = isset($input['city']) && !empty($input['city']) ? $input['city'] : '';
        $where['area'] = isset($input['area']) && !empty($input['area']) ? $input['area'] : '';
        $where['status'] = isset($input['area']) && !empty($input['status']) ? $input['status'] : '';

        $data = model('box')->houseList($where, 10);
        $data['allpage'] = isset($data['allpage']) ? $data['allpage']: 0;
        $data['count'] = isset($data['count']) ? $data['count']: 0;
        $this->assign('Nowpage', $page); //当前页
        $this->assign('allpage', $data['allpage']); //总页数 
        $this->assign('count', $data['count']);
        $this->assign('status', getOption(config('sys.status'), '', $where['status']));

        if(input('get.page')){
            return json($data);
        }
        return $this->fetch();
    }

    //编辑大厦
    public function editHouse()
    {
        if(request()->isAjax()){
            return json(model('box')->editHouse());
        }

        $id = input('get.id/d');
        if(empty($id)) {
            $this->error('参数错误');
        }

        $info = Db::name('building')->where(array('id' => $id))->find();
        $this->assign('info', $info);
        $this->assign('pca', json_encode(['province' => $info['province'], 'city' => $info['city'], 'district' => $info['area']]));
        return $this->fetch();
    }

    public function addHouse()
    {
        if(request()->isAjax()){
            return json(model('box')->editHouse());
        }
        return $this->fetch();
    }

    //屏蔽盒子
    public function delHouse()
    {
        return json(model('box')->delHouse());
    }

}