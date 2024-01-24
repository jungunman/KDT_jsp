<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

</script>
</head>
<body>
	<form action="coffee.jsp">
		<div class="package">
			<input type="checkbox" name="coffee" value="아메리카노"/>아메리카노
			<input type="checkbox" name="coffee" value="아시아노"/>아시아노
			<input type="checkbox" name="coffee" value="아프리카노"/>아프리카노
			<br />
			<input type="number" name="cnt" />
		</div>
		<div>
			<input type="submit" value="배달의 민족 주문!" />
		</div>
		
	</form>
</body>
</html>