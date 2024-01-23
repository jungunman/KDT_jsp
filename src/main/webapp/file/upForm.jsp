<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upForm</title>
</head>
<body>
<h1>upForm</h1>
<form action="upReg.jsp" method="get" enctype="application/x-www-form-urlencoded">
	<table border="">
		<tr>
			<td>pid</td>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<td>ff</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="가입1" />
			</td>
		</tr>
	</table>
</form>

<form action="upReg.jsp" method="post" enctype="application/x-www-form-urlencoded">
	<table border="">
		<tr>
			<td>pid</td>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<td>ff</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입2" /></td>
		</tr>
	</table>
</form>


<form action="upReg.jsp" method="get" enctype="multipart/form-data">
	<table border="">
		<tr>
			<td>pid</td>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<td>ff</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입3" /></td>
		</tr>
	</table>
</form>


<form action="/jspKDT/UpRegSvt" method="post" enctype="multipart/form-data">
	<table border="">
		<tr>
			<td>pid</td>
			<td><input type="text" name="pid" /></td>
		</tr>
		<tr>
			<td>ff</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입4" /></td>
		</tr>
	</table>
</form>
</body>
</html>