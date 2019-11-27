<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
    pageContext.setAttribute("fileId", session.getAttribute("fileId"));
    pageContext.setAttribute("stuId", session.getAttribute("stuId"));
    pageContext.setAttribute("classId", session.getAttribute("classId"));
    pageContext.setAttribute("wordName", session.getAttribute("wordname"));
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
    <script type="text/javascript"
            src="${APP_PATH }/static/assets/js/jquery-1.12.4.min.js"></script>
    <link
            href="${APP_PATH }/static/assets/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/static/assets/js/bootstrap.min.js"></script>
    <style>
        .nav-text{
            position: absolute;
            margin-left: 40px;
            margin-top: 5px;
        }
        .nav-stu{
            width: 99%;
            height: 80px;
        }
        .db-btn-sml{
            font-size: 20px;
            margin-right: 50px;
        }
        .text{
            /*border: #2aabd2 solid 1px;*/
            margin-top: 38px;
            height: 30px;
            text-align: right;
        }
        .stu{
            margin-top: 20px;
        }
        #divcen{
            position: absolute;
            margin-left: 35%;
            margin-top: 5%;
        }
        #btnspan{
            position: absolute;
            margin-left: 37%;
        }
        #navtext{
            position: absolute;
            margin-left: 37%;
            margin-top: 10px;
            font-size: 20px;
        }
        .spancolr{
            color: red;
        }
    </style>
    <script>
        // 判断是否填写上传人并已选择上传文件
        function check(){
            var name = document.getElementById("name").value;
            var file = document.getElementById("file").value;
            if(name==""){
                alert("填写上传人");
                return false;
            }
            if(file.length==0||file==""){
                alert("请选择上传文件");
                return false;
            }
            return true;
        }
        function uploadFile(obj) {
            $('#filename').attr("value", obj.files[0].name);
            if($('#filename').attr("value") !=null){
                $('#edit_update_input').attr("value","完成");
            }
        }
    </script>
</head>
<body>

<div class="nav-stu">
    <div class="row">
        <div class="col-md-2 nav-text">
            <h3>学生习题管理系统</h3>
        </div>
        <div class="col-md-3 col-md-offset-9 text">
            <a href="${APP_PATH }/studenteditController"><span class="glyphicon glyphicon-edit db-btn-sml"></span></a>
            <a href="${APP_PATH }/stueditController"><span class="glyphicon glyphicon-book db-btn-sml"></span></a>
            <a href="${APP_PATH }/stuController"><span class="glyphicon glyphicon-user db-btn-sml"></span></a>
            <a href="${APP_PATH }/loginController" ><span class="glyphicon glyphicon-off db-btn-sml"></span></a>
        </div>
    </div>
</div>
<div id="navtext">请上传<span class="spancolr">${wordName}</span>的作业</div>
<div id="divcen">
<form action="${pageContext.request.contextPath }/fileUpload"
      method="post" enctype="multipart/form-data" onsubmit="return check()">
    作业号：<input id="name" type="text" name="wordId" value="${fileId}"/><br /><br />
    学&nbsp;&nbsp;&nbsp;&nbsp;号：<input  type="text" name="stuId" value="${stuId}"/><br /><br />
     <input id="file" type="file" name="uploadfile" onchange="uploadFile(this)" multiple="multiple"/><br />
    文&nbsp;&nbsp;件&nbsp;&nbsp;名：<input type="text" id="filename" name="test"/><br/><br />
    完成情况：<input type="text" name="edit"  id="edit_update_input" placeholder="edit"><br/><br />
    <%--<input type="submit" value="上传"/>--%>
    <span id="btnspan">
        <button type="submit" class="btn btn-primary">
               <span class="glyphicon glyphicon-open">上传</span>
        </button>
    </span>
</form>
</div>
</body>
</html>
