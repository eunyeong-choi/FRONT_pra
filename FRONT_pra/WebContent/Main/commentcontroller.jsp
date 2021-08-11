<%@page import="Main.CommentDao"%>
<%@page import="Main.Comment"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	String ccomment = request.getParameter("ccomment");
	String cid = (String)session.getAttribute("mid");
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
	String cdate = sdf.format(date);
	
	//Comment comment = new Comment(cid,ccomment,cdate);
	CommentDao cdao = CommentDao.getinstance();
	//int result = cdao.commentadd(comment);
	//if(result == 1){
	//	response.sendRedirect("boardview.jsp");
	//}
	
%>
</body>
</html>