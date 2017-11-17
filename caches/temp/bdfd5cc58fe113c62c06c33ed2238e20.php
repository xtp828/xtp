<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:61:"E:\phpstudy\WWW\YUNUCMSv1.0.2/app/admin\view\index\login.html";i:1510893240;}*/ ?>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $admintitle; ?>-后台登s陆</title>
    <link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/css/jquery.slider.css">
    <link rel="stylesheet" type="text/css" href="__ADM_PUBLIC__/css/login.css">
    <script type="text/javascript" src="__ADM_PUBLIC__/js/jquery.min.js"></script>
    <script type="text/javascript" src="__ADM_PUBLIC__/layui/layui.js"></script>
    <script type="text/javascript" src="__ADM_PUBLIC__/js/jquery.slider.min.js"></script>
</head>
<body class="login_bg">
    <div class="login_from">
        <div class="login_title">
            <h1>欢迎登录<?php echo $admintitle; ?></h1>
        </div>
        <form class="layui-form" id="doLogin" action="" method="post">
            <div class="form_group">
                <input class="layui-input" id="username" type="text" name="username" placeholder="请输入账号">
                <span class="errorinfo">请您输入用户名</span>
            </div>
            <div class="form_group">
                <input class="layui-input" id="password" type="password" name="password" placeholder="请输入密码">
                <span class="errorinfo">密码不能为空</span>
            </div>
            <div id="slider" class="slider"></div>
            <span class="errorinfo">请拖拽验证</span>
            <button class="layui-btn" lay-submit lay-filter="form">登 录</button>
        </form>
        <p class="copyright">Powered by <a href="http://www.ddhzi.com" target="_blank"><?php echo $admintitle; ?></a></p>
    </div>

    <script>
        layui.use('form', function(){
            var form = layui.form();
            var key = false;
            var slider = $('#slider');
            var verify = function (obj) {
                obj.addClass('layui-form-danger')
                    .focus()
                    .one('input',function () {
                        obj.removeClass('layui-form-danger').next('span').fadeOut();
                    })
                    .next('span').slideDown('fast');
            }
            form.on('submit(form)', function(data){
                var input = $(data.form).find('input');
                for(var i=0;i<input.length;i++){
                    var t = input.eq(i);
                    if(t.val() == ''){
                        verify(t);
                        return false;
                    }
                }
                if(!key){
                    slider.one('click',function () {
                        slider.next('span').fadeOut();
                    }).next('span').slideDown('fast');
                }else{
                    $.ajax({
                        url:'<?php echo url('dologin'); ?>',
                        data:$('#doLogin').serialize(),
                        dataType:"json",
                        error:function(data){
                            common.layerAlertE('链接错误！', '提示');
                        },
                        success:function(data){
                            if(data.code==1){
                                layer.msg(data.msg, {icon: 6,time:1000}, function(index){
                                    layer.close(index);
                                    window.location.href = data.data;
                                });
                            }else{
                                layer.msg(data.msg, {icon: 5,time:2000});
                                return false;
                            }
                        }
                    });
                }
                return false;
            });
            slider.slider({
                width: 420,
                height: 40,
                sliderBg: "#999",
                color: "#fff",
                fontSize: 14,
                bgColor: "#33CC00",
                textMsg: "按住滑块，拖拽验证",
                successMsg: "验证成功",
                successColor: "#fff",
                time: 400,
                callback: function(result) {
                    key = result;
                }
            });

        });
    </script>
</body>
</html>