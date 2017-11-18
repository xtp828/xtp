<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:52:"F:\ddhz\ddhz-admin\xtp/app/admin\view\box\house.html";i:1511021563;s:56:"F:\ddhz\ddhz-admin\xtp/app/admin\view\public\header.html";i:1510924997;s:54:"F:\ddhz\ddhz-admin\xtp/app/admin\view\public\menu.html";i:1510924997;}*/ ?>
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
                <form id="form1">
                    <div class="layui-form-item">
                        <div class="layui-inline">

                            <label class="layui-form-label sou_lablel">状态</label>
                            <div class="layui-input-inline" style="width: 90px;">
                                <select name="status">
                                    <?php echo $status; ?>
                                </select>
                            </div>

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
                            <div class="layui-input-inline" style="width: 190px;">
                                <button class="layui-btn layui-btn-lg sub_btn" type="button">
                                    <i class="layui-icon">&#xe615;</i>
                                    搜索
                                </button>
                                <button class="layui-btn layui-btn-lg" type="button" onclick="window.location.href='<?php echo url('addHouse'); ?>'">
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
                        <th width="100"><span>大厦名</span></th>
                        <th class="sort" width="150"><span>地址</span></th>
                        <th width="100"><span>时间</span></th>
                        <th width="100"><span>状态</span></th>
                        <th width="100"><span>操作</span></th>
                    </tr>
                    </thead>
                    <script id="arlist" type="text/html">
                            {{# for(var i=0;i<d.length;i++){  }}
                            <tr class="long-td">
                                <td>{{d[i].id}}</td>
                                <td>{{d[i].name}}</td>
                                <td>{{d[i].province + '-' + d[i].city + '-' + d[i].area}}</td>
                                <td>{{d[i].createtime}}</td>
                                <td>
                                    <a href="javascript:;" class="change_status" data-id="{{d[i].id}}" data-change="{{d[i].status}}"> 
                                        <div class="layui-unselect layui-form-switch 
                                        {{# if(d[i].status==1){ }}
                                            layui-form-onswitch
                                        {{# } }}">
                                        <i></i></div> 
                                        </a>
                                </td>
                                <td>
                                <a class="btn do-action" data-type="doEdit" data-href="{{edit_url}}" data-id="{{d[i].id}}"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;编辑</a>
                                </td>
                            </tr>
                            {{# } }}
                    </script>
                    <tbody id="article_list"></tbody>
            </table>
        </div>
        <div id="AjaxPage" style="float: right;margin-top:-10px; "></div>
                <div class="CountPage" style="float: right;clear:both; margin-right:15px; margin-top:-5px;">
                    共 <span id="all_total"><?php echo $count; ?></span> 条 <span id="allpage"></span>
                </div>
                <div style="clear:both;"></div>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">
    $('#distpicker').distpicker();

    var laytpl,laypage;
    var url='<?php echo url("box/House"); ?>';
    var allpages='<?php echo $allpage; ?>';
    var edit_url = '<?php echo url("box/editHouse"); ?>';
    layui.use(['layer', 'form','laypage','common','laytpl'], function () {
        var $ = layui.jquery, layer = layui.layer, common = layui.common, form = layui.form();
        laytpl =layui.laytpl;
        laypage = layui.laypage;

        $('.sub_btn').click(function(){
            allpages='<?php echo $allpage; ?>';
            url = '<?php echo url("box/House"); ?>' + '?' + $('#form1').serialize();
            common.Ajaxpage(1);
            return false;
        })
        
        common.Ajaxpage();

        //0黄色感叹号，1笑脸，2错误，3问号，4灰色锁，5哭脸
        $(document).on('click','.change_status', function () {
            var id=$(this).attr('data-id');
            var obs=$(this);
            var status = obs.attr('data-change');
            $.ajax({
                url: '<?php echo url("box/delHouse"); ?>',
                dataType: "json",
                data:{'ids':id, 'status':status},
                type: "POST",
                success: function(data){
                    if(data.code == 1){
                        if(status == 1){
                            obs.attr('data-change', 0);
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