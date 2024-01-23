<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<h1>로그메인</h1>
<%
	String pname = null;
	for(Cookie cc : request.getCookies()){
		if(cc.getName().equals("pname")){
			pname = cc.getValue();
			break;
		}
	}
	
	if(pname!=null){
%>
<%=pname %>님 안녕하세요 
<a href="logout.jsp">로그아웃</a>
<% } else { %>
<form action="logReg.jsp">
	id<input type="text" name="pid" />
	암호<input type="text" name="pw" />
	<input type="submit" value="로그인" />
</form>
<% } %>
</body>
</html>