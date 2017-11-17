<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:60:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\user\index.html";i:1505199720;s:63:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\header.html";i:1505199720;s:61:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\menu.html";i:1510732278;}*/ ?>
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
				<div class="title">
					<span><?php echo $position['name']; ?></span>
				</div>
				<a class="btn" data-type="doAdd" href="<?php echo url('adduser'); ?>">新增</a>
				<div class="table" v-el:table>
					<table>
						<thead>
							<tr>
								<th width="60"><span>ID</span></th>
								<th width="100"><span>管理员名称</span></th>
								<th><span>管理员角色</span></th>
								<th class="sort" width="150"><span>登录次数</span></th>
								<th width="100"><span>上次登录ip</span></th>
                                <th class="sort" width="150"><span>上次登录时间</span></th>
                                <th width="100"><span>真实姓名</span></th>
                                <th width="100"><span>状态</span></th>
								<th width="150"><span>操作</span></th>
							</tr>
						</thead>
						<tbody>
							<?php if(is_array($infolist) || $infolist instanceof \think\Collection || $infolist instanceof \think\Paginator): if( count($infolist)==0 ) : echo "" ;else: foreach($infolist as $key=>$v): ?>
			                <tr>
			                    <td><?php echo $v['id']; ?></td>
			                    <td><?php echo $v['username']; ?></td>
                                <td><?php echo $v['title']; ?></td>
                                <td><?php echo $v['loginnum']; ?></td>
                                <td><?php echo $v['last_login_ip']; ?></td>
                                <td><?php echo $v['last_login_time']; ?></td>
                                <td><?php echo $v['real_name']; ?></td>
			                    <td>
			                        <a href="javascript:;" class="change_status" data-id="<?php echo $v['id']; ?>"> <div class="layui-unselect layui-form-switch <?php if($v['status'] == 1): ?>layui-form-onswitch<?php endif; ?>"><i></i></div> </a>
			                    </td>
			                    <td>
		                            <a class="btn do-action" data-type="doEdit" data-href="<?php echo url('edituser'); ?>" data-id="<?php echo $v['id']; ?>">编辑</a>
		                            <a class="btn do-action" data-type="doDelOne" data-href="<?php echo url('deluser'); ?>" data-id="<?php echo $v['id']; ?>">删除</a>
			                    </td>
			                </tr>
			                <?php endforeach; endif; else: echo "" ;endif; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
    layui.use(['layer','common'], function () {
        var $ = layui.jquery, layer = layui.layer;

        $(document).on('click','.change_status', function () {
            var id=$(this).attr('data-id');
            var obs=$(this);
            $.ajax({
                url: '<?php echo url("stateuser"); ?>',
                dataType: "json",
                data:{'id':id},
                type: "POST",
                success: function(data){
                    if(data.code == 1){
                        obs.find('div').removeClass('layui-form-onswitch');
                        layer.msg(data.msg,{icon:2,time:1500,shade: 0.1,});
                    }else{
                        obs.find('div').addClass('layui-form-onswitch');
                        layer.msg(data.msg,{icon:1,time:1500,shade: 0.1,});
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