
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	InputStream is = request.getInputStream();

	int data = -1;
	
	while((data=is.read()) != -1){
		System.out.print((char)data);
	}


	is.close();
%>    
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upReg</title>
</head>
<body>
	
	<h1>upReg</h1>
	
	<table border="1">
		<tr>
			<td>pid</td>
			<td><%=request.getParameter("pid") %></td>
		</tr>
		<tr>
			<td>ff</td>
			<td><%=request.getParameter("ff") %></td>
		</tr>
	</table>
</body>
</html>