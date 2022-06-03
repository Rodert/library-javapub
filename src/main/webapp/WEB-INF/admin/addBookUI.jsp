<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <!-- Title and other stuffs -->
    <title>添加管理员</title>
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
                                <div class="pull-left">添加图书</div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="widget-content">
                                <div class="padd">

                                    <!-- Form starts.  -->
                                    <form class="form-horizontal" role="form" method="post" action="admin/add" >
                                        <div class="form-group text-center">

                                        </div>

                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">书名</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="bookname" name="bookname" type="text" required="required" value="" class="form-control" placeholder="书名">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">作者</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="author" name="author" type="text" required="required" value="" class="form-control" placeholder="作者">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">类型</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="type" name="type" type="text" required="required" value="" class="form-control" placeholder="类型">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">出版单位</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="publisher" name="publisher" type="text" required="required" value="" class="form-control" placeholder="出版单位">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">出版时间</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="publicationdate" name="publicationdate" type="date" required="required" value="" class="form-control" placeholder="出版时间">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">价格</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="price" name="price" type="text" required="required" value="" class="form-control" placeholder="价格">
                                            </div>
                                        </div>
                                        <div class="form-group hidden">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">借阅状态</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="state" name="state" type="text" required="required" value="1" class="form-control" placeholder="借阅状态">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">备注</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="comment" name="comment" type="text" required="required" value="" class="form-control" placeholder="备注">
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <div class="col-lg-offset-1 col-lg-1 col-md-offset-1 col-md-1 col-xs-5">
                                                <button type="button" class="btn btn-success" onclick="return check()">确认添加</button>
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

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">消息提示框</h4>
            </div>
            <div class="modal-body">添加成功</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- /.modal -->
</body>
<script type="text/javascript">
    function check() {

        var bookname = $("#bookname").val();
        var author = $("#author").val();
        var type = $("#type").val();
        var publisher = $("#publisher").val();
        var publicationdate = $("#publicationdate").val();
        var price = $("#price").val();
        var state = $("#state").val();
        var comment = $("#comment").val();
        // alert(publicationdate)

            $.ajax({
                url:"addbook",
                data:{
                    "bookname":bookname,
                    "author":author,
                    "type":type,
                    "publisher":publisher,
                    "publicationdate":publicationdate,
                    "price":price,
                    "state":state,
                    "comment":comment
                },
                success:function(data){
                    if(data=="success"){
                        $(".modal-body").text("添加成功");
                        //显示模态框
                        $('#myModal').modal('show')
                    }else{
                        $(".modal-body").text("添加失败");
                        //显示模态框
                        $('#myModal').modal('show')
                    }
                },
                error:function(){
                    $(".modal-body").text("添加失败");
                    //显示模态框
                    $('#myModal').modal('show')
                }

            });

    }

</script>

</html>