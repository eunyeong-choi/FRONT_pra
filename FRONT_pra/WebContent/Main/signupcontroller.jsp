<%@page import="Main.MemberDao"%>
<%@page import="Main.Member"%>
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
	String memail = request.getParameter("memail");
	String mname = request.getParameter("mname");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String mphone = phone1 + phone2 + phone3;
	
	Member member = new Member(mid, mpw, memail, mphone, mname);
	MemberDao mdao = MemberDao.getinstance();
	int result = mdao.signup(member);
	if(result == 1){
		response.sendRedirect("login.jsp");
	}else{
		response.sendRedirect("main.jsp");
	}
%>
</body>
</html>