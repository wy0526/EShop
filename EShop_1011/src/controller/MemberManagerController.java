package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import po.MemberPO;

import service.MemberManagerService;

@WebServlet("/member")
public class MemberManagerController extends HttpServlet{
	String method;
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		method = request.getParameter("m");
		
		if("login".equals(method)){
			login(request,response);
		}else if("exit".equals(method)){
			exit(request,response);
		}
	}
	private void exit(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		// session封装到作用域中
		request.getSession().setAttribute("memberPO", null);
		// 转发
		request.getRequestDispatcher("/browseIndex").forward(request,
				response);
	}
	private void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String loginName = request.getParameter("loginName");
		String loginPwd = request.getParameter("loginPwd");
		System.out.println("用户名是：" + loginName);
		System.out.println("密码是：" + loginPwd);
		MemberManagerService memberManagerService = new MemberManagerService();
		MemberPO memberPO = memberManagerService.login(loginName, loginPwd);
		if (memberPO != null) {
			//封装数据
			request.setAttribute("loginStatus", "1");
			// session封装到作用域中
			request.getSession().setAttribute("memberPO", memberPO);
			// 转发
			request.getRequestDispatcher("/browseIndex").forward(request,
					response);
		} else {
			//封装数据
			request.setAttribute("loginStatus", "0");
			// session封装到作用域中
			request.getSession().setAttribute("memberPO", memberPO);
			// 转发
			request.getRequestDispatcher("/browseIndex").forward(request,
					response);
		}

	}
}
