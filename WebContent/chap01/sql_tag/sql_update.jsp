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
<h1>sql update </h1>

<p>连接数据库</p>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/jsp?useSSL=false&serverTimezone=UTC"
	user="root"
	password="123456"
	var="data"	
/>
<c:out value="连接状态 ${data!=null?true:false } ${data }"></c:out>
<h1>数据库添加/删除操作</h1>
<!--	<%-- sql="insert into test values(null,'唐娜2');" 添加数据--%>  -->
<sql:update
	dataSource="${data }"
	scope="page"

	sql="delete from test where id=3;"
	var="count"
/>
<h2>
<!--<c:out value="增加  ${count} 条记录"/>!-->
<c:out value="删除 ${count} 条记录"/>

</h2>







</body>
</html>