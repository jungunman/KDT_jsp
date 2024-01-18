<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인메인</title>
</head>
<body>
<h1>로그인메인</h1>
<%
	if(application.getAttribute("pid")==null){
%>
<form action="loginReg.jsp">
	아이디<input type="text" name="pid" />
	암호<input type="text" name="pw" />
	<input type="submit" value="로그인" />
</form>
<% } else { %>
<%=application.getAttribute("pid") %>님 안녕하세요 
<a href="logout.jsp">로그아웃</a>
<% }  %>

<% // 아이디 , 비밀번호, 이름 ==> 이게 파일에 있음.%>
</body>
</html>