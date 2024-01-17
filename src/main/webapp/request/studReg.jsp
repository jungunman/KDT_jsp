<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int [] jum = {
			Integer.parseInt(request.getParameter("kor")),
			Integer.parseInt(request.getParameter("eng")),
			Integer.parseInt(request.getParameter("mat")),
			Integer.parseInt(request.getParameter("spec"))
	};

	int tot = 0;
	
	for(int j : jum){
		tot+=j;
	}
	
	int avg = tot/jum.length;
	

%>
<html>
<head>
<meta charset="UTF-8">
<title>Student Reg</title>
</head>
<body>
<h1>Student Reg Parameter Practice</h1>
<form action="studReg.jsp">
	<table>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("pname")%></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><%=request.getParameter("kor")%></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><%=request.getParameter("eng")%></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><%=request.getParameter("mat")%></td>
		</tr>
		<tr>
			<td>특기</td>
			<td><%=request.getParameter("spec")%></td>
		</tr>
		<tr>
			<td>총점</td>
			<td><%=tot%></td>
		</tr>
		<tr>
			<td>평균</td>
			<td><%=avg%></td>
		</tr>
		
	</table>
</form>
</body>
</html>