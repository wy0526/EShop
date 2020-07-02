package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.DBCManager;

public class MemberLevelDAO {

	public void insert(String levelName,int favourable) {
		Connection conn = DBCManager.getConnection();
		String sql_add = "insert into memberlevel (levelName,favourable) values (?,?)";
		try {
			PreparedStatement p = conn.prepareStatement(sql_add);
			//对？号传值
			p.setString(1, levelName);
			p.setInt(2, favourable);
			int row = p.executeUpdate();

			System.out.println("受影响的行: " + row);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void update(String levelName,int favourable,int id) {
		Connection conn = DBCManager.getConnection();
		String sql_update = "update memberlevel set levelName=?,favourable=? where id=?";
		try {
			PreparedStatement p = conn.prepareStatement(sql_update);
			//对？号传值
			p.setString(1, levelName);
			p.setInt(2, favourable);
			p.setInt(3, id);
			int row = p.executeUpdate();
			System.out.println("受影响的行: " + row);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void delete(int id) {
		Connection conn = DBCManager.getConnection();
		String sql_delete = "delete from memberlevel where id=?";
		try {
			PreparedStatement p = conn.prepareStatement(sql_delete);
			//对？号传值
			p.setInt(1, id);
			int row = p.executeUpdate();

			System.out.println("受影响的行: " + row);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
