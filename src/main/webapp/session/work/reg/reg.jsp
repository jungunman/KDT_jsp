<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	String pid = request.getParameter("pid");
	String pwd = request.getParameter("pwd");
	boolean in = false;
	
	
	Map<String,String> data = new HashMap<>();
	
	data.put("aa","111");
	data.put("bb","222");
	data.put("cc","333");
	data.put("dd","444");
	data.put("ee","555");
	
	if(data.containsKey(pid) && data.get(pid).equals(pwd)){
		request.getSession().setAttribute("user", pid);
		in=true;
	}
	
%>


<script>
	if(<%= in %>){
		alert("로그인 성공")
		location.href = "../login.jsp"
	}else{
		alert("로그인 실패");
		location.href = "../login.jsp"
	}

</script>