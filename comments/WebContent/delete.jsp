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

<%
		Connection con = null;
		PreparedStatement pstmt = null;
		String url = "jdbc:oracle:thin:@localhost:1521:ORCL";
		String user = "scott";
		String pw = "tiger";
		
		String seq = request.getParameter("seq");
		try{
			con = DriverManager.getConnection(url, user, pw);
			String sql ="delete from comments where seq=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,seq);
			
			pstmt.executeUpdate();
		}catch(SQLException se){
			System.out.println(se.getMessage());
		}finally{
			pstmt.close();
			con.close();
		}

		response.sendRedirect("Clist.jsp");
%>

</body>
</html>