<%@page import="Main.BoardDao"%>
<%@page import="Main.Board"%>
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
	Board board = new Board();
	int bno = Integer.parseInt(request.getParameter("bno"));
	BoardDao boardDao = BoardDao.getinstance();
	int result = boardDao.boarddelete(bno);
	if(result == 1){
		response.sendRedirect("board.jsp");
	}
%>
</body>
</html>