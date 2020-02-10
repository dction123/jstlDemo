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
<h1>format_number</h1>
<c:set var="n" value="12345.00789"></c:set>
<p>数字格式化1:
<fmt:formatNumber value="${n }" type="currency" />
</p>
<p>数字格式化2:
<fmt:formatNumber value="${n }" type="percent"/>
</p>
<p>数字格式化3:
<fmt:formatNumber value="${n }"  maxFractionDigits="2"/>
</p>
<p>数字格式化4:
<fmt:formatNumber value="${n }"  minFractionDigits="3"/>
</p>
<p>数字格式化5:
<fmt:formatNumber value="${n }" pattern="####.###"/>
</p>
</body>
</html>