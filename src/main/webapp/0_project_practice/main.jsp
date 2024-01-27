<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대에충 기능 넣어보려고 만든 메인</title>
</head>
<body>
	<header>
		<h1>로고 자리</h1>
		<nav>
			<ul>
				<li>연습1</li>
				<li>연습2</li>
				<li>연습3</li>
				<li>연습4</li>
				<li>연습5</li>
			</ul>
		</nav>
	</header>
	<main>
		<jsp:include page="screens/join.jsp" />
	</main>
	<aside>
		<jsp:include page="components/login.jsp" />
	</aside>
	<footer>
		<h2>Footer</h2>
		<p>발바닥</p>
	</footer>
</body>
</html>