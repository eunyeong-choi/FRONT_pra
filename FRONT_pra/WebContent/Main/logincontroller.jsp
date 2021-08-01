<%@page import="Main.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String mid = request.getParameter("mid");
	String mpw = request.getParameter("mpw");
	
	MemberDao mdao = MemberDao.getinstance();
	int result = mdao.login(mid, mpw);
	if( result == 1){
		response.sendRedirect("main.jsp");
		session.setAttribute("mid",mid);
	}

%>
</body>
</html>