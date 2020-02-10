<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>fmt:parseNumber 标签</h1>
<c:set var="number" value="1234.12334"/>
<fmt:parseNumber 
	var="n"
	value="${number }"
/>
<p>数字解析 (1)<c:out value="${n }"></c:out></p>


<fmt:parseNumber
	 var="n" value="${number }" 
	 integerOnly="true"
/>
<p>数字解析 (2)<c:out value="${n }"></c:out></p>










</body>
</html>