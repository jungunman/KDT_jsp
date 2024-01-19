<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>err500</title>
</head>
<body>
	<h1>500 에러 발생</h1>
	<%=exception.getMessage() %>
</body>
</html>