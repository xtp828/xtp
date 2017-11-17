<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:60:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\data\index.html";i:1505964908;s:63:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\header.html";i:1505199720;s:61:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\menu.html";i:1510732278;}*/ ?>
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
				<ul class="list_inline lh36 mt20 mb20">
					<li><a class="btn mr10" id="export">立即备份</a></li>
					<li><a class="btn mr10" url="<?php echo url('optimize'); ?>" id="optimize" >优化表</a></li>
                    <li><a class="btn mr10" url="<?php echo url('repair'); ?>" id="repair" >修复表</a></li>
                    <li><a class="btn mr10" href="<?php echo url('import'); ?>">数据库还原</a></li>
				</ul>
				<div class="table">
					<form id="export-form" method="post" action="<?php echo url('export'); ?>">
					<table>
						<thead>
							<tr>
								<th width="50"><input class="i-checks checkbox check-all" type="checkbox"></th>
								<th class="sort" width="200"><span>表名</span></th>
								<th class="sort"><span>数据</span></th>
								<th class="sort" width="200"><span>数据大小</span></th>
								<th class="sort" width="150"><span>创建时间</span></th>
								<th width="150"><span>备份状态</span></th>
								<th width="200"><span>操作</span></th>
							</tr>
						</thead>
						<tbody>
							<?php if(!(empty($infolist) || (($infolist instanceof \think\Collection || $infolist instanceof \think\Paginator ) && $infolist->isEmpty()))): if(is_array($infolist) || $infolist instanceof \think\Collection || $infolist instanceof \think\Paginator): $i = 0; $__LIST__ = $infolist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
		                        <tr>
		                            <td><input class="ids i-checks" type="checkbox" name="ids[]" value="<?php echo $v['name']; ?>"></td>
		                            <td><?php echo $v['name']; ?></td>
		                            <td><?php echo $v['rows']; ?></td>
		                            <td><?php echo format_bytes($v['data_length']); ?></td>
		                            <td><?php echo $v['create_time']; ?></td>
		                            <td id="info">等待备份...</td>
		                            <td>
		                                <a class="btn" href="<?php echo url('optimize',['ids'=>$v['name']]); ?>">优化表</a>
		                                <a class="btn" href="<?php echo url('repair',['ids'=>$v['name']]); ?>">修复表</a>
		                            </td>
		                        </tr>
		                        <?php endforeach; endif; else: echo "" ;endif; else: ?>
		                        <td colspan="7" class="text-center"> 暂未发现数据库表! </td>
		                    <?php endif; ?>
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
<script>
    var laytpl,laypage;
    layui.use(['layer', 'laypage','common', 'icheck'], function () {
        var $ = layui.jquery, layer = layui.layer, common = layui.common;
        laypage = layui.laypage;
        //加载单选框样式
        $(("[type='checkbox']")).iCheck({
            checkboxClass: 'icheckbox_square-green',
        });
        //全选的实现
        $('.check-all').on('ifChecked', function (event) {
            $('input[name="ids[]"]').iCheck('check');
        });
        $('.check-all').on('ifUnchecked', function (event) {
            $('input[name="ids[]"]').iCheck('uncheck');
        });
    });


    $(function () {
        (function ($) {
            var $form = $("#export-form"), $export = $("#export"), tables, $optimize = $("#optimize"), $repair = $("#repair");
            $optimize.add($repair).click(function () {
                $.post($(this).attr('url'), $form.serialize(), function (data) {
                    if (data.code) {
                        layer.msg(data.msg,{icon:1,time:2000,shade: 0.1,});
                    } else {
                        layer.msg(data.msg,{icon:2,time:2000,shade: 0.1,});
                    }
                });
                return false;
            });

            $export.click(function () {
                $export.parent().children().prop('disabled', true);
                $export.html("正在发送备份请求...");
                $.post(
                        $form.attr("action"),
                        $form.serialize(),
                        function (data) {
                            if (data.code) {
                                tables = data.data.tables;
                                $export.html(data.msg + "开始备份，请不要关闭本页面！");
                                backup(data.data.tab);
                                window.onbeforeunload = function () {
                                    return "正在备份数据库，请不要关闭！";
                                };
                            } else {
                                layer.msg(data.msg,{icon:2,time:2000,shade: 0.1,});
                                $export.html("立即备份");
                                setTimeout(function () {
                                    $export.parent().children().prop('disabled', false);
                                }, 1500);
                            }
                        });
                return false;
            });

            function backup(tab, status) {
                status && showmsg(tab.id, "开始备份...(0%)");
                $.get($form.attr("action"), tab, function (data) {
                    if (data.code) {
                        showmsg(tab.id, data.msg);
                        if (!$.isPlainObject(data.data.tab)) {
                            $export.parent().children().prop('disabled', false);
                            $export.html("备份完成，点击重新备份");
                            window.onbeforeunload = function () {
                                return null;
                            };
                            return;
                        }
                        backup(data.data.tab, tab.id != data.data.tab.id);
                    } else {
                        layer.msg(data.msg, 0);
                        $export.html("立即备份");
                        setTimeout(function () {
                            $export.parent().children().prop('disabled', false);
                        }, 1500);
                    }
                });
            }

            function showmsg(id, msg) {
                $form.find("input[value=" + tables[id] + "]").closest("tr").find("#info").html(msg);
            }
        })(jQuery);
    });
</script>
</body>
</html>