<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>계산</h2>
선택한상품 목록
<hr>
<%
	ArrayList list = (ArrayList).session.getAttribute("productlist");
	if(list==null){
	}
	else {
			for(Object productname:list) {
				out.println(productname+"<br>");
			}
	}
	%>
</center>
</body>
</html>