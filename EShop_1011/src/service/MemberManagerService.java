package service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import po.MemberPO;

import dao.MemberDAO;

public class MemberManagerService {

	public int register(String memberlevel, String memberName,
			String loginName, String loginPwd, String phone, String address,
			String zip,String email) {
	
	System.out.println("service¥¶¿Ì£°");
	int int_memberlevel = Integer.parseInt(memberlevel);
	
	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
	String regDate = dateFormat.format(new Date());
	
	MemberDAO memberDAO = new MemberDAO();
	return memberDAO.insert(int_memberlevel,memberName,loginName,
			loginPwd,phone,address,zip,email,regDate);
	}
	public MemberPO login(String loginName,String loginPwd){
		MemberDAO memberDAO = new MemberDAO();
		return memberDAO.login(loginName,loginPwd);
	}
}







