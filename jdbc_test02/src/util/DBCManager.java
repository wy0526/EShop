package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCManager {

	public static Connection getConnection(){
		Connection conn = null;
		//1、加载数据库驱动包
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//2、通过DriverManager接口获得连接对象getConnection
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/datebase001", 
					"root", "123456");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
}
