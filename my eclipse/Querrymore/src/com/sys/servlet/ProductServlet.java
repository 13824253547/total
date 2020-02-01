package com.sys.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sys.dao.ProductDao;
import com.sys.dao.ProductDirDao;
import com.sys.entity.ProdectDir;
import com.sys.entity.ProdeuctQueryObj;
import com.sys.entity.Product;
import com.sys.utils.StringUtils;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {

	/**
	 * 设置序列号：serialVersionUID
	 */
	private static final long serialVersionUID = 1L;
	private ProductDao dao = new ProductDao();
	private ProductDirDao dirDao = new ProductDirDao();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");

		String parameter = req.getParameter("cmd");
		if (StringUtils.hasLength(parameter)){
			if (parameter.equals("delet")) { //-----条件查找-----------
				//lists(req, resp);
			} else if (parameter.equals("edit")) {
				// edit(req, resp);
			} else if (parameter.equals("saveOrUpdate")) {
				// saveOrUpdate(req, resp);
			} else {
				list(req, resp);
			}
		} else{
			list(req, resp);
		}
	}
	
	/**
	 * 模糊查询
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void list(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取查询条件
		String pname = req.getParameter("pname");
		String pricemin = req.getParameter("pricemin");
		String pricemax = req.getParameter("pricemax");
		String select = req.getParameter("select");
		
		System.out.println(select);
		System.out.println("---------------");
		
		//创建对象参数
		ProdeuctQueryObj op = new ProdeuctQueryObj();
		
		//给对象参数赋值
		op.setProdeuctName(pname);
		
		if(StringUtils.hasLength(pricemin)){
			op.setMinPrice(Double.valueOf(pricemin));
		}
		if(StringUtils.hasLength(pricemax)){
			op.setMaxPrice(Double.valueOf(pricemax));
		}
		if(StringUtils.hasLength(select)){
			op.setDir_id(Double.valueOf(select));
		}
		try {
			List<Product> products = dao.querryAll(op);
			
			List<ProdectDir> productdirs = dirDao.queryAllproducts();
			// 把数据放到作用域 共享数据
			req.setAttribute("op", op);
			req.setAttribute("list", products);
			req.setAttribute("dirlist", productdirs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 3.响应请求转发
		req.getRequestDispatcher("/WEB-INF/views/product/list.jsp").forward(req, resp);
	}

}
