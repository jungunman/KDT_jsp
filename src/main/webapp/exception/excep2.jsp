<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="../error/errPP.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>excep2</title>
</head>
<body>
<h1>excep2</h1>

<%

	
	int a = 10/0;
	
	out.println("정상실행 : "+a);
		
	

%>

</body>
</html>