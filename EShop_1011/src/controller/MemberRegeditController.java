package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MemberManagerService;


@WebServlet("/html/doMemberRegedit")
public class MemberRegeditController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("»¶Ó­¹âÁÙÑ½£¡");
		req.setCharacterEncoding("UTF-8");
		String memberlevel = req.getParameter("memberlevel");
		String memberName = req.getParameter("memberName");
		String loginName = req.getParameter("loginName");
		String loginPwd = req.getParameter("loginPwd");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		String email = req.getParameter("email");
		String zip = req.getParameter("zip");
		
		System.out.println("²âÊÔ");
		System.out.println("memberlevel="+memberlevel);
		System.out.println("memberName="+memberName);
		System.out.println("loginName="+loginName);
		System.out.println("loginPwd="+loginPwd);
		System.out.println("phone="+phone);
		System.out.println("address="+address);
		System.out.println("email="+email);
		System.out.println("zip="+zip);
		
		MemberManagerService memberMangagerService = new MemberManagerService();
		int row = memberMangagerService.register(memberlevel,memberName,loginName,
				loginPwd,phone,address,email,zip);
		
		if(row>0){
			req.setAttribute("message","×¢²á³É¹¦");
			req.getRequestDispatcher("/html/memberRegister.jsp").forward(req, resp);
		}
		else{
			req.setAttribute("message","×¢²áÊ§°Ü");
			req.getRequestDispatcher("/html/memberRegister.jsp").forward(req, resp);
		}
	}
}
