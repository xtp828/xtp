<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:59:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\log\index.html";i:1505199720;s:63:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\header.html";i:1505199720;s:61:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\menu.html";i:1510732278;}*/ ?>
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
                <a class="btn do-action" data-type="doDelete" data-href="<?php echo url('dellog'); ?>">删除</a>
				<div class="table">
					<table class="layuitable">
						<thead>
							<tr>
								<th width="50"><input type="checkbox" class="selected-all" id="selected-all"></th>
								<th width="50"><span>ID</span></th>
								<th width="100"><span>用户ID</span></th>
								<th width="100"><span>操作用户</span></th>
								<th><span>描述</span></th>
								<th width="100"><span>操作IP</span></th>
								<th><span>地址</span></th>
                                <th width="100"><span>状态</span></th>
                                <th width="150"><span>操作时间</span></th>
                                <th width="80"><span>操作</span></th>
							</tr>
						</thead>
						<script id="arlist" type="text/html">
                            {{# for(var i=0;i<d.length;i++){  }}
                            <tr class="long-td">
                                <td>
                                    <div class="icheckbox_square-green diychk" style="position: relative;"><input type="checkbox" style="position: absolute; opacity: 0;" name="ck" ids="{{d[i].log_id}}" value="true"><ins class="iCheck-helper"></ins></div>  
                                </td>
                                <td>{{d[i].log_id}}</td>
                                <td>{{d[i].admin_id}}</td>
                                <td>{{d[i].admin_name}}</td>
                                <td>{{d[i].description}}</td>
                                <td>{{d[i].ip}}</td>
                                <td>{{d[i].ipaddr.country}}{{d[i].ipaddr.area}}</td>
                                <td>
                                    {{# if(d[i].status==1){ }}
                                        操作成功
                                    {{# }else{ }}
                                        <span style="color: red">操作失败</span>
                                    {{# } }}
                                </td>
                                <td>{{d[i].add_time}}</td>
                                <td>
                                    <a class="btn do-action" data-type="doDelOne" data-href="<?php echo url('dellog'); ?>" data-id="{{d[i].log_id}}">删除</a>
                                </td>
                            </tr>
                            {{# } }}
                        </script>
                        <tbody id="article_list"></tbody>
					</table>
				</div>
                <div id="AjaxPage" style="float: right;margin-top:-10px; "></div>
                <div class="CountPage" style="float: right;clear:both; margin-right:15px; margin-top:-5px;">
                    共 <?php echo $count; ?> 条 <span id="allpage"></span>
                </div>
                <div style="clear:both;"></div>
			</div>
		</div>
	</div>
<script>
    var laytpl,laypage;
    var url='<?php echo url("log/index"); ?>';
    var allpages='<?php echo $allpage; ?>';
    layui.use(['layer', 'form','laypage','common', 'icheck','laytpl'], function () {
        var $ = layui.jquery, layer = layui.layer, common = layui.common, form = layui.form();
        $form = $('form');
        laytpl =layui.laytpl;
        laypage = layui.laypage;
        
        common.Ajaxpage();

        //加载单选框样式
        $(("[type='checkbox']")).iCheck({
            checkboxClass: 'icheckbox_square-green',
        });

        //全选
        $(document).on('ifChanged','.selected-all', function (event) {
            var $input = $('.layuitable tbody tr td').find('input');
            if ($('.selected-all').attr("checked")) {
                $("#article_list .diychk").addClass('checked');
                $("#article_list .diychk").children('input:checkbox').attr("checked", true);
            }else{
                $("#article_list .diychk").removeClass('checked');
                $("#article_list .diychk").children('input:checkbox').attr("checked", false);
            }
        });
        $(document).on('click','.diychk', function () {
            if ($(this).hasClass('checked')) {
                $(this).removeClass('checked');
                $(this).children('input:checkbox').attr("checked", false);
            }else{
                $(this).addClass('checked');
                $(this).children('input:checkbox').attr("checked", true);
            }
        });

    });

</script>
</body>
</html>