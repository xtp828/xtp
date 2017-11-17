<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/11/15
 * Time: 11:00
 */
namespace app\admin\controller;
use Think\Cache;
use think\Controller;

class Product extends Common
{
    //商品列表
    public function index()
    {
        $result = model('product')->productList();
        if(!is_array($result))
        {
            $this->error($result);
        }
        $this->assign('type', getOption(get_goods_type(), '', input('get.type')));
        $this->assign('status', getOption(config('sys.status'), '', input('get.status')));
        $this->assign('content', $result);
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