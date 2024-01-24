
<%@page import="java.util.regex.Pattern"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> File List</title>
<style>

	img{
		width: 100px;
	}

</style>
</head>
<body>
<h1> File List </h1>

<%


	File [] files = new File(request.getServletContext().getRealPath("fff")).listFiles();

	for(File file : files){
		String extension = file.getName().substring(file.getName().lastIndexOf(".")+1); 
		
		if(Pattern.matches("^(jpeg|jpg|png|gif|pdf|bmp)$", extension.toLowerCase())){		
		%>
			<img src="<%=request.getContextPath()%>/fff/<%=file.getName() %>" alt="" />
		<%}
		else{
			if(file.isFile()){
		%>
			<a href="/jspKDT/DownloadSvt?fileName=<%=file.getName()%>"><%=file.getName()%></a>
		<%}
		}
	}%>
	
	</body>
</html>