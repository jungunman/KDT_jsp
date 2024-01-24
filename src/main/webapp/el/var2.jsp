<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>var2</title>
</head>
<body>
	<h1>VAR2</h1>

	ww : ${ww},<br/>
	page : ${pageScope.ww},<br/>
	requset : ${requestScope.ww},<br/>
	session : ${sessionScope.ww},<br/>
	application : ${applicationScope.ww}<br/>
		
		
	<hr />
	<c:remove var="ww" scope="session"/>
		
</body>
</html>