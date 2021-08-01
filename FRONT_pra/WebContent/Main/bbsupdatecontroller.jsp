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
	request.setCharacterEncoding("utf-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	String btitle = request.getParameter("btitle");
	String bcontents = request.getParameter("bcontents");
	Board board =  new Board(btitle,bcontents);
	BoardDao dao = BoardDao.getinstance();
	int result = dao.boardupdate(bno, board);
	if(result == 1){
		response.sendRedirect("board.jsp");
	}
	
%>
</body>
</html>