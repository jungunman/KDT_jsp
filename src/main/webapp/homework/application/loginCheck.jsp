<%@page import="java.io.InputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String pid = request.getParameter("pid");
	String pw = request.getParameter("pw");
	String path = "homework/application/userInfo.txt";
	boolean success = false; 
	
	URL url = application.getResource(path);
	InputStream is = url.openStream();
	BufferedReader br = new BufferedReader(new InputStreamReader(is));
	
	String line;
	
	while((line = br.readLine()) != null){
		
		String [] infos = line.split("_");
		
		if(infos[0].equals(pid) && infos[1].equals(pw)){
			
			application.setAttribute("pid", infos[0]);
			application.setAttribute("pw", infos[1]);
			application.setAttribute("pname", infos[2]);
			success = true;
		}
	}
	
	br.close();
	is.close();
	
%><html>
<head>
<meta charset="UTF-8">
<title>check</title>
</head>
<body>
<script>
	if(<%=success%>){
		alert("반갑습니다 <%= application.getAttribute("pname")%> 님");
	}else{
		alert("아이디와 비밀번호를 확인해 주세요.");
	}
	location.href="loginMain.jsp"
</script>
</body>
</html>