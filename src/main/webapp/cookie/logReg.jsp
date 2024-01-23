<%@page import="basic_p.Member"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HashMap<String, Member> mems = new HashMap();
	mems.put("aa",new Member("aa","1111","운만"));
	mems.put("bb",new Member("bb","2222","운천"));
	mems.put("cc",new Member("cc","3333","운백"));
	mems.put("dd",new Member("dd","4444","온십"));
	mems.put("ee",new Member("ee","5555","운일"));
	String msg = "로그인실패";
	String pid = request.getParameter("pid");
	
	if(mems.containsKey(pid)){
		Member mm = mems.get(pid);
		if(mm.chk(pid, request.getParameter("pw"))){
	
			response.addCookie(new Cookie("pname", mm.pname));
			msg = mm.pname+"님 로그인 성공";
		}
		
		
	}

%>
    
<script>
alert("<%=msg%>")
location.href="logMain.jsp"
</script>
