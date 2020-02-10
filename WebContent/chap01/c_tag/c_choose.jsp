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
<h1>c_choose</h1>
<jsp:useBean id="people" class="com.liang.model.People"></jsp:useBean>
<c:set property="name"  value="哈哈" target="${people }"></c:set>
<hr/>


<c:choose>
	<c:when test="${people.name=='大大' }">
		<h1>name为大大</h1>
	</c:when>
	<c:when test="${people.name=='小小' }">
		<h1>name为小小</h1>
	</c:when>
	<c:otherwise>
		<h1>没有合适的名字</h1>
	
	</c:otherwise>
</c:choose>


</body>
</html>