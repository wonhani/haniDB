<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css" media="screen" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소록:수정화면</title>
</head>
<body>
<div align="center">
<h2>주소록:수정화면</h2>
<hr>
[<a href=addrbook_list.jsp>주소록 목록으로</a>]<p>
<form name=form1 method=post action=addrbook_control.jsp>
<input type=hidden name="action" value="update">

<table border=1>
	<tr>
		<th>이름</th>
		<td><input type="text" name="ab_name" value="홍길동"></td>
	</tr>
	
	<tr>
		<th>email</th>
		<td><input type="text" name="ab_email" value="hgd@hh.com"></td>
	</tr>
	
	<tr>
		<th>전화번호</th>
		<td><input type="text" name="ab_tel" value="010-123-1234"></td>
	</tr>
	
	<tr>
		<th>생 일</th>
		<td><input type="text" name="ab_birth" value="1995-10-02"></td>
	</tr>
	
	<tr>
		<th>회 사</th>
		<td><input type="text" name="ab_comdept" value="가천대학교"></td>
	</tr>
	
	<tr>
		<th>메 모</th>
		<td><input type="text" name="ab_memo" value="IT대학"></td>
	</tr>
	<tr>
		<td colspan=2 align=center>
			<input type=submit value="저장">
			<input type=reset value="취소">
			<input type=button value="삭제" onClick="delcheck()">
		</td>
	</tr>	
</table>
</form>
</div>
</body>
</html>