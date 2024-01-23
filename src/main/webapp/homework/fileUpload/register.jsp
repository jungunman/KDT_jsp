<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<header>
		<jsp:include page="include/header.jsp" />
	</header>

	<main>
		<form action="/jspKDT/FileUploadSvt" method="post" enctype="multipart/form-data">
			<input type="text" name="pid" placeholder="아이디"><br/>
			<input type="text" name="pwd" placeholder="비밀번호"><br/>
			<input type="text" name="pname" placeholder="이름"><br/>
			<input type="file" name="picture" /><br/>		
			<input type="file" name="resume" /><br/>		
			<input type="submit" value="가입하기" />		
		</form>
	</main>

	<footer>
		<jsp:include page="include/footer.jsp" />
	</footer>


</body>
</html>