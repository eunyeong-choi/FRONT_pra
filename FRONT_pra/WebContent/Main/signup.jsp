<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form method="post" action="signupcontroller.jsp">
<h3>회원가입 페이지</h3>
<table border = "1">
	<tr>
		<td>아이디</td><td><input type="text" name="mid"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="password" name="mpw"></td>
	</tr>
	<tr>
		<td>비밀번호 확인</td><td><input type="password"></td>
	</tr>
	<tr>
		<td>이름</td><td><input type="text" name="mname"></td>
	</tr>
	<tr>
		<td>이메일</td><td><input type="email" name="memail"></td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>
			<select name="phone1">
				<option>010</option>
				<option>02</option>
				<option>032</option>
			</select> -
			<input type="text" name="phone2"> -
			<input type="text" name="phone3">
		</td>
	</tr>
</table>
<input type="submit" value="회원가입">
</form>
</body>
</html>