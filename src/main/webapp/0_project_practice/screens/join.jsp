<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입 페이지</h1>
	<div class="join">
	<form action='<c:url value="/JoinSvt"/>'>
		<input type="text" name="id" placeholder="아이디" /> <br/>
		<input type="password" name="pwd" placeholder="비번" /> <br/>
		<input type="text" name="nickName" placeholder="닉네임" /> <br/>
		<input type="text" name="regident" placeholder="주민번호 앞자리" /> - <input type="text" name="regident" placeholder="주민번호 뒷자리" /> <br/>
		<input type="text" name="phoneNum" placeholder="휴대폰번호" /> <br/>
		<input type="text" name="email" placeholder="이메일" /> <br/>
		<input type="submit" value="가입" />
	</form>
</div>    
</body>
</html>