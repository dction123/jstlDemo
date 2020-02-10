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
<h1>sql_setdatasource 连接数据库</h1>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/jsp?useSSL=false&serverTimezone=UTC"
	user="root"
	password="123456"
	var="data"	
/>
<p>data:${data }</p>

<p>查询：
<sql:query
 dataSource="${data }"
 var="result" 
 sql="select * from test;"

/>
<c:out value="${result }"></c:out>
</p>

<c:forEach var="item" items="${result.rows}">
	<p>id:${item.id}</p>
	<p>name:${item.name}</p>
</c:forEach>  


</body>
</html>