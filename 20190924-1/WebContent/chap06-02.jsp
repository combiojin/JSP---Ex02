<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>페이지 이동 방식을 지정합니다.</h2>
이동방식을 GET방식으로 지정합니다. 파라미터 이름은 "move" 입니다.<br>
파라미터의 값은 각각 아래와 같이 지정합니다.
<hr>
리다이렉트 : "redirect"<br>
포워드 : "forward"<br>
인클루드 : "include"
<%
	String move = request.getParameter("move");
		
		if(move == null) {
				
		}else if (move.equals("redirect")) {
			response.sendRedirect("chap06-02PageMovingRedirect.jsp");
		}else if (move.equals("forward")) {
		pageContext.forward("chap06-02PageMovingForward.jsp");
		}else if (move.equals("include")){
		pageContext.include("chap06-02PageMovingInclude.jsp");
		}
		
%>
<hr>
<h2>chap06-02.jsp 페이지의 마지막 입니다.</h2>
</body>
</html>