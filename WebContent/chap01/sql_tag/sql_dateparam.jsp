<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" 
           uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>           
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sql dateparam </h1>

<p>连接数据库</p>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/jsp?useSSL=false&serverTimezone=UTC"
	user="root"
	password="123456"
	var="data"	
/>
<c:out value="连接状态 ${data!=null?true:false } ${data }"></c:out>
<h1>dateparam</h1>

<c:set var="now" value="<%= new Date() %>"/>

<sql:update
	dataSource="${data }"
	scope="page"
	sql="insert into test values(null,'唐名慧慧',?);"
	var="count"
>
	<sql:dateParam value="${now }"/>

</sql:update>
<h2>
<c:out value="增加  ${count} 条记录"/>!


</h2>







</body>
</html>