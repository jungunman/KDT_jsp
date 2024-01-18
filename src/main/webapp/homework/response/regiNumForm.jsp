<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
    <section>
        <h1>본인 인증</h1>
        <form action="./checkRegiNum.jsp" met1hod="get">
            <input type="text" name="pname" placeholder="이름"/><br/>
            <div>
                <input type="text" name="regiNum" placeholder="주민등록번호 앞자리"/> - <input type="text" name="regiNum" placeholder="주민등록번호 뒷자리"/>
            </div>
            <input type="submit" value="인증"/>
        </form>
    </section>
</body>
</html>