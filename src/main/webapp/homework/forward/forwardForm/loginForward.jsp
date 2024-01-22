<%@page import="homework_p.Cook"%>
<%@page import="homework_p.Forward"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	new Cook(response);
    	new Forward(request,response);
    %>
<h1>loginForward</h1>