package test;

import dao.MemberLevelDAO;

public class DBTest01 {
	public static void main(String[] args){
		MemberLevelDAO memberLevelDAO = new MemberLevelDAO();
		
		
		//memberLevelDAO.insert("波波会员", 110);
		//memberLevelDAO.update("星空会员", 80, 10);
		memberLevelDAO.delete(10);
	}
}
