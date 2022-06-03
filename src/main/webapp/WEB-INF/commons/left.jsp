<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="sidebar">
	<div class="sidebar-dropdown">
		<a href="#">导航</a>
	</div>

	<ul id="nav">
		<li>
					<a href="http://localhost:8080/Space/admin" class="open"><i class="icon-home"></i> 首页</a>
			
		</li>
<!-- 		<li class="has_sub"> -->
<!-- 					<a href="#"><i class="icon-credit-card"></i> 认证管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a> -->
<!-- 					<ul> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/authentication/list?aType=1">班级认证&nbsp;&nbsp;&nbsp; -->
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/authentication/list?aType=2">教师认证 &nbsp;&nbsp;&nbsp; -->
					
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/authentication/list?aType=3">社团认证&nbsp;&nbsp;&nbsp; -->
					
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/authentication/list?aType=4">学院认证&nbsp;&nbsp;&nbsp; -->
					
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</li> -->
<!-- 		<li class="has_sub"> -->
<!-- 					<a href="#"><i class="icon-envelope-alt"></i> 申请管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a> -->
<!-- 					<ul> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/application/list?buildingType=0">教室 申请&nbsp;&nbsp;&nbsp; -->
					
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/application/list?buildingType=1">实验室申请&nbsp;&nbsp;&nbsp; -->
					
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/application/list?buildingType=2">综合楼申请&nbsp;&nbsp;&nbsp; -->
					
<!-- 					</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</li> -->
		<li class="has_sub">
					<a href="#" onclick="getalltype()"><i class="icon-building"></i> 场地管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
					<ul id="types"></ul>
		</li>
<!-- 		<li class="has_sub"> -->
<!-- 					<a href="#"><i class="icon-group"></i> 活动管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a> -->
<!-- 					<ul> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/activity/list">查看全部活动</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/comment/list">查看一级评论</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/reply/list">查看二级评论</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/activity/toAddActivityPage">发布活动</a> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</li> -->
		
<!-- 		<li class="has_sub"> -->
<!-- 					<a href="#"><i class="icon-group"></i> 公告管理 <span class="pull-right"><i class="icon-chevron-right"></i></span></a> -->
<!-- 					<ul> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/notice/list">查看公告</a> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<a href="http://localhost:8080/Space/admin/notice/toPulishPage">发布公告</a> -->
<!-- 				</li> -->

<!-- 			</ul> -->
<!-- 		</li> -->

		<li>
					<a href="<%=request.getContextPath() %>/admin/userlist"><i class="icon-user"></i>用户管理</a>
		</li>
		<li>
					<a href="<%=request.getContextPath() %>/admin/ajaxuserlist"><i class="icon-user"></i>ajax用户管理</a>
		</li>
		
		
		<!--  
		<li class="has_sub">
			
				
				
					<a href="#"><i class="icon-file-alt"></i> 查看日志 <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
					<ul>
				
			
			
			
				<li>
					
					<a href="http://localhost:8080/Space/admin/log/list?type=0">普通日志</a>
				</li>
				<li>
					<a href="http://localhost:8080/Space/admin/log/list?type=1">错误日志</a>
				</li>
			</ul>
		</li>
		-->
		
		<li>
			
				
				
					<a href="http://localhost:8080/Space/admin/setting"><i class="icon-wrench"></i>基本设置</a>
				
			
			
		</li>
	</ul>
</div>

<script>
function getalltype(){
	//1、去后台获取所有的建筑类型
	//判断当前ul节点是否有子节点
	var children=$("#types").html();
	
	if(children==""){
		$.ajax({
			url:"<%=request.getContextPath()%>/space/findAllType",
			dataType:"json",
			success:function(data){
				$("#types").empty();
				for(var i=0;i<data.length;i++){
					//每一种建筑类型
					//alert(data[i].typeid+","+data[i].typename);
					
					$("#types").append('<li><a href="<%=request.getContextPath()%>/space/findBuildingsByType?type='+data[i].typeid+'">'+data[i].typename+'</a></li>');
				}
				
			},
			error:function(){
				
			}
		});
	}
		

	//2、解析json,组装带单的子菜单
}
</script>