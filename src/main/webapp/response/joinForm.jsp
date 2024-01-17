<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join-Form</title>
</head>
<body>
	<h1>Join Form</h1>
	<form action="./joinReg.jsp">
		이름<input type="text"  name="pname" /><br/>
		관심분야<input type="radio" name="kind" value="game" />게임
		<input type="radio" name="kind" value="sing"/>노래
		<input type="radio" name="kind"  value="coding"/>코딩
		<br/>
		<input type="submit" value="전송" />
	</form>
</body>
</html>