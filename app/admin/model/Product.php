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

class Product extends Model
{
    /**
     * 客户列表
     */
    public function productList()
    {
        $input['name']            = input('get.name');
        $input['product_area']   = input('get.product_area');
        $input['type'] = input('get.type/d');
        $input['status'] = input('get.status/d');

        $validate = new Validate([
            'product_area' => 'chsAlpha',
            'name' => 'chsAlpha',
        ],[
            'product_area.chs' => '商品产品只能是汉字或英文',
            'name.chsAlpha'    => '商品名只能是汉字或英文',
        ]);
        $result   = $validate->check(['name' => $input['name'], 'product_area' => $input['product_area']]);
        if(empty($result)){
            return $validate->getError();
        }

        $where = array_filter($input);
        $list = $this->where($where)->paginate(1, false, [
            'type'     => 'BoxPage',
            'var_page' => 'page',
            'query' => $where,
        ]);
        $page = $list->render();
        return ['list' => $list, 'page' => $page];
    }

    //编辑商品
    public function editProduct()
    {
        $input = input('post.');
        $id = input('post.id/d');
        $validate = new Validate(
            [
                'name' => 'require|chsAlpha|max:30',
                'price' => ['regex'=>'/(^[1-9]([0-9]+)?(\.[0-9]{1,2})?$)|(^(0){1}$)|(^[0-9]\.[0-9]([0-9])?$)/i'],
                'product_area' => 'require|chsAlpha|max:150',
                'unit' => 'require|number',
                'type' => 'require|number',
            ],[
                'name.require' => '商品名必填',
                'name.chs' => '商品名必须是中文或字母',
                'name.max' => '商品名长度在30个字符以内',
                'price' => '金额错误',
                'product_area.require' => '产区名必填',
                'product_area.chs' => '产区名必须是中文或字母',
                'product_area.max' => '产区名长度在50个字符以内',
                'unit.require' => '单位名必填',
                'unit.number' => '单位必须是数字',
                'type.require' => '类型必填',
                'type.number' => '类型必须是数字',
            ]
        );
        $result   = $validate->check($input);
        if(empty($result)) {
           return ['code' => 0, 'msg' => $validate->getError()];
        }

        $input['price'] = $input['price']*100;
        $input['status'] = isset($input['status']) && $input['status'] == 'on' ? 1 : 2;

        if(empty($id) && $input['submit_type'] == 'edit') {
            return ['code' =>0, 'msg' => '商品ID错误'];
        }

        if($input['submit_type'] == 'edit') {
            unset($input['submit_type']);
            $result = $this->where(['id' => $id])->update($input);
            return $result ? ['code' => 1, 'msg' => '修改成功'] : ['code' => 0, 'msg' => '修改失败'];
        }else{
            unset($input['submit_type']);
            $result = $this->insert($input);
            return $result ? ['code' => 1, 'msg' => '添加成功'] : ['code' => 0, 'msg' => '添加失败'];
        }

    }

    //屏蔽商品
    public function delProduct()
    {
        try{
            $id     = input('post.ids/d');
            $status = input('post.status/d');
            if($id)
            {
                if($status == 1)
                {
                    $status = 0;
                    $tip = ['code' => 1, 'icon' => 4, 'msg' => '已经禁止'];
                }else{
                    $status = 1;
                    $tip = ['code' => 1, 'icon' => 1, 'msg' => '已经打开'];
                }
                $info   = $this->save(['status' => $status], ['id' => $id]);
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