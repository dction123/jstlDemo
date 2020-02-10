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
<h1>c_param</h1>
<c:url var="myurl" value="main.jsp">
	<c:param name="name" value="小唐"></c:param>
	<c:param name="age" value="18"></c:param>
</c:url>
<a href="/<c:out value="${myurl }" />"> 转发</a>
</body>
</html>