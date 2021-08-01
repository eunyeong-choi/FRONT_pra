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
	String writer = (String)session.getAttribute("mid");
%>
<table border="1">
	<tr>
		<td class="td">작성자</td>
		<td style="width : 200px;"><input type="text" name="cid" value="<%=writer%>" disabled="disabled"></td>
	</tr>
	<tr>
		<td colspan="2" class="td">내용</td>
	</tr>
	<tr>		
		<td colspan="2">
			<textarea rows="20" cols="50" name="ccomment"></textarea>
		</td>
	</tr>
</table>
<a href="commentcontroller.jsp"><button>등록</button></a>
</body>
</html>