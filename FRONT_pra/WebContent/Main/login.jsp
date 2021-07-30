<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form method="post" action="logincontroller.jsp">
<h3>로그인 페이지</h3>
<table border="1">
	<tr>
		<td>아이디</td><td><input type="text" name="mid"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="password" name="mpw"></td>
	</tr>
</table>
<input type="submit" value="로그인">
</form>
</body>
</html>