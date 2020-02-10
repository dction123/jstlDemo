<%@page import="com.liang.model.People"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>c_url 使用可选的查询参数来创造一个URL</h1>
<c:url var="u" value="baidu.com"/>
<h1>

<a href="${u }"/>通过c:url 生成的连接
</h1>

</body>
</html>