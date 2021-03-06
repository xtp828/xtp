<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:56:"F:\ddhz\ddhz-admin\xtp/app/admin\view\user\edituser.html";i:1510924997;s:56:"F:\ddhz\ddhz-admin\xtp/app/admin\view\public\header.html";i:1510924997;s:54:"F:\ddhz\ddhz-admin\xtp/app/admin\view\public\menu.html";i:1510924997;}*/ ?>
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
				<form  class="layui-form layui-form-pane" id="formrec" method="post" role="form">
                <input type="hidden" name="id" value="<?php echo $info['id']; ?>">
				<div class="layui-form-item">
		            <label class="layui-form-label">管理员名称</label>
		            <div class="layui-input-inline">
		                <input class="layui-input" name="username" type="text" placeholder="管理员名称" lay-verify="title" value="<?php echo $info['username']; ?>" readonly>
		            </div>
		        </div>
				<div class="layui-form-item">
                    <label class="layui-form-label">管理员角色</label>
                    <div class="layui-input-inline">
                        <select name="groupid" lay-verify="required">
                            <option value="">请选择</option>
                            <?php if(!empty($role)): if(is_array($role) || $role instanceof \think\Collection || $role instanceof \think\Paginator): if( count($role)==0 ) : echo "" ;else: foreach($role as $key=>$vo): ?>
                            <option value="<?php echo $vo['id']; ?>" <?php if($info['groupid'] == $vo['id']): ?>selected<?php endif; ?>><?php echo $vo['title']; ?></option>
                            <?php endforeach; endif; else: echo "" ;endif; endif; ?>
                        </select>

                    </div>

                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">密码</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" type="password" name="password" placeholder="密码">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">真实姓名</label>
                    <div class="layui-input-inline">
                        <input class="layui-input" type="text" name="real_name" placeholder="真实姓名"  lay-verify="required" value="<?php echo $info['real_name']; ?>">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">状态</label>
                    <div class="layui-input-inline">
                        <input type="checkbox" <?php if($info['status'] == 1): ?>checked<?php endif; ?> name="status" lay-skin="switch" lay-filter="switchTest" title="开关"><div class="layui-unselect layui-form-switch layui-form-onswitch"><i></i></div>
                    </div>
                </div>
		        <div class="layui-form-item">
                    <label class="layui-form-label"></label>
                    <div class="layui-input-inline">
		              <button class="btn" lay-submit="" lay-filter="add-role" data-href=<?php echo url('edituser'); ?>>提交</button>
                    </div>
		        </div>
				</form>
			</div>
		</div>
	</div>
<script>
    layui.use(['form','common'], function(){
        var $ = layui.jquery,common=layui.common,form = layui.form();
        
        form.verify({
            title:function(value){
                if(value == ""){
                    return '管理员名称不能为空';
                }
            }
        });

        //监听提交
        form.on('submit(add-role)', function(data){
            var sub=true;
            var url=$(this).data('href');
            if(url){
                if(sub){
                    $.ajax({
                        url: url,
                        type: 'post',
                        dataType: 'json',
                        data: data.field,
                        success: function (info) {
                            if (info.code == 1) {
                                common.layerAlertSHref(info.msg, '提示', "<?php echo url('user/index'); ?>");
                            }
                            else {
                                common.layerAlertE(info.msg, '提示');
                                $(data.elem).removeAttr("disabled").text("提交");
                            }
                        },
                        beforeSend: function () {
                            $(data.elem).attr("disabled", "true").text("提交中...");
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            common.layerAlertE(textStatus, '提示');
                        }
                    });
                }
            }else{
                common.layerAlertE('链接错误！', '提示');
            }
            return false;
        });
    });
</script>
</body>
</html>