package dao;
//jsp——>controller——>service——>dao——>database   (po)
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import po.MemberPO;

import util.DBCManager;

public class MemberDAO {

	public int insert(int int_memberlevel, String memberName,
			String loginName, String loginPwd, String phone, String address,
			 String zip,String email,String regDate) {
		System.out.println("dao添加成功！");
		
		Connection conn = DBCManager.getConnection();
		String sql_add = "insert into member(memberlevel,memberName,loginName," +
				"loginPwd,phone,address,zip,email,regDate,loginTimes) values (?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement p = conn.prepareStatement(sql_add);
			//对？号传值
			p.setInt(1, int_memberlevel);
			p.setString(2, memberName);
			p.setString(3, loginName);
			p.setString(4, loginPwd);
			p.setString(5, phone);
			p.setString(6, address);
			p.setString(7, zip);
			p.setString(8, email);
			p.setString(9, regDate);
			p.setInt(10, 0);
			int row = p.executeUpdate();

			System.out.println("受影响的行: " + row);
			return row;
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return 0;
	}

	public MemberPO login(String loginName, String loginPwd) {
		MemberPO memberPO = null;
		Connection conn = DBCManager.getConnection();
		String sql_add = "select id,memberlevel,memberName,loginName,loginPwd,phone,address,"
				+ "zip,email,regDate,loginTimes,lastDate from member where loginName=? and loginPwd=?";
		try {
			PreparedStatement p = conn.prepareStatement(sql_add);
			// 对？号传值
			p.setString(1, loginName);
			p.setString(2, loginPwd);
			ResultSet set = p.executeQuery();
			if (set.next()) {
				memberPO = new MemberPO(set.getInt("id"),
						set.getInt("memberlevel"), set.getString("loginName"),
						set.getString("loginPwd"), set.getString("memberName"),
						set.getString("phone"), set.getString("address"),
						set.getString("zip"), set.getString("regDate"),
						set.getString("lastDate"), set.getInt("loginTimes"),
						set.getString("email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memberPO;
	}

}
