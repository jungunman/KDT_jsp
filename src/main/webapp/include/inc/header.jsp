<%@page import="basic_p.Menu"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Menu> headers = (ArrayList<Menu> )request.getAttribute("headers");
%> 
용준아 헤더다
<table width="100%">
	<tr align="center">
	<% for(Menu m : headers) {%>
		<td><a href="?cate=<%=m.cate %>&main=<%=m.main %>"><%=m.cateTitle %></a></td>
<%} %>
	</tr>
</table>	