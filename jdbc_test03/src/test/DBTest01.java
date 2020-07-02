package test;

import java.util.Scanner;

import dao.MemberLevelDAO;

public class DBTest01 {
	public static void main(String[] args){
		MemberLevelDAO memberLevelDAO = new MemberLevelDAO();
		
		
		//memberLevelDAO.insert("波波会员", 110);
		//memberLevelDAO.update("星空会员", 80, 10);
		//memberLevelDAO.delete(10);
		
		Scanner s = new Scanner(System.in);
		
		while(true){
			System.out.println("欢迎来到商品类别管理模块");
			System.out.println("1-添加商品类别");
			System.out.println("2-修改商品类别");
			System.out.println("3-删除商品类别");
			System.out.println("请输入操作序号  无需服务请输入0 退出0");
			int key = s.nextInt();
			switch (key) {
			case 1:
				System.out.println("请输入会员名称");
				String levelName = s.next();
				System.out.println("请输入会员折扣");
				int f = s.nextInt();
				memberLevelDAO.insert(levelName, f);
				break;
			case 2:
				System.out.println("请输入会员名称");
				String levelName2 = s.next();
				System.out.println("请输入会员折扣");
				int f2 = s.nextInt();
				System.out.println("请输入修改会员的id");
				int id = s.nextInt();
				memberLevelDAO.update(levelName2, f2,id);
				break;
			case 3:
				System.out.println("请输入修改会员的id");
				int id2 = s.nextInt();
				memberLevelDAO.delete(id2);
				break;
			default:
				break;
			}
			
			if(key==0){
				break;
			}
		}
	}
}
