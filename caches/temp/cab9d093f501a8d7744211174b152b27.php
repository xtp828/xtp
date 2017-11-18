<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:55:"F:\ddhz\ddhz-admin\xtp/app/admin\view\box\souhouse.html";i:1510976674;s:56:"F:\ddhz\ddhz-admin\xtp/app/admin\view\public\header.html";i:1510924997;}*/ ?>
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
            <form id="form1">
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
                            <button class="layui-btn layui-btn-lg sub_btn" type="button">
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

                <script id="arlist" type="text/html">
                            {{# for(var i=0;i<d.length;i++){  }}
                            <tr class="long-td">
                                <td>{{d[i].id}}</td>
                                <td>{{d[i].name}}</td>
                                <td>{{d[i].province + '-' + d[i].city + '-' + d[i].area}}</td>
                                <td>{{d[i].createtime}}</td>
                                <td>
                                    {{# if(d[i].status==1){ }}
                                       开放
                                    {{# } else { }}
                                        <span style="color:red;">禁止</span>
                                    {{# } }}
                                </td>
                                <td>
                                 <a class="btn ok-choice" data-id="{{d[i].id}}" data-info="{{d[i].province + '-' + d[i].city + '-' + d[i].area + '，' + d[i].address + '，' + d[i].name}}"><i class="fa fa-check-square" aria-hidden="true"></i>&nbsp;确认选择</a>
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
<script type="text/javascript">
    $('#distpicker').distpicker();
    var laytpl,laypage;
    var url='<?php echo url("box/souHouse"); ?>';
    var allpages='<?php echo $allpage; ?>';
    layui.use(['layer', 'form','laypage','common','laytpl'], function () {
        var $ = layui.jquery, layer = layui.layer, common = layui.common, form = layui.form();
        laytpl =layui.laytpl;
        laypage = layui.laypage;

        $('.sub_btn').click(function(){
            allpages='<?php echo $allpage; ?>';
            url = '<?php echo url("box/souHouse"); ?>' + '?' + $('#form1').serialize();
            common.Ajaxpage(1);
            return false;
        })
        
        common.Ajaxpage();

        $('.ok-choice').live('click',function(){
            parent.$('#address').text($(this).data('info'));
            parent.$('#building_id').val($(this).data('id'));
            parent.layer.close(parent.layer.getFrameIndex(window.name));
        });
        //0黄色感叹号，1笑脸，2错误，3问号，4灰色锁，5哭脸

    });
</script>
</body>
</html>