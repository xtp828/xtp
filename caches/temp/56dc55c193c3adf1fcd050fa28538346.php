<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:53:"F:\ddhz\ddhz-admin\xtp/app/admin\view\role\index.html";i:1510924997;s:56:"F:\ddhz\ddhz-admin\xtp/app/admin\view\public\header.html";i:1510924997;s:54:"F:\ddhz\ddhz-admin\xtp/app/admin\view\public\menu.html";i:1510924997;}*/ ?>
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
				<a class="btn" data-type="doAdd" href="<?php echo url('addrole'); ?>">新增</a>
				<div class="table" v-el:table>
					<table>
						<thead>
							<tr>
								<th width="100"><span>ID</span></th>
								<th width="200"><span>角色名称</span></th>
								<th class="sort"><span>状态</span></th>
								<th class="sort" width="150"><span>添加时间</span></th>
								<th class="sort" width="150"><span>更新时间</span></th>
								<th width="230"><span>操作</span></th>
							</tr>
						</thead>
						<tbody>
							<?php if(is_array($infolist) || $infolist instanceof \think\Collection || $infolist instanceof \think\Paginator): if( count($infolist)==0 ) : echo "" ;else: foreach($infolist as $key=>$v): ?>
			                <tr>
			                    <td><?php echo $v['id']; ?></td>
			                    <td style="text-align:left;"><?php echo $v['title']; ?></td>
			                    <td align="center">
			                        <a href="javascript:;" class="change_status" data-id="<?php echo $v['id']; ?>"> <div class="layui-unselect layui-form-switch <?php if($v['status'] == 1): ?>layui-form-onswitch<?php endif; ?>"><i></i></div> </a>
			                    </td>
			                    <td align="center"><?php echo $v['create_time']; ?></td>
			                    <td align="center"><?php echo $v['update_time']; ?></td>
			                    <td align="center">
			                        <a class="btn do-action" onclick="giveQx(<?php echo $v['id']; ?>)">分配权限</a>
		                            <a class="btn do-action" data-type="doEdit" data-href="<?php echo url('editrole'); ?>" data-id="<?php echo $v['id']; ?>">编辑</a>
		                            <a class="btn do-action" data-type="doDelOne" data-href="<?php echo url('delrole'); ?>" data-id="<?php echo $v['id']; ?>">删除</a>
			                    </td>
			                </tr>
			                <?php endforeach; endif; else: echo "" ;endif; ?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
<!-- 权限分配 -->
<div class="zTreeDemoBackground left" style="display: none" id="role">
    <input type="hidden" id="nodeid" value="">
    <div class="form-group">
        <div class="col-sm-5 col-sm-offset-2">
            <ul id="treeType" class="ztree"></ul>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-4 col-sm-offset-4" style="margin-bottom: 15px;margin-left: 15px;">
            <input type="button" value="确认分配" class="btn btn-primary" id="postform"/>
        </div>
    </div>
</div>

<link rel="stylesheet" href="__ADM_PUBLIC__/js/zTree/zTreeStyle.css" type="text/css">
<script type="text/javascript" src="__ADM_PUBLIC__/js/zTree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="__ADM_PUBLIC__/js/zTree/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="__ADM_PUBLIC__/js/zTree/jquery.ztree.exedit-3.5.js"></script>

<script type="text/javascript">
    zNodes = '';
    var index = '';
    var index2 = '';
    //分配权限
    function giveQx(id){
        $("#nodeid").val(id);
        //加载层
        index2 = layer.load(0, {shade: false}); //0代表加载的风格，支持0-2
        //获取权限信息
        $.getJSON('./giveAccess', {'type' : 'get', 'id' : id}, function(res){
            layer.close(index2);
            if(res.code == 1){
                zNodes = JSON.parse(res.data);  //将字符串转换成obj
                //页面层
                index = layer.open({
                    type: 1,
                    area:['350px', '600px'],
                    title:'权限分配',
                    skin: 'layui-layer-demo', //加上边框
                    content: $('#role')
                });
                //设置位置
                layer.style(index, {
                    top: '150px'
                });
                //设置zetree
                var setting = {
                    check:{
                        enable:true
                    },
                    data: {
                        simpleData: {
                            enable: true
                        }
                    }
                };

                $.fn.zTree.init($("#treeType"), setting, zNodes);
                var zTree = $.fn.zTree.getZTreeObj("treeType");
                zTree.expandAll(true);
            }else{
                layer.alert(res.msg);
            }
        });
    }

    //确认分配权限
    $("#postform").click(function(){
        var zTree = $.fn.zTree.getZTreeObj("treeType");
        var nodes = zTree.getCheckedNodes(true);
        var NodeString = '';
        $.each(nodes, function (n, value) {
            if(n>0){
                NodeString += ',';
            }
            NodeString += value.id;
        });

        var id = $("#nodeid").val();
        //写入库
        $.post('<?php echo url('giveAccess'); ?>', {'type' : 'give', 'id' : id, 'rule' : NodeString}, function(res){
            layer.close(index);
            if(res.code == 1){
                layer.msg(res.msg,{icon:1,time:1500,shade: 0.1}, function(){});
            }else{
                layer.msg(res.msg);
            }

        }, 'json')
    })

    layui.use(['layer','common'], function () {
        var $ = layui.jquery, layer = layui.layer;

        $(document).on('click','.change_status', function () {
            var id=$(this).attr('data-id');
            var obs=$(this);
            $.ajax({
                url: '<?php echo url("staterole"); ?>',
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