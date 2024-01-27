<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	int result = Integer.parseInt(request.getParameter("result"));
%>

<script>
	if(<%=result%>){
		alert("축하합니다, 회원가입이 완료되었습니다.");
		location.href="/jspKDT/0_project_practice/main.jsp";
	}else{
		alert("회원가입에 실패하였습니다. 입력하신 정보를 확인해 주세요.");
		location.href="/jspKDT/0_project_practice/screens/join.jsp";		
	}

</script>