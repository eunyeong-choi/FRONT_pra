<%@page import="Main.CommentDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Main.Comment"%>
<%@page import="Main.Board"%>
<%@page import="Main.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
.td{
	text-align: center;
}
</style>
</head>
<body>
<%
	int bno = Integer.parseInt(request.getParameter("bno"));
	BoardDao boardDao = BoardDao.getinstance();
	String writer = (String)session.getAttribute("mid");
	Board board = boardDao.bview(bno);
%>
<a href="bbsupdate.jsp?bno=<%=bno%>"><button>수정</button></a>
<a href="bbsdelete.jsp?bno=<%=bno%>"><button>삭제</button></a>
<table border="1">
	<tr>
		<td class="td">번호</td><td><input type="text" name="bno" value="<%=board.getBno()%>" readonly="readonly"></td>
	</tr>
	<tr>
		<td class="td">제목</td><td><input type="text" name="btitle" value="<%=board.getBtitle()%>" readonly="readonly"></td>
	</tr>
	<tr>
		<td class="td">작성자</td><td><input type="text" value="<%=writer %>" disabled="disabled"></td>
	</tr>
	<tr>
		<td colspan="2" class="td">내용</td>
	</tr>
	<tr>
		<td colspan="2">
			<textarea rows="20" cols="50" name="bcontents" readonly="readonly"><%=board.getBcontents()%></textarea>
		</td>
	</tr>
</table>
<hr>
<h5>댓글</h5>
<table border="1">
	<tr>
		<th>작성자</th>
		<th>내용</th>
		<th>날짜</th>
	</tr>
	<%
		CommentDao cdao = CommentDao.getinstance();
		ArrayList<Comment> comments = cdao.clist(bno);
		if(comments != null){
		for(Comment comment : comments){
	%>
	<tr>
		<td><%=comment.getCid() %></td>
		<td><%=comment.getCcomment() %></td>
		<td><%=comment.getCdate() %></td>
	</tr>	
	<% } 
		}
	%>
</table>
<a href="commentwrite.jsp"><button>댓글 등록</button></a>
</body>
</html>