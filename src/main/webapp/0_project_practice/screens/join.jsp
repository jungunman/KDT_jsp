<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="join">
	<form action='<c:url value="/JoinSvt"/>'>
		<input type="text" name="id" placeholder="아이디" /> <br/>
		<input type="password" name="pwd" placeholder="비번" /> <br/>
		<input type="text" name="name" placeholder="이름" /> <br/>
		<input type="text" name="regident" placeholder="주민번호 앞자리" /> - <input type="text" name="regident" placeholder="주민번호 뒷자리" /> <br/>
		<input type="text" name="phoneNum" placeholder="휴대폰번호" /> <br/>
		<input type="text" name="houseNum" placeholder="전화번호" /> <br/>
		<input type="submit" value="가입" />
	</form>
</div>    
