<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info</title>
</head>
<body>
<h1>info</h1>
<%=application %><br/>
<%=pageContext.getServletContext() %><br/>
<%=application.getServerInfo() %><br/>
<%=application.getMajorVersion() %><br/>
<%=application.getMinorVersion() %><br/>
<!-- 프로젝트 위기 기준(webapp 이하), 파일이 존재하지 않을 경우 null -->
<%=application.getRealPath("fff/sa.txt") %><br/>
<%=application.getMimeType("fff/sa.txt") %><br/>
<%
	URL url = application.getResource("fff/sa.txt");
%>
<%=url %><br/>
<%=url.getFile() %><br/>
<%
	InputStream is = url.openStream();
	byte [] buf = new byte[is.available()];
	is.read(buf);

	String ttt = new String(buf);
	is.close();
%>
<%=ttt %><br/>
<hr />
<%
	File ff = new File(application.getRealPath("fff") );

	File [] arr = ff.listFiles();
	
	for(File file : arr){
%>
	<%=file.getName() %><br/>
<%} %>
</body>
</html>