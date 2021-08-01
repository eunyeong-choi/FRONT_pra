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
<form method="post" action="writecontroller.jsp">
<%
	String writer = (String)session.getAttribute("mid");
%>
<table border="1">
	<tr>
		<td class="td">제목</td><td><input type="text" name="btitle"></td>
	</tr>
	<tr>
		<td class="td">작성자</td><td><input type="text" value="<%=writer %>" disabled="disabled"></td>
	</tr>
	<tr>
		<td colspan="2" class="td">내용</td>
	</tr>
	<tr>
		<td colspan="2">
			<textarea rows="20" cols="50" name="bcontents"></textarea>
		</td>
	</tr>
</table>
<input type="submit" value="등록">
</form>
</body>
</html>