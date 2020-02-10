<%@page import="java.util.Date"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>format_data</h1>
<p>格式化时间</p>
<c:set var="now"  value="<%=new Date() %>"/>

<p>
日期格式化 (1):
<fmt:formatDate type="time" value="${now }"/>
</p>

<p>
日期格式化 (2):
<fmt:formatDate type="date" value="${now }"/>
</p>

<p>
日期格式化 (3):
<fmt:formatDate type="both" value="${now }"/>
</p>

<p>
日期格式化 (4):
<fmt:formatDate type="both" value="${now }" dateStyle="short" timeStyle="short"/>
</p>

<p>
日期格式化 (5):
<fmt:formatDate type="both" value="${now }" dateStyle="long" timeStyle="long"/>
</p>


<p>
日期格式化 (6):
<fmt:formatDate type="both" value="${now }" dateStyle="medium" timeStyle="medium"/>
</p>


<p>
自定义日期格式化 (7):
<fmt:formatDate type="both" value="${now }" pattern="yyyy-MM-dd"/>
</p>










</body>
</html>