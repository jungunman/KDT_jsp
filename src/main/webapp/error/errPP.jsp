<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errPP</title>
</head>
<body>
<h1>errPage 처리방식입니다.</h1>
exception 내장객체 사용할 경우 directive 에서  isErrorPage="true" 설정<br/>
<%=exception.getMessage() %>
</body>
</html>