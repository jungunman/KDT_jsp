<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
	String url = "screens/home.jsp";

	if(session.getAttribute("userInfo") != null){
		url =(String)session.getAttribute("url");
	}

%>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style type="text/css">
main>.imgs{
	display:flex;
	justify-content: space-between;
}

 main>.imgs>img{
 	width:300px;
 	object-fit:cover;
 }
</style>
</head>
<body>
	
	<header>
		<jsp:include page="include/header.jsp" />
	</header>
	
	<main>
		<jsp:include page="<%=url %>" />
	</main>
	
	
	<footer>
		<jsp:include page="include/footer.jsp" />
	</footer>
	
	
	
</body>
</html>