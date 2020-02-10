<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" 
           uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>sql param </h1>

<p>连接数据库</p>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/jsp?useSSL=false&serverTimezone=UTC"
	user="root"
	password="123456"
	var="data"	
/>
<c:out value="连接状态 ${data!=null?true:false } ${data }"></c:out>
<h1>param 只能设置一个</h1>

<c:set value="2" var="number"/>
<c:set value="唐娜" var="name"/>

<sql:update
	dataSource="${data }"
	scope="page"
	sql="delete from test where id=? and name=?;"
	var="count"
>
	<sql:param value=" ${number}"/>
	<%-- <sql:param value=" ${name}"/>
 --%>
</sql:update>
<h2>
<!--<c:out value="增加  ${count} 条记录"/>!-->
<c:out value="删除 ${count} 条记录"/>

</h2>







</body>
</html>