<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<style>
	*{
		margin:0;
		padding:0;
	}
	
	html,body{
		width:100%;
	}
	
	main{
		display: flex;
		justify-content: center;
	}
	
	main>div{
		display:flex;
		justify-content: space-between;
		width:80%;
	}
	
	main>aside{
		width:20%;
		height:100px;
		display:flex;
		align-content:center;
		justify-content:center;
		border: 1px solid #000;
	}
	
	
	main>div>img{
		width: 300px;
		object-fit :cover;
	}
	
	main>aside>a{
		width:100%;
		text-align:center;
		text-decoration: none;
		color: #000;
		font-size: 30px;
		padding:20px;
		background: #3f3;
		color:#fff;
	}
</style>
</head>
<body>

	<header>
		<jsp:include page="include/header.jsp"></jsp:include>
	</header>
	<main>
		<div>
			<img src="../../pictures/1.jpg" alt="" />
			<img src="../../pictures/2.jpg" alt="" />
			<img src="../../pictures/3.jpg" alt="" />
			<img src="../../pictures/4.jpg" alt="" />
		</div>
		<aside>
			<jsp:include page="screens/logBtn.jsp" />
		</aside>
	</main>

</html>