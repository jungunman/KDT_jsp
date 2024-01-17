<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request</title>
</head>
<body>
<h1>Request</h1>
<%
	HttpServletRequest hsr = request;
	HttpServletRequest hsr2 = (HttpServletRequest)pageContext.getRequest();
	out.println(request+"</br>");
	out.println(hsr+"</br>");
	out.println(request.getRemoteAddr()+"</br>"); //아이피 주소
	out.println(request.getRemoteHost()+"</br>"); //너 이름이 뭐니?
	out.println(request.getRemoteUser()+"</br>"); //클라이언트 이름이 어떻게 돼?
	out.println(request.getProtocol()+"</br>"); // http/1.1 or https 
	out.println(request.getServerName()+"</br>"); // 서버 이름
	out.println(request.getMethod()+"</br>"); // ==> Get, Post 판별
	out.println(request.getContentType()+"</br>"); //
	out.println(request.getContentLength()+"</br>"); //
	out.println(request.getRequestURL()+"</br>"); //
	out.println(request.getRequestURI()+"</br>"); //
	out.println(request.getContextPath()+"</br>"); // 이걸로 잘라서 목적지 잡음!
	out.println(request.getCharacterEncoding()+"</br>"); //
	out.println(request.getHeader("referer")+"</br>"); // 이전 페이지 경로를 보여줌! 직접 URL 치면 null이 나오고, 이것으로 url 접근 막을 수 있음 단, 
	out.println(request.getHeader("User-Agent")+"</br>"); // 클라이언트가 접속한 브라우저 정보를 다 끌어옴
														
	Enumeration en = request.getHeaderNames();
	while(en.hasMoreElements()){
		out.println(en.nextElement()+"</br>"); //	
	}
	
	en = request.getParameterNames();
	out.println("request.getParameterNames() -------------<br/>");
	while(en.hasMoreElements()){
		out.println(en.nextElement()+ "<br/>");
	}
	//request/request.jsp?no=1234&pname=펜이없어&marriage=true&hobby=movie&hobby=cook
	//http://localhost:8080/jspProj/request/request.jsp?no=1234&pname=%ED%8E%9C%EC%9D%B4%EC%97%86%EC%96%B4&marriage=true&hobby=movie&hobby=cook
	//no=1234&pname=%ED%8E%9C%EC%9D%B4%EC%97%86%EC%96%B4&marriage=true&hobby=movie&hobby=cook
	//%ED%8E%9C   %EC%9D%B4   %EC%97%86  %EC%96%B4  UTF-8
	//    펜          이           없          어
	String encodingURLParameter =URLEncoder.encode("펜이없어", "UTF-8");
	out.println(encodingURLParameter+"<br/>");
	String decodingUrlParameter = URLDecoder.decode(encodingURLParameter, "UTF-8");
	out.println(decodingUrlParameter+"<br/>");
	out.println(request.getParameter("no")+"<br/>");
	out.println(request.getParameter("pname")+"<br/>");
	out.println(request.getParameter("marriged")+"<br/>");
	out.println(request.getParameter("hobby")+"<br/>");
	out.println(request.getParameter("no")+100+"<br/>");
	
	//중복되는 parameter 네임을 가지고 있느 것들은 parameterValues로 가져올 수 있음
	String [] hobbys = request.getParameterValues("hobby");
	for(String hobby : hobbys){
		out.println(hobby+"<br/>");
	}
	
%>
</body>
</html>