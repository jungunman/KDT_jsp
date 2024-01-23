<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b 입니다.</title>
</head>
<body>
<h1>b 입니다.</h1>
<%-- <%=a %> 변수 호출 불가--%>
<%=request.getAttribute("bb") %>,
<%=request.getParameter("pid") %>,
<%=request.getParameter("age") %>,
<%=request.getParameter("pname") %>,
<%=request.getParameter("height") %><br/>
</body>
</html>