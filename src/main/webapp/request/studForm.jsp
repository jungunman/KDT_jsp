<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>
</head>
<body>
<h1>Student Parameter Practice</h1>
<form action="studReg.jsp" method="get">
	<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="pname" /></td>
		</tr>
		<tr>
			<td>국어</td>
			<td><input type="text" name="kor" /></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><input type="text" name="eng" /></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><input type="text" name="mat" /></td>
		</tr>
		<tr>
			<td>특기</td>
			<td><input type="text" name="spec" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송!" />
			</td>
		</tr>
	</table>
</form>
</body>
</html>