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
<h1>c_remove 删除变量</h1>
<c:set var="people" value="小唐" scope="page"></c:set>
<c:out value="${people }"></c:out>
<hr>
<p>删除people后 &nbsp;值为<c:remove var="people"/></p>
</body>
</html>