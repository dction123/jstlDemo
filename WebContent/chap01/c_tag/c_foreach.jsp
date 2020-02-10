<%@page import="java.util.ArrayList"%>
<%@page import="com.liang.model.People"%>
<%@page import="java.util.*"%>
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
<h1>c_foreach</h1>
<%
	List<String> list = new ArrayList<String>();
	list.add(0, "小红");
	list.add(1, "小白");
	list.add(2, "小龙");
	list.add(3, "小可");
	list.add(4, "小爱");
	list.add(5, "小噢");
	
	pageContext.setAttribute("list", list);
	String str = "www.hello.world.com";
	
	pageContext.setAttribute("str", str);
	
	
%>
<c:forEach var="item" items="${list }" >
	<h1>${item }</h1>
</c:forEach>

<hr>
<c:forEach var="item" items="${list }" step="2">
	<c:out value="${item }"></c:out>
</c:forEach>
<hr>

<h1>c_forTokens</h1>
<c:forTokens items="${str }" delims="." var="name">
	<c:out value="${name }"></c:out>
	<hr>
</c:forTokens>

</body>

</html>