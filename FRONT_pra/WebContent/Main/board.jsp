<%@page import="Main.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Main.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>게시판</h3>
<%
	String writer = (String)session.getAttribute("mid");
	if(writer != null){
		System.out.println(writer);
%>
<a href="boardwrite.jsp"><button>글쓰기</button></a>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>날짜</th>
	<tr>
	<%
		BoardDao dao = BoardDao.getinstance();
		ArrayList<Board>boards = dao.bbslist();	
		
		for(Board board : boards){
	%>
	<tr>
		<td><%=board.getBno() %></td>
		<td><a href="boardview.jsp?bno=<%=board.getBno()%>"><%=board.getBtitle() %></a></td>
		<td><%=board.getBwriter()%></td>
		<td><%=board.getBdate() %></td>
	</tr>
	<% } %>
</table>
<% }else{ %>
로그인 먼저 진행해주세요.
<a href="login.jsp"><button>로그인</button></a>
<% } %>
</body>
</html>