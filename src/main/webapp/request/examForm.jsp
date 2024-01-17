<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>examForm</title>
</head>
<body>
<h1>examForm</h1>
<form action="examReg.jsp" method="post">
	<table border="">
		<tr>
			<td>이름</td><td>국어</td><td>영어</td><td>수학</td><td>특기</td>
		</tr>
<% for(int i = 0; i<5 ; i++) {
	int [] plus = {5,7,1,5,2};
	%>		
		<tr>
			<td><input type="text" name="pname" value="킹<%=i%>"/></td>
			<td><input type="text" name="kor" value="<%=i+plus[i]%>9"/></td>
			<td><input type="text" name="eng" value="<%=i+plus[i]%>9"/></td>
			<td><input type="text" name="mat" value="<%=i+plus[i]%>9"/></td>
			<td><input type="text" name="spec" value="<%=i+plus[i]%>9"/></td>
		</tr>
<% } %>		
		<tr>
			<td colspan="5" align="center">
				<input type="submit" value="계산" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>