<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	String name = request.getParameter("id");
	Date date = new Date();
	SimpleDateFormat today = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
	application.log(today.format(date) + ": [" + name + "] 로그인");
%>
<h2>[<%= name %>]님 접속을 환영합니다.</h2>
<h2>접속하신 날짜 및 시간은 <%=today.format(date)%> 입니다.</h2>
</body>
</html>