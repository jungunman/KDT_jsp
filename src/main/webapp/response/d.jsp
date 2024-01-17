<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DDDDDDDDDDDD</title>
</head>
<body>
<script>
	alert("D의 의지");
</script>
<h1>D</h1>


<% 
	response.sendRedirect("b.jsp");
	//response.sendRedirect("c.jsp"); JSP 태그가 자바스크립트 태그보다 우선됨
	//그 이유는 서버에서 먼저 JSP를 실행 후에 다 로드가 되고 자바스크립트가 실행되는데
	//톰캣에게 전달할 때 이미 JSP를 먼저 읽어들여서 그렇다

%>

</body>
</html>