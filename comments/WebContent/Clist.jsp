<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<table>
<tr><th>번호</th><th>이름</th><th>소감</th><th>작성일</th></tr>
<a href="CwriteForm.jsp"> 작성하러 가기 </a>
<%
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
	String user = "scott";
	String pw = "tiger";
	String sql = "select * from comments order by seq desc";
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection(url, user, pw);
	pstmt = con.prepareStatement(sql);
	rs = pstmt.executeQuery();

	
	while(rs.next()) {
		int seq = rs.getInt(1);
		String name = rs.getString(2);
		String pass = rs.getString(3);
		String content = rs.getString(4);
		String rdate = rs.getString(5);
	%>
		<tr><td><%=seq %></td>
			<td><%=name %></td>
			<td><%=content %></td>
			<td><%=rdate %></td>
			<td>
				<input type="button" value="삭제" onclick="location.href='delete.jsp?seq=<%=seq%>'"/>
			</td>
		</tr>
		
			
	<%
	}
	rs.close();
	pstmt.close();
	con.close();
%>



</table>
</body>
</html>