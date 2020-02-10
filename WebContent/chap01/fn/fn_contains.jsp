<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" 
           uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>fn contains</h1>
<%
	pageContext.setAttribute("message", "www.baidu.com");
	
%>
<h1>原字符串为：${message}</h1>
<h1>字符串中是否有百度${fn:contains(message,"baidu")}</h1>

<h1>baidu在字符串中的位置:${fn:indexOf(message,"baidu") }</h1>
<h1>替换字符串 后为：${fn:replace(message,"baidu","wuai2") } </h1>



</body>
</html>