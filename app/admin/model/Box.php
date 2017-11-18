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

class Box extends Model
{
    /**
     * 客户列表
     */
    public function boxList()
    {
        $input = input('get.');

        $validate = new Validate(
            [
                'number_no' => 'number',
                'floors' => 'alphaNum',
                'name' => 'chs',
            ],
            [
                'number_no.number' => '机器码必须为数字',
                'floors.number' => '楼层必须为数字或字母',
                'names.chs' => '大厦名只能为汉字',
            ]
        );
        $result = $validate->check($input);
        if (empty($result)) {
            return ['code' => 0, 'msg' => $validate->getError()];
        }

        $where['b.number_no'] = isset($input['number_no']) && !empty($input['number_no']) ? $input['number_no'] : '';
        $where['b.floors'] = isset($input['floors']) && !empty($input['floors']) ? $input['floors'] : '';
        $where['b.status'] = isset($input['floors']) && !empty($input['floors']) ? $input['status'] : 0 ;
        $where['bu.name'] = isset($input['name']) && !empty($input['name']) ? $input['name'] : '';
        $where['bu.province'] = isset($input['province']) && !empty($input['province']) ? $input['province'] : '';
        $where['bu.city'] = isset($input['city']) && !empty($input['city']) ? $input['city'] : '';
        $where['bu.area'] = isset($input['area']) && !empty($input['area']) ? $input['area'] : '';

        $list = $this->alias('b')
            ->field('b.*, bu.province, bu.city, bu.area, bu.name, bu.address')
            ->where(array_filter($where))
            ->join('building bu', 'b.building_id = bu.id', 'LEFT')
            ->paginate(1, false, [
                'type' => 'BoxPage',
                'var_page' => 'page',
            ]);

        unset($input);
        $page = $list->render();
        return ['list' => $list, 'page' => $page];

        /*$input = input('get.');

        $validate = new Validate(
            [
                'number_no' => 'number',
                'floors' => 'alphaNum',
                'name' => 'chs',
            ],
            [
                'number_no.number' => '机器码必须为数字',
                'floors.number' => '楼层必须为数字或字母',
                'names.chs' => '大厦名只能为汉字',
            ]
        );
        $result = $validate->check($input);
        if (empty($result)) {
            return ['code' => 0, 'msg' => $validate->getError()];
        }

        $where['b.number_no'] = isset($input['number_no']) && !empty($input['number_no']) ? $input['number_no'] : '';
        $where['b.floors'] = isset($input['floors']) && !empty($input['floors']) ? $input['floors'] : '';
        $where['b.status'] = isset($input['floors']) && !empty($input['floors']) ? $input['status'] : 0 ;
        $where['bu.name'] = isset($input['name']) && !empty($input['name']) ? $input['name'] : '';
        $where['bu.province'] = isset($input['province']) && !empty($input['province']) ? $input['province'] : '';
        $where['bu.city'] = isset($input['city']) && !empty($input['city']) ? $input['city'] : '';
        $where['bu.area'] = isset($input['area']) && !empty($input['area']) ? $input['area'] : '';

        $list = $this->alias('b')
            ->field('b.*, bu.province, bu.city, bu.area, bu.name, bu.address')
            ->where(array_filter($where))
            ->join('building bu', 'b.building_id = bu.id', 'LEFT')
            ->page($page, $each_page)
            ->select();

        $count =  $this->alias('b')
            ->field('b.*, bu.province, bu.city, bu.area, bu.name, bu.address')
            ->where(array_filter($where))
            ->join('building bu', 'b.building_id = bu.id', 'LEFT')
            ->count();

        $allpages = intval(ceil($count / $each_page));//计算总页面

        unset($input);
        return ['list' => $list, 'allpage' => $allpages];*/
    }

    public function delBox()
    {
        try {
            $id = input('post.ids/d');
            $status = input('post.status/d');
            if ($id) {
                if ($status == 1) {
                    $status = 2;
                    $tip = ['code' => 1, 'icon' => 4, 'msg' => '已经禁止'];
                } else {
                    $status = 1;
                    $tip = ['code' => 1, 'icon' => 1, 'msg' => '已经打开'];
                }
                $info = model('box')->save(['status' => $status], ['id' => $id]);
                $result = $info ? $tip : ['code' => 0, 'icon' => 5, 'msg' => '操作失败'];
            } else {
                $result = ['code' => 2, 'icon' => '2', 'msg' => '参数错误'];
            }
            return $result;
        } catch (PDOException $e) {
            return ['code' => 2, 'icon' => '2', 'msg' => $e->getMessage()];
        }
    }

    public function editBox()
    {
        $input = input('post.');
        $id = input('post.id/d');
        $validate = new Validate(
            [
                'floors' => ['regex'=>'/^([-]?[0-9a-zA-Z]+)$/i'],
                'building_id' => 'require|number',
            ],[
                'floors' => '楼层填写错误',
                'building_id.require' => '摆放地址必选',
                'building_id.number' => '摆放地址必须是数字',
            ]
        );
        $result   = $validate->check($input);
        if(empty($result)) {
            return ['code' => 0, 'msg' => $validate->getError()];
        }

        $input['status'] = isset($input['status']) && $input['status'] == 'on' ? 1 : 2;

        if(empty($id) && $input['submit_type'] == 'edit') {
            return ['code' =>0, 'msg' => '盒子ID错误'];
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

    public function houseList($where, $page = 10)
    {
        $list = $this->name('building')
            ->where(array_filter($where))
            ->paginate($page, false, [
                'type' => 'BoxPage',
                'var_page' => 'page',
            ]);

        unset($input);
        $page = $list->render();
        return ['list' => $list, 'page' => $page];
    }
}