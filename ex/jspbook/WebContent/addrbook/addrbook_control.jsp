<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8"  %> 
 
 <%@ page import="jspbook.addrbook.*, java.util.*"  %>

  
 <% request.setCharacterEncoding("UTF-8"); %> 
  
 <jsp:useBean id="ab" scope="page" class="jspbook.addrbook.AddrBean" /> 
 <jsp:useBean id="addrbook" class="jspbook.addrbook.AddrBook" /> 
 <jsp:setProperty name="addrbook" property="*" /> 
  
 <% 
 String action = request.getParameter("action"); 
 if (action.equals("list")) { 
	 
	 ArrayList<AddrBook> datas = ab.getDBList(); //datas는 계속 보관 안함
	 request.setAttribute("datas", datas);
	 pageContext.forward("addrbook_list.jsp"); //requset의 datas를 가져와 화면처리 넘김

  
 } else if (action.equals("insert")) { 
	if(ab.insertDB(addrbook)){
	response.sendRedirect("addrbook_control.jsp?action=list"); //다시 목록 뿌리기
	}
	else{
		throw new Exception("DB 입력 오류!!");
	}
 } else if (action.equals("edit")) { 
  
 } else if (action.equals("update")) { 
 
 } else if (action.equals("delete")) { 
 
 } else { 
  
 } 
 %> 


