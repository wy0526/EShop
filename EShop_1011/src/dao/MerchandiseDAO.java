package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import po.CategoryPO;
import po.MerchandisePO;
import util.DBCManager;

public class MerchandiseDAO {
	public List<CategoryPO> findCategoryList() {
		System.out.println("商品类别 DAO 查询...................");
		List<CategoryPO> cateList = new ArrayList<CategoryPO>();
		Connection conn = DBCManager.getConnection();
		String sql_add = "select id,cateName,cateDesc from category";
		try {
			PreparedStatement p = conn.prepareStatement(sql_add);
			ResultSet set = p.executeQuery();
			while (set.next()) {
				System.out.println(set.getInt("id") + "\t"
						+ set.getString("cateName") + "\t"
						+ set.getString("cateDesc"));

				CategoryPO categoryPO = new CategoryPO(set.getString("id"),
						set.getString("cateName"), set.getString("cateDesc"));
				//存入到集合集合
				cateList.add(categoryPO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return cateList;
	}

	public static void main(String[] args) {
		new MerchandiseDAO().findCategoryList();
	}

	public List<MerchandisePO> findMerchandiseList(int special) {
		List<MerchandisePO> merList = new ArrayList<MerchandisePO>();
		Connection conn = DBCManager.getConnection();
		String sql_select = "select id,category,merName,price,sprice,merModel,picture,merDesc,manufacturer,leaveFactoryDate,special from merchandise where special=?";
		try {
			PreparedStatement p = conn.prepareStatement(sql_select);
			// 对？号传值
			p.setInt(1, special);
			ResultSet set = p.executeQuery();
			while (set.next()) {
				MerchandisePO merchandisePO = new MerchandisePO(set.getInt("id") ,set.getInt("category") ,
						set.getString("merName") ,set.getDouble("price") ,set.getDouble("sprice") ,set.getString("merModel") ,
						set.getString("picture") ,set.getString("merDesc") ,set.getString("manufacturer"),
						set.getString("leaveFactoryDate") , set.getInt("special"));
				// 存入到集合集合
				merList.add(merchandisePO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return merList;
	}

	public static MerchandisePO findMerById(int id) {
		MerchandisePO merchandisePO = null;
		Connection conn = DBCManager.getConnection();
		String sql_select = "select id,category,merName,price,sprice,merModel,picture,merDesc,manufacturer,leaveFactoryDate,special from merchandise where id=?";
		try {
			PreparedStatement p = conn.prepareStatement(sql_select);
			// 对？号传值
			p.setInt(1, id);
			ResultSet set = p.executeQuery();
			if (set.next()) {
				merchandisePO = new MerchandisePO(set.getInt("id") ,set.getInt("category") ,
						set.getString("merName") ,set.getDouble("price") ,set.getDouble("sprice") ,set.getString("merModel") ,
						set.getString("picture") ,set.getString("merDesc") ,set.getString("manufacturer"),
						set.getString("leaveFactoryDate") , set.getInt("special"));
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return merchandisePO;
	}
}
