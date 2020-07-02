package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCManager {

	public static Connection getConnection(){
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/datebase001", 
					"root", "123456");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return conn;
	}
	public static void main(String[] args) {
		getConnection();
	}
}
