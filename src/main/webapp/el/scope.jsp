<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope</title>
</head>
<body>
<h1>scope</h1>
pid : <%=request.getParameter("pid") %> , ${param.pid }<br/>
age : <%=request.getParameter("age") %> , ${param.age } , ${param.age+100 }<br/>
marriage : <%=request.getParameter("marriage") %> , ${param.marriage } , ${!param.marriage }<br/>
<%
	pageContext.setAttribute("aa", 100);
	pageContext.setAttribute("bb", 200);
	pageContext.setAttribute("cc", 300);
	pageContext.setAttribute("dd", 400);
	
	pageContext.setAttribute("qqq", 10000);
	    request.setAttribute("qqq", 20000);
	    session.setAttribute("qqq", 30000);
	application.setAttribute("qqq", 40000);
	
                                     
%>
aa : <%=pageContext.getAttribute("aa") %>, ${aa }, ${aa+1 } <br/>
bb : <%=pageContext.getAttribute("bb") %>, ${bb }, ${bb+1 }  <br/>
cc : <%=pageContext.getAttribute("cc") %>, ${cc }, ${cc+1 }   <br/>
dd : <%=pageContext.getAttribute("dd") %>, ${dd }, ${dd+1 }   <br/>
<hr />
qqq : ${qqq } <br/><!-- 중첩될 경우 가장 협의적인 scope의 attribute 호출 -->
pageContext : ${pageScope.qqq } <br/>
request : ${requestScope.qqq } <br/>
session : ${sessionScope.qqq } <br/>
application : ${applicationScope.qqq } <br/>
qqq : ${qqq } <br/>
<% pageContext.removeAttribute("qqq"); %>
qqq : ${qqq } <br/>
<% request.removeAttribute("qqq"); %>
qqq : ${qqq } <br/>
<% session.removeAttribute("qqq"); %>
qqq : ${qqq } <br/>
<hr />

\${15+7 } : ${15+7 }<br/>
\${15-7 } : ${15-7 }<br/>
\${15*7 } : ${15*7 }<br/>
\${15/7 } : ${15/7 }<br/>
\${15%7 } : ${15%7 }<br/>
<hr />
\${15>7 } : ${15>7 }<br/>
\${15>=7 } : ${15>=7 }<br/>
\${15<=7 } : ${15<=7 }<br/>
\${15<7 } : ${15<7 }<br/>
\${15==7 } : ${15==7 }<br/>
\${15!=7 } : ${15!=7 }<br/>
\${"장동건"> "장동건" } : ${"장동건"> "장동건" }<br/>
\${"장동건">="장동건" } : ${"장동건">="장동건" }<br/>
\${"장동건"<="장동건" } : ${"장동건"<="장동건" }<br/>
\${"장동건"< "장동건" } : ${"장동건"< "장동건" }<br/>
\${"장동건"=="장동건" } : ${"장동건"=="장동건" }<br/>
\${"장동건"!="장동건" } : ${"장동건"!="장동건" }<br/>
<hr />
\${true  && true  } : ${true  && true  } <br/>
\${true  && false } : ${true  && false } <br/>
\${false && false } : ${false && false  } <br/>
<br/>
\${true  || true  } : ${true  || true  } <br/>
\${true  || false } : ${true  || false } <br/>
\${false || false } : ${false || false } <br/>
<br/>
<%-- xor 없음 
\${true  ^ true  } : ${true  ^ true  } <br/>
\${true  ^ false } : ${true  ^ false } <br/>
\${false ^ false } : ${false ^ false } <br/> 
--%>
<br/>
\${true ? "참이지롱" :"거짓부렁 " } : ${true ? "참이지롱" :"거짓부렁 " }<br/>
\${false ? "참이지롱" :"거짓부렁 " } : ${false ? "참이지롱" :"거짓부렁 " }<br/>
</body>
</html>