<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="join">
	<form action='<c:url value="/LoginSvt"/>'>
		<input type="text" name="id" placeholder="아이디" /> <br/>
		<input type="password" name="pwd" placeholder="비번" /> <br/>
		<input type="submit" value="로그인" />
	</form>
</div>    
