<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:62:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\box\souhouse.html";i:1510906579;s:63:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\header.html";i:1510893240;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="shortcut icon" href="__ADM_PUBLIC__/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/css/font.css">
	<link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/css/ui.css">
	<link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/css/public.css">
	<link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/Font-Awesome/css/font-awesome.css">
	<script type="text/javascript" src="__ADM_PUBLIC__/js/jquery.min.js"></script>
	<script type="text/javascript" src="__ADM_PUBLIC__/js/ui.js"></script>
	<script type="text/javascript" src="__ADM_PUBLIC__/js/public.js"></script>
	<script type="text/javascript" src="__ADM_PUBLIC__/layui/layui.js"></script>
	<script type="text/javascript" src="__ADM_PUBLIC__/js/global.js"></script>
	<title><?php echo $admintitle; ?>_<?php echo $position['name']; ?></title>
<script src="__ADM_PUBLIC__/js/Distpicker/js/distpicker.data.js"></script>
<script src="__ADM_PUBLIC__/js/Distpicker/js/distpicker.js"></script>
</head>
<body>
<div id="main-container">
    <div class="main_content">
        <div class="layui-form" style="margin-top: 10px;">
            <form action="<?php echo url('souHouse'); ?>">
                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label sou_lablem">大厦名</label>
                        <div class="layui-input-inline" style="width: 120px;">
                            <input type="text" id="name" value="<?php echo input('get.name'); ?>" name="name" autocomplete="off" class="layui-input">
                        </div>

                        <label class="layui-form-label sou_lableg">大厦地址</label>
                        <div class="layui-input-inline" style="width: 400px;" id="distpicker">
                            <select lay-ignore name="province" class="box_select"></select>
                            <select lay-ignore name="city" class="box_select"></select>
                            <select lay-ignore name="area" class="box_select"></select>
                        </div>

                        <div class="layui-input-inline" style="width: 100px;">
                            <button class="layui-btn layui-btn-lg" lay-submit lay-filter="formDemo">
                                <i class="layui-icon">&#xe615;</i>
                                搜索
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="table" v-el:table>
            <table>
                <thead>
                <tr>
                    <th class="sort" width="60"><span>ID</span></th>
                    <th width="100"><span>大厦名</span></th>
                    <th class="sort" width="150"><span>地址</span></th>
                    <th width="100"><span>时间</span></th>
                    <th width="100"><span>状态</span></th>
                    <th width="100"><span>操作</span></th>
                </tr>
                </thead>
                <tbody>
                <?php if(is_array($content['list']) || $content['list'] instanceof \think\Collection || $content['list'] instanceof \think\Paginator): if( count($content['list'])==0 ) : echo "" ;else: foreach($content['list'] as $key=>$v): ?>
                <tr>
                    <td><?php echo $v['id']; ?></td>
                    <td><?php echo $v['name']; ?></td>
                    <td><?php echo $v['province']; ?>-<?php echo $v['city']; ?>-<?php echo $v['area']; ?></td>
                    <td><?php echo $v['createtime']; ?></td>
                    <td>
                        <?php if($v['status'] == 1): ?>
                        开放
                        <?php else: ?>
                        <span style="color:red;">禁止</span>
                        <?php endif; ?>
                    </td>
                    <td>
                        <a class="btn ok-choice" data-id="<?php echo $v['id']; ?>" data-info="<?php echo $v['province']; ?>-<?php echo $v['city']; ?>-<?php echo $v['area']; ?>，<?php echo $v['address']; ?>，<?php echo $v['name']; ?>"><i class="fa fa-check-square" aria-hidden="true"></i>&nbsp;确认选择</a>
                    </td>
                </tr>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
            </table>
        </div>
</div>
</div>
<script type="text/javascript">

    $('#distpicker').distpicker(<?php echo $curr_pca; ?>);

    layui.use(['layer', 'form'], function () {
        var $ = layui.jquery
        $('.ok-choice').click(function(){
            parent.$('#address').text($(this).data('info'));
            parent.$('#building_id').val($(this).data('id'));
            parent.layer.close(parent.layer.getFrameIndex(window.name));
        });
        //0黄色感叹号，1笑脸，2错误，3问号，4灰色锁，5哭脸

    });
</script>
</body>
</html>