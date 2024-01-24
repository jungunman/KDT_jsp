<%@page import="basic_p.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>var</title>
</head>
<body>
	<h1>VAR</h1>
${param.pid}<br/>
${param.kor}<br/>
${param.eng}<br/>
${param.mat}<br/>
	
	<c:set var="qq" value="100" />
		qq: ${qq +1}
	<c:set var="qq" value="200" />
		qq: ${qq}
	
	<c:set var="ww" value="나는 무너" scope="page"/>
	<c:set var="ww" value="나는 상어" scope="request"/>
	<c:set var="ww" value="나는 악어" scope="session"/>
	<c:set var="ww" value="나는 고래" scope="application"/>
		
	${pageScope.ww},
	${requestScope.ww},
	${sessionScope.ww},
	${applicationScope.ww}
	
	<br />
	
	
	<c:set var="mm" value="<%=new Member() %>"/>
	mm : ${mm} <br />
	
	<!-- 생성자에 값 넣는 방법 ==> Setter가 없으면 넣을 수 없다! -->
	<c:set property="pid" target="${mm}" value="bbb"/>
	<c:set property="pname" target="${mm}" value="woong"/>
	
	mm : ${mm} <br />
	mm.pid : ${mm.pid} <br />
	
	
</body>
</html>