package org.ccunix.text;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DatabaseConnectionManager {
	public static void main(String[] args) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/datebase001",
					"root","123456");
			
			System.out.println(conn);
			
			String sql_update= "update memberlevel set levelName='钻石会员',favourable=80 where id=0";
			
			PreparedStatement p = conn.prepareStatement(sql_update);
			
			int row = p.executeUpdate();
			
			System.out.println("受影响的行："+row);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
