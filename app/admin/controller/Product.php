<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/15
 * Time: 11:00
 */
namespace app\admin\controller;
use think\Controller;
use think\Validate;
use think\Db;

class Product extends Common
{
    //商品列表
    public function index()
    {
        $page = input('get.page') ? input('get.page'):1;
        
        $input['name']           = input('get.name');
        $input['product_area']   = input('get.product_area');
        $input['type']  = input('get.type/d');
        $input['status'] = input('get.status/d');
        $each_page = 2;

        $validate = new Validate([
            'product_area' => 'chsAlpha',
            'name' => 'chsAlpha',
        ],[
            'product_area.chsAlpha' => '商品产品只能是汉字或英文',
            'name.chsAlpha'    => '商品名只能是汉字或英文',
        ]);
        $result   = $validate->check(['name' => $input['name'], 'product_area' => $input['product_area']]);
        if(empty($result)){
            return json(['code' => 0, 'msg' => $validate->getError()]);
        }

        $where = array_filter($input);
        $list = Db::name('product')->where($where)->page($page, $each_page)->select();
        $count = Db::name('product')->where($where)->count();
        $allpage = intval(ceil($count / $each_page));//计算总页面

        $goods_type = get_goods_type();
        $this->assign('goods_type', json_encode($goods_type));//商品类型
        $this->assign('unit', json_encode(config('sys.unit')));//商品基本单位
        $this->assign('Nowpage', $page); //当前页
        $this->assign('allpage', $allpage); //总页数 
        $this->assign('count', $count);
        $this->assign('type', getOption($goods_type, '', input('get.type')));
        $this->assign('status', getOption(config('sys.status'), '', input('get.status')));
        
        if(input('get.page')){
            return json(['list' => $list, 'allpage' => $allpage, 'count' => $count]);
        }
        return $this->fetch();
    }

    //屏蔽商品
    public function delProduct()
    {
        return json(model('product')->delProduct());
    }

    //编辑商品
    public function editProduct()
    {
        if(request()->isAjax()){
            return json(model('product')->editProduct());
        }

        $id = input('get.id/d');
        if(empty($id)) {
            $this->error('参数错误');
        }

        $product = model('product')->where(array('id' => $id))->find();
        $this->assign('info', $product);
        $this->assign('type', getOption(get_goods_type(), '', $product['type']));
        $this->assign('unit', getOption(config('sys.unit'), '', $product['unit']));
        return $this->fetch();
    }

    //添加商品
    public function addProduct()
    {
        if(request()->isAjax()){
            return json(model('product')->editProduct());
        }
        $this->assign('type', getOption(get_goods_type(), '', ''));
        $this->assign('unit', getOption(config('sys.unit'), '', ''));
        return $this->fetch();
    }

    //商品类型列表
    public function productTypeList()
    {

    }

    //屏蔽商品类型
    public function delProductType()
    {

    }
}