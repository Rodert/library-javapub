<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <!-- Title and other stuffs -->
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <jsp:include page="../commons/css.jsp"></jsp:include>





</head>
<body>
<!-- 头部 -->
<jsp:include page="../commons/head.jsp"></jsp:include>


<div class="content">

    <!-- 左边菜单 -->
    <div class="sidebar">
        <div class="sidebar-dropdown">
            <a href="#">导航</a>
        </div>

        <ul id="nav">
            <li>
                <a href="#" class="open"><i class="icon-home"></i> 首页</a>

            </li>

            <li >
                <a href="http://localhost:8080/library/admin/booklist"><i class="icon-building"></i> 图书管理 </a>
            </li>
            <li>
                <a href="http://localhost:8080/library/admin/findAllStu"><i class="icon-user"></i>用户管理</a>
            </li>
            <li>
                <a href="http://localhost:8080/library/admin/allBorrowbooks"><i class="icon-user"></i>借阅信息</a>
            </li>
        </ul>
    </div>


    <!-- 内容 -->
    <!-- 内容 -->
    <div class="mainbar">
        <div class="page-head">
            <h2 class="pull-left"><i class="icon-home"></i> 首页</h2>
            <div class="bread-crumb pull-right">
                <a href="#"><i class="icon-home"></i> 首页</a>
                <span class="divider">/</span>
                <a href="#" class="bread-current">控制台</a>
            </div>
            <div class="clearfix"></div>
        </div>

        <!-- Matter -->
        <div class="matter">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">

                        <div class="widget wgreen">

                            <div class="widget-head">
                                <div class="pull-left">添加管理员</div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="widget-content">
                                <div class="padd">

                                    <!-- Form starts.  -->
                                    <form class="form-horizontal" role="form" method="post" action="http://localhost:8080/library/admin/doaddadmin" >
                                        <div class="form-group text-center">

                                        </div>

                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">姓名</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="name" name="name" type="text" required="required" value="" class="form-control" placeholder="姓名">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">账号</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="stuid" name="stuid" type="text" required="required" class="form-control" placeholder="账号">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">密码</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="password" name="password" required="required" type="password" class="form-control" placeholder="密码">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-1 col-lg-1 col-md-offset-1 col-md-1 col-xs-5">
                                                <button type="submit" class="btn btn-success">确认添加</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

<!-- 底部 -->
<jsp:include page="../commons/foot.jsp"></jsp:include>
<!-- 快速回到顶部 -->
<span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span>

</body>

</html>