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
<h1>c_set</h1>
<c:set var="peo" value="小红" scope="request"></c:set>
<c:out value="${peo }"></c:out>
<hr/>
<%
	People p = new People();
	request.setAttribute("people", p);

%>
<c:set property="name" value="是是是" target="${people }"></c:set>
<p>name:<%= p.getName() %></p>
</body>
</html>