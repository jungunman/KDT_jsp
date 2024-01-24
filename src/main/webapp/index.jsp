<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네비게이터 페이지</title>
</head>
<body>
	<h1>네비게이터 ( 수업자료 )</h1>
	<a href="basic/yearCalender.jsp">일년치 달력</a>
	
	<h1>Requset</h1>
	<a href="request/request.jsp?no=1234&pname=펜이없어&marriged=true&hobby=programming&hobby=fight">Request Parameter</a>
	<a href="request/studForm.jsp">Student Form - Parameter 연습</a>
	<a href="request/examForm.jsp">examForm - 여러 명의 Parameter 연습</a>
	
	<h1>Response</h1>
	<a href="response/a.jsp">response/redirection - a </a>
	<a href="response/joinForm.jsp">|| redirection - joinForm.jsp</a>
	
	<h1>implicit</h1>
	<a href="implicit/out.jsp">out</a>
	<a href="implicit/config.jsp">config</a>
	<a href="implicit/pageContext.jsp">pageContext</a>
	<a href="implicit/page.jsp">page</a>
	
	<h1>application</h1>
	<a href="application/info.jsp">application</a>
	<a href="application/ioCalculation.jsp">ioCalculation</a>
	<a href="application/set1.jsp">set1</a>
	<a href="application/get.jsp">get</a>
	<a href="application/set2.jsp">set2</a>
	<a href="application/loginMain.jsp">login</a>
	
	<h1>Exception</h1>
	<a href="exception/excep1.jsp">excep1</a>
	<a href="exception/excep2.jsp">excep2</a>
	<a href="exception/excep3.jsp">excep3</a>
	<a href="exception/excep4.jsp">excep4</a>
	
	<h1>Include</h1>
	<a href="include/big1.jsp?pid=asdf&age=34&marriage=true">big1</a>
	<a href="include/sub/bb.jsp">bb</a>
	<a href="include/template.jsp?cate=info">template</a>
	<a href="include/directive/big.jsp?pid=ABCD&age=30&marriage=true">directive</a>
	<a href="include/directive/sub_a.jsp">sub_a</a>
	<h1>Forward</h1>
	<a href="forward/a.jsp?pid=woong&pwd=1234">a</a>
	<a href="forward/info.jsp">info</a>
	
	<h1>Cookie</h1>
	<a href="cookie/make.jsp">make</a>
	<a href="cookie/view.jsp">view</a>
	<a href="cookie/modify.jsp">modify</a>
	<a href="cookie/remove.jsp">remove</a>
	
	<h1>Session</h1>
	<a href="session/info.jsp">info</a>
	<a href="session/set1.jsp">set1</a>
	<a href="session/view.jsp">view</a>
	<a href="session/set2.jsp">set2</a>
	<a href="session/delete1.jsp">delete1</a>
	<a href="session/delete2.jsp">delete2</a> <br />
	<a href="session/work/login.jsp">login</a>
	

	<h1>file</h1>
	<a href="file/upForm.jsp">upform</a>
	<a href="file/multiForm.jsp">multiForm</a>
	<a href="file/download.jsp">download</a>
	<a href="file/fileList.jsp">fileList</a>

	<h1>el</h1>
	<a href="el/exam.jsp?pid=asd&kor=78&eng=79&mat=88">exam</a>
	<a href="el/var.jsp?pid=asd&kor=78&eng=79&mat=88">var</a>
	<a href="el/var2.jsp">var2</a>



	<br/>
	<br/>
	<h1>=================================================================</h1>
	<h1>My Homework</h1>
	<h4><a href="homework/response/regiNumForm.jsp">response [sendRedirect] - 주민등록번호 입력 시 성인, 미성년자, 외국인</a></h4>
	<h4><a href="homework/application/loginMain.jsp"> 어플리케이션으로 로그인 정보 유지하기</a></h4>
	<h4><a href="homework/include/index.jsp">Include를 사용하여 홈페이지 구성해보기</a></h4>
	<h4><a href="homework/forward/index.jsp">Forward - Cookie Login 구현</a></h4>
	<h4><a href="homework/fileUpload/index.jsp">FileUpload로 회원 가입 구현하기 - 파일 업로드 </a></h4>
	<h4><a href="homework/session/index.jsp">FileUpload로 회원 가입 구현하기 - 세션</a></h4>
	<h4><a href="homework/el/coffee.jsp">EL TAG - Coffee</a></h4>
	
</body>
</html>