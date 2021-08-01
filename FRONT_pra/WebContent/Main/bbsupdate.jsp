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
	String writer = (String)session.getAttribute("mid");
	board = boardDao.bview(bno);
%>
<form method="post" action=bbsupdatecontroller.jsp>
<table border="1">
	<tr>
		<td class="td">번호</td><td><input type="text" name="bno" value="<%=bno%>"></td>
	</tr>
	<tr>
		<td class="td">제목</td><td><input type="text" name="btitle" value="<%=board.getBtitle()%>"></td>
	</tr>
	<tr>
		<td class="td">작성자</td><td><input type="text" value="<%=writer %>" disabled="disabled"></td>
	</tr>
	<tr>
		<td colspan="2" class="td">내용</td>
	</tr>
	<tr>
		<td colspan="2">
			<textarea rows="20" cols="50" name="bcontents"><%=board.getBcontents()%></textarea>
		</td>
	</tr>
</table>	
<input type="submit" value="수정">
<a href="boardview.jsp?bno=<%=bno%>"><button>취소</button></a>
</form>
</body>
</html>