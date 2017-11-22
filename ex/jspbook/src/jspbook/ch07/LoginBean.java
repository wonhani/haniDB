package jspbook.ch07;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class LoginBean {
	private String userid;
	private String passwd;
	
	final String _userid = "myuser";
	final String _passwd = "1234";
	
	public boolean checkUser() {
		String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:MyOracle";
		String DB_USER = "ora_user";
		String DB_PASSWORD = "dbpass";
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(DB_URL, DB_PASSWORD, DB_USER);
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from users where userid = '"+userid+"' and passwd='"+passwd+"'");
		
		if(rs.next()) {
			return true;
	
		}
		else {
			return false;
		}
		
		
		
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	
}
