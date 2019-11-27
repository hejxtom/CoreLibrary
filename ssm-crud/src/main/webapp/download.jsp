<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>下载页面</title>
</head>
<body>
<%-- <a href="${pageContext.request.contextPath }/download?filename=1.jpg">
    文件下载
</a> --%>

<a href="${pageContext.request.contextPath }/download?filename=<%=
                                   URLEncoder.encode("You_b9623014-c82c-42e5-b2e6-d3d736eaae48_1.PNG", "UTF-8")%>">
    中文名称文件下载
</a>
</body>
</html>
