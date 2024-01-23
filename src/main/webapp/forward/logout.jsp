<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pname = null;
	for(Cookie cc : request.getCookies()){
		if(cc.getName().equals("pname")){
			pname = cc.getValue();
			break;
		}
	}
	
	Cookie cc = new Cookie("pname","");
	cc.setMaxAge(0);
	response.addCookie(cc);
%>
    
<script>
alert("<%=pname%>님 로그아웃되었습니다.")
location.href="info.jsp"
</script>