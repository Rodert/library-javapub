function register(){
				//组装用户需要提交的数据
				var username=$("#username").val();
				var email=$("#email").val();
				var password=$("#password").val();
				//ajax实现用户数据添加
				$.ajax({
					url:"register",
					data:{"username":username,"email":email,"password":password},
					success:function(data){
						if(data=="success"){//插入成功
							//发邮件
							
							alert("恭喜您，注册成功，请到注册邮箱中点击激活链接，激活该账户并登陆");
							$('#registPane').modal('hide')
							sendemail(email);//发邮件
						}else{
							alert("对不起，注册失败，请仔细检查您的注册信息是否正确，并重新输入");
						}
					},
					error:function(){
						
					}
				});
				
				
			}
			
			function sendemail(email){
				$.ajax({
					url:"sendEmail",
					data:{"email":email},
					success:function(data){
						
					}
				})
			}
			
			function dologin(){
				var username=$("#login-username").val();//获取登录账号信息
				var password=$("#login-password").val();//获取登录密码
				$.ajax({
					url:"dologin",
					data:{"email":username,"password":password},
					success:function(data){
						if(data=="success"){
							alert("登录成功");
							$('#loginPane').modal('hide')
							//页面刷新
							window.location.reload();
						}else{
							alert("登录失败");
						}
					}
				})
			}