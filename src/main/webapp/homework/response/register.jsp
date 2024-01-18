<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String pname = request.getParameter("pname");
	boolean isLocal = Boolean.parseBoolean(request.getParameter("local"));
	boolean isAdult = Boolean.parseBoolean(request.getParameter("adult"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
<script src="./../../js/jquery-3.7.1.js"></script>
<script>
    $(()=>{
        
        if(<%=!isLocal%>){
        	$("input[name=phoneNumber]").after($(`<input type="text" name="nation" placeholder="국적 입력" />`));
        }

        if(<%=isAdult%>){
        	$("input[name=phoneNumber]").after($(`<input type="text" name="companyName" placeholder="직장 이름" />`));
        }else{
        	$("input[name=phoneNumber]").after($(`<div><input type="text" name="parentRegiNum" placeholder="부모님 주민번호 앞자리" /> - <input type="text" name="parentRegiNum" placeholder="부모님 주민번호 뒷자리" /></div>`));
        	$("input[name=phoneNumber]").after($(`<input type="text" name="schoolName" placeholder="학교 이름" />`));
        }

    })
</script>
</head>
<body>
    <section>
        <h1>가입 정보</h1>
        <form action="#">
            <input type="text" name="pname" value="<%=pname%>" disabled />
            <input type="text" name="phoneNumber" placeholder="휴대폰 번호( ' - ' 없이 입력 )" />
            <input type="submit" value="가입하기" />
        </form>
    </section>

</body>
</html>