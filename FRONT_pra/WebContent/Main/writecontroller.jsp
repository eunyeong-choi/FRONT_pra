<%@page import="Main.Board"%>
<%@page import="Main.BoardDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
	String btitle = request.getParameter("btitle");
	String bwriter = (String)session.getAttribute("mid");
	String bcontents = request.getParameter("bcontents");
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
	String bdate = sdf.format(date);
	
	Board board = new Board(btitle,bwriter,bdate,bcontents);
	BoardDao dao = BoardDao.getinstance();
	//dao.boardadd(board);
	int result = dao.boardadd(board);
	if(result == 1){
		response.sendRedirect("board.jsp");
	}
%>
</body>
</html>