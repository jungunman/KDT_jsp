<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  errorPage="../error/errPP.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>excep1</title>
</head>
<body>
<h1>excep1</h1>

<%
	try{
	
		int a = 10/0;
		
		out.println("정상실행 : "+a);
		
	}catch(Exception e){
		
		out.println("에러지롱 : "+e.getMessage());
	}
	

%>

</body>
</html>