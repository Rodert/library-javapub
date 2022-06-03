<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/style/admin/style/font-awesome.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/style/admin/style/bootstrap.css" />
<link href="<%=request.getContextPath()%>/style/admin/css/login.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/style/js/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">登录界面</h1>
			<form
				class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30"
				role="form" method="post">
				<div class="form-group">
					<div class="col-xs-12">
						<div class="control-wrapper"
							style="text-align: center; padding: 0;"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="control-wrapper">
							<label  class="control-label fa-label"><i
								class="fa fa-user fa-medium icon-user"></i></label> <input
								class="form-control" id="stuid" name="stuid" placeholder="学号"
								value="1@qq.com">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<label for="password" class="control-label fa-label"><i
								class="fa fa-lock fa-medium icon-lock"></i></label> <input
								type="password" class="form-control" id="password"
								name="password" placeholder="Password" value="123456">
						</div>
					</div>
				</div>
						<div class="radio" >
							<label>
								<input type="radio" name="role" id="optionsRadios1"
									   value="1" checked> 管理员
							</label>
						</div>
						<div class="radio" >
							<label>
								<input type="radio" name="role" id="optionsRadios2"
									   value="2">
								学生
							</label>
						</div>
				<div class="form-group">
					<div class="col-md-12">
						<div class="control-wrapper">
							<input type="button" value="登录" class="btn btn-info"
								onclick="login()">

						</div>
					</div>
				</div>
				<hr>

			</form>
			<div class="text-center">
				<a href="http://localhost:8080/library/admin/toregist" class="templatemo-create-new">学生注册<i
					class="fa fa-arrow-circle-o-right"></i></a>
			</div>
		</div>
	</div>
	
	
	<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">消息提示框</h4>
            </div>
            <div class="modal-body">登录成功</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
               
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>

</html>
<script>
	function login() {
		var stuid = $("#stuid").val();//获取账号
		var password = $("#password").val();//获取密码
		var roles = document.getElementsByName("role");//获取身份信息
		for(var i=0;i<roles.length;i++){
			if(roles[i].checked){
				var role = roles[i].value;
			}
		}
		//alert(stuid);
		// alert(password);
		// alert(role);
		$.ajax({
			url : "dologin",//登录地址
			data : {
				"stuid" : stuid,
				"password" : password,
				"role":role
			},
			success : function(data) {//请求成功函数
				if(data=="student"){
					//alert("登录成功");
					//页面跳转-》主页面
					window.location.href="student"
				}else if(data=="admin"){
					window.location.href="admin"
				} else{
					//换掉模态框里的内容html(),text(),val()
					$(".modal-body").text("请仔细检查您的邮箱或密码是否输入正确");
					//显示模态框
					$('#myModal').modal('show')
				}
				
			},
			error : function() {//请求失败函数
				alert("登录失败");
			}
		}

		);
	}
</script>