<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:63:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\product\index.html";i:1510902151;s:63:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\header.html";i:1510893240;s:61:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\menu.html";i:1510893240;}*/ ?>
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
</head>
<body>
<div id="main-container">
    <div class="header">
	<div class="logo fl"><a href="javascript:;"><i class="icon icon-yun"></i></a></div>
	<div class="head_name fl"><a href="<?php echo url('index/index'); ?>">管理控制台</a></div>
	<div class="nav fl">
		<ul class="clearfix">
			<?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): if( count($menu)==0 ) : echo "" ;else: foreach($menu as $key=>$v): ?>
			<li><a href="<?php echo $v['tophref']; ?>" <?php if($menu_child['id'] == $v['id']): ?>class="v-link-active"<?php endif; ?>><i class="<?php echo $v['icon']; ?>"></i><?php echo $v['title']; ?></a></li>
			<?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	</div>
	<div class="head_tool fr">
		<a href="javascript:void(0);" target="_blank" title="账户名"><?php echo session('admin_username'); ?></a>
		<a href="/" target="_blank" title="站点首页"><i class="icon-home"></i></a>
		<a class="doCache" href="javascript:;" title="更新缓存"><i class="icon-cache"></i></a>
		<a class="doLoginOut" title="安全退出" data-type="doLoginOut" data-href="<?php echo url('index/loginout'); ?>" data-rturl="<?php echo url('index/login'); ?>"><i class="icon-out"></i></a>
	</div>
</div>
<div class="sidebar">
	<div class="sidebar_tool"><i class="icon-dedent"></i></div>
	<div class="nav_left">
		<ul>
			<?php if(is_array($menu_child['child']) || $menu_child['child'] instanceof \think\Collection || $menu_child['child'] instanceof \think\Paginator): if( count($menu_child['child'])==0 ) : echo "" ;else: foreach($menu_child['child'] as $key=>$v): ?>
			<li><a href="<?php echo $v['href']; ?>" <?php if($v['ischk'] == 1): ?>class="v-link-active"<?php endif; ?>><i class="<?php echo $v['css']; ?>"></i><?php echo $v['title']; ?></a></li>
			<?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	</div>
</div>
<script>
layui.use(['layer', 'common'], function () {
    var $ = layui.jquery , common = layui.common;

    //退出系统
    var adminActive = {
        doLoginOut: function () {
            var url = $(this).data('href');
            var rturl = $(this).data('rturl');
            if (url) {
                common.signOut('确认退出系统？', '请再次确认是否要退出系统！', url, rturl, 'post', 'json', {});
            }
            else {
                common.layerAlertE('链接错误！', '提示');
            }
        }
    };

    $('.doLoginOut').on('click', function (event) {
        var type = $(this).data('type');
        adminActive[type] ? adminActive[type].call(this) : '';
        return false;
    });

    $(document).on('click','.doCache', function () {
        $.ajax({
            	url: '<?php echo url("index/cache"); ?>',
                dataType: "json",
                type: "POST",
                success: function(data){
                    layer.msg(data.msg,{icon:1,time:500,shade: 0.1,});
                },
                error:function(ajaxobj)
                {
                    if(ajaxobj.responseText!='')
                        alert(ajaxobj.responseText);
                }
       	});
  	});
 });
</script>
    <div class="main">
        <div class="notice"><?php echo $position['url']; ?></div>
        <div class="main_content">

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
                <legend><?php echo $position['name']; ?></legend>
            </fieldset>

            <div class="layui-form">
                <form>
                    <div class="layui-form-item">
                        <div class="layui-inline">
                            <label class="layui-form-label sou_lableg">商品名称</label>
                            <div class="layui-input-inline" style="width: 120px;">
                                <input type="text" name="name" value="<?php echo input('get.name'); ?>" autocomplete="off" class="layui-input">
                            </div>
                            <label class="layui-form-label sou_lableg">商品产地</label>
                            <div class="layui-input-inline" style="width: 120px;">
                                <input type="text" id="product_area" value="<?php echo input('get.product_area'); ?>" name="product_area" autocomplete="off" class="layui-input">
                            </div>

                            <label class="layui-form-label sou_lableg">商品类型</label>
                            <div class="layui-input-inline" style="width: 150px;">
                                <select name="type">
                                    <option value="0">全部</option>
                                    <?php echo $type; ?>
                                </select>
                            </div>

                            <label class="layui-form-label sou_lablel">状态</label>
                            <div class="layui-input-inline" style="width: 90px;">
                                <select name="status">
                                    <?php echo $status; ?>
                                </select>
                            </div>

                            <div class="layui-input-inline" style="width: 190px;">
                                <button class="layui-btn layui-btn-lg" lay-submit lay-filter="formDemo">
                                    <i class="layui-icon">&#xe615;</i>
                                    搜索
                                </button>
                                <button class="layui-btn layui-btn-lg" type="button" onclick="window.location.href='<?php echo url('addProduct'); ?>'">
                                    <i class="layui-icon">&#xe61f;</i>
                                    增加
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
                        <th width="100"><span>商品名称</span></th>
                        <th class="sort" width="150"><span>价格</span></th>
                        <th width="100"><span>产地</span></th>
                        <th width="50"><span>规格</span></th>
                        <th width="100"><span>商品类型</span></th>
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
                        <td>￥<?php echo $v['price']/100; ?></td>
                        <td><?php echo $v['product_area']; ?></td>
                        <td><?php echo config('sys.unit')[$v['unit']]; ?></td>
                        <td><?php echo get_goods_type()[$v['type']]; ?></td>
                        <td><?php echo $v['createtime']; ?></td>
                        <td>
                            <a href="javascript:;" class="change_status" data-id="<?php echo $v['id']; ?>" data-change="<?php echo $v['status']; ?>"> <div class="layui-unselect layui-form-switch <?php if($v['status'] == 1): ?>layui-form-onswitch<?php endif; ?>"><i></i></div> </a>
                        </td>
                        <td>
                            <a class="btn do-action" data-type="doEdit" data-href="<?php echo url('editProduct'); ?>" data-id="<?php echo $v['id']; ?>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;编辑</a>
                        </td>
                        </tr>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                </tbody>
                </table>
            <?php echo $content['page']; ?>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">

    layui.use(['layer', 'form'], function () {
        var $ = layui.jquery, layer = layui.layer;

        //0黄色感叹号，1笑脸，2错误，3问号，4灰色锁，5哭脸
        $(document).on('click','.change_status', function () {
            var id=$(this).attr('data-id');
            var obs=$(this);
            var status = obs.attr('data-change');
            $.ajax({
                url: '<?php echo url("delProduct"); ?>',
                dataType: "json",
                data:{'ids':id, 'status':status},
                type: "POST",
                success: function(data){
                    if(data.code == 1){
                        if(status == 1){
                            obs.attr('data-change', 2);
                            obs.find('div').removeClass('layui-form-onswitch');
                        }else{
                            obs.attr('data-change', 1);
                            obs.find('div').addClass('layui-form-onswitch');
                        }
                        layer.msg(data.msg,{icon:data.icon,time:1500,shade: 0.1,});
                    }else{
                        layer.msg(data.msg,{icon:data.icon,time:1500,shade: 0.1,});
                    }
                },
                error:function(ajaxobj)
                {
                    if(ajaxobj.responseText!='')
                        alert(ajaxobj.responseText);
                }
            });
        });
    });
</script>
</body>
</html>