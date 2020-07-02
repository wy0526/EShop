package controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/userFilter/*")
public class UserLoginFilterController implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("用户登录过滤器-----------");
	
		HttpServletRequest request =(HttpServletRequest) req;
		
		Object memberPO = request.getSession(false).getAttribute("memberPO");
		
		if (memberPO==null) {
			System.out.println("用户未登录！");
			request.getRequestDispatcher("/comm/notLogin.jsp/").forward(request,resp);
		}else{
			arg2.doFilter(req,resp);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
}
