<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>x:out 标签</h1>
<c:set var="xmltext">
<books>
	<book>
		<name>padma history</name>
		<author>ZARA</author>
		<price>100</price>
	</book>
</books>	
</c:set>

<x:parse xml="${xmltext}" var="output"/>
<b>this book name :</b>
<x:out select="$output/books/book[1]/name" />
<b>this book price :</b>
<x:out select="$output/books/book[1]/price"/>
<br>


</body>
</html>