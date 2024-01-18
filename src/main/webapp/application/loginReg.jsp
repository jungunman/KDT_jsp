<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginReg.jsp</title>
</head>
<body>
<h1>loginReg.jsp</h1>
<%
	String pid = request.getParameter("pid");
	String pw = request.getParameter("pw");

	String msg = "로그인 실패";
	if(pid.equals("aaa") && pw.equals("1234")){
		msg=pid+"님 로그인 성공";
		application.setAttribute("pid", pid);
	}
%>
<script>
	alert("<%=msg%>")
	location.href="loginMain.jsp"
</script>

</body>
</html>