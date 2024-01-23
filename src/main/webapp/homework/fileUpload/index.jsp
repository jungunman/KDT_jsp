<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
<style>

main>div{
	display:flex;
	justify-content: space-between;
}

 main>div>img{
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
		<jsp:include page="screens/home.jsp" />
		<div>
			<a href=""></a>
		</div>
	</main>
	
	
	<footer>
		<jsp:include page="include/footer.jsp" />
	</footer>
	
	
	
</body>
</html>