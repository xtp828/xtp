<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:61:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\index\index.html";i:1508293813;s:63:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\header.html";i:1505199720;s:61:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\public\menu.html";i:1510732278;}*/ ?>
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
			<div class="notice"></div>
			<div class="main_content">
				<div class="ui_prompt">提示：尊敬的 <?php echo session('admin_username'); ?>（<?php echo session('rolename'); ?>），欢迎您的使用，您的上次登录时间为 <?php echo session('last_login_time'); ?>，登录IP为 <?php echo session('last_login_ip'); ?></div>
				<div class="clearfix">
					<div class="index_block index_block_info">
						<i class="icon-信息"></i>
						<div class="fr">
							<p>信息总数</p>
							<strong><?php echo $content_count; ?></strong>
						</div>
					</div>
					<div class="index_block index_block_column">
						<i class="icon-栏目"></i>
						<div class="fr">
							<p>栏目总数</p>
							<strong><?php echo $category_count; ?></strong>
						</div>
					</div>
					<div class="index_block index_block_admin">
						<i class="icon-管理员"></i>
						<div class="fr">
							<p>管理员数</p>
							<strong><?php echo $admin_count; ?></strong>
						</div>
					</div>
					<div class="index_block index_block_visit">
						<i class="icon-统计"></i>
						<div class="fr">
							<p>访问总数</p>
							<strong>3</strong>
						</div>
					</div>
				</div>
				<div class="index_box">
					<div class="index_box_tit">网站访问统计</div>
					<div class="index_box_content">
						<div class="index_highcharts"></div>
						<script type="text/javascript" src="__ADM_PUBLIC__/js/highcharts.js"></script>
						<script type="text/javascript">
							var data = [<?php echo $daycount; ?>];
							var today = new Date();
							today.setHours(8 - 24*(data.length-1));
							today.setMinutes(0);
							today.setSeconds(0);
							today.setMilliseconds(0);
							$('.index_highcharts').highcharts({
						        chart: {
						            type: 'areaspline'
						        },
						        title: {
						            text: ''
						        },
						        legend: {
						            layout: 'vertical',
						            align: 'left',
						            verticalAlign: 'top',
						            x: 150,
						            y: 100,
						            floating: true,
						            borderWidth: 1,
						            backgroundColor: '#FFFFFF'
						        },
						        xAxis: {
						            allowDecimals: false,
						            type: 'datetime',
						            dateTimeLabelFormats: {
						                day: '%b-%e'
						            },
						            labels:{
						            	maxStaggerLines :3
						            }
						        },
						        yAxis: {
						            allowDecimals: false,
						            //tickPixelInterval: 200,
						            labels:{
						            	maxStaggerLines :3
						            },
						            title: {
						                text: ''
						            }
						        },
						        tooltip: {
						            pointFormat: '访问量: {point.y}次'
						        },
						        credits: {
						            enabled: false //禁用版权信息
						        },
						        plotOptions: {
						            areaspline: {
						                fillOpacity: 0.5
						            }
						        },
						        series: [{
						            name: '',
						            showInLegend: false,
						            data: data,
						            pointStart: Date.parse(today),
						            pointInterval: 24 * 3600 * 1000
						        }]
						    });
						</script>
					</div>
				</div>
				<div class="index_box">
					<div class="index_box_tit">网站信息</div>
					<div class="index_box_content" style="min-height:auto;">
						<ul class="purple_list">
							<li>操作系统：<?php echo $sys_os; ?></li>
							<li>服务器软件：<?php echo $sys_ser; ?></li>
							<li>MySQL 版本：<?php echo $sys_mysql; ?></li>
							<li>上传文件： <?php echo $sys_upfile; ?></li>
						</ul>
					</div>
				</div>
				<div class="copy">
					Powered By <a href="http://www.yunucms.com" target="_blank">www.yunucms.com</a> @ 2017 YUNUCMS Inc.
				</div>
			</div>
		</div>
	</div>
</body>
</html>