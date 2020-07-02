package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import po.CategoryPO;
import po.MerchandisePO;

import dao.MerchandiseDAO;

import service.MemberManagerService;
import service.MerchandiseManagerService;

@WebServlet("/browseIndex")
public class BrowseIndexController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//实例化商品服务对象
		MerchandiseManagerService merchandiseManagerService = new MerchandiseManagerService();
		//组装数据
		//商品类别列表集合；可以封装多个
		List<CategoryPO> categoryList = merchandiseManagerService.getCategoryList();
		//作用域
		req.setAttribute("cateList", categoryList);
		System.out.println("controller中商品类别的个数："+categoryList.size());
		//特价集合1
		List<MerchandisePO> specialMerList = merchandiseManagerService.getMerchandiseList(1);
		//特价集合0
		List<MerchandisePO> newMerList = merchandiseManagerService.getMerchandiseList(0);
		//封装到作用域下
		req.setAttribute("specialMerList",specialMerList);
		req.setAttribute("newMerList",newMerList);
		System.out.println("特价商品中的个数："+specialMerList.size());
		System.out.println("新上架商品中的个数："+newMerList.size());
		
		System.out.println("欢迎登陆网站主页");
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}
}


















