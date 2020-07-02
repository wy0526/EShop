package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import po.MerchandisePO;
import service.MerchandiseManagerService;

@WebServlet("/merchandise")
public class MerchandiseManagerController  extends HttpServlet{
    String method;
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		method = request.getParameter("m");
		if("getMerList".equals(method)){
			getMerList(request,response);
		}else if("getMerById".equals(method)){
			
			getMerById(request,response);
		}
	}
	private void getMerById(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {
		String id = request.getParameter("id");
		MerchandiseManagerService merchandiseManagerService = new MerchandiseManagerService();
		MerchandisePO merchandisePO=merchandiseManagerService.getMerById(id);
		request.setAttribute("merchandisePO",merchandisePO);
		//转发
		request.getRequestDispatcher("/html/merchandiseDetail.jsp").forward(request, response);
			}
	
	//处理查看更多  特价   新品
	private void getMerList(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String special = request.getParameter("special");
		MerchandiseManagerService merchandiseManagerService = new MerchandiseManagerService();
		List<MerchandisePO> merList = merchandiseManagerService.getMerchandiseList(Integer.parseInt(special));
		//把集合放置在作用域下
		request.setAttribute("merList", merList);
		request.setAttribute("spe", special);
		System.out.println("商品集合信息："+merList.size());
		
		//转发
		request.getRequestDispatcher("/html/merchandiseList.jsp").forward(request, response);
	}
}
