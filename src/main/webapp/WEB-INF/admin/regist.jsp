<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <!-- Title and other stuffs -->
    <title>学生注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="../commons/css.jsp"></jsp:include>
</head>
<body>

        <!-- Matter -->
        <div class="matter">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">

                        <div class="widget wgreen">

                            <div class="widget-head">
                                <div class="pull-left">学生注册</div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="widget-content">
                                <div class="padd">

                                    <!-- Form starts.  -->
                                    <form class="form-horizontal" role="form" method="post" action="http://localhost:8080/library/admin/regist" >
                                        <div class="form-group text-center">

                                        </div>

                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">姓名</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="username" name="username" type="text" required="required" value="" class="form-control" placeholder="姓名">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">性别</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="sex" name="sex" type="text" required="required" value="" class="form-control" placeholder="性别">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">电话</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="tel" name="tel" type="text" required="required" value="" class="form-control" placeholder="电话">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">学院</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="institute" name="institute" type="text" required="required" value="" class="form-control" placeholder="学院">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">专业</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="profession" name="profession" type="text" required="required" value="" class="form-control" placeholder="学院">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">班级</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="classname" name="classname" type="text" required="required" value="" class="form-control" placeholder="班级">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">学号</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="stuid" name="stuid" type="text" required="required"  class="form-control" placeholder="学号">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-4 col-md-4 col-xs-4 control-label">密码</label>
                                            <div class="col-lg-8 col-md-8 col-xs-8">
                                                <input id="password" name="password" type="password" required="required" value="" class="form-control" placeholder="密码">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-1 col-lg-1 col-md-offset-1 col-md-1 col-xs-5">
                                                <button type="submit" class="btn btn-success" >注册</button>
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