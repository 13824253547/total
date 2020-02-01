package com.sys.dao;

import java.util.ArrayList;
import java.util.List;

import com.sys.entity.ProdeuctQueryObj;
import com.sys.entity.Product;
import com.sys.utils.JDBCUtils;
import com.sys.utils.StringUtils;


public class ProductDao {
	// 创建一个JDBC
	private JDBCUtils util = new JDBCUtils();

	public ProductDao() {
		util.getConnection();
	}

	// 查找 多个人
	public List<Product> queryAllproducts() throws Exception {
		String sql = "SELECT * FROM product";
		List<Product> list = util.findMoreRefResult(sql, null, Product.class);
		util.releaseConn();
		return list;

	}

	/**
	 * 高级查询
	 * 
	 * @param po
	 * @return
	 * @throws Exception
	 */
	public List<Product> querryAll(ProdeuctQueryObj po) throws Exception {
		String sql = "SELECT * FROM product " + po.getQuerySql();
		List<Object> params = po.getParams();

		List<Product> list = util.findMoreRefResult(sql, params, Product.class);
		util.releaseConn();
		return list;
	}
	/**
	 * 通过ID查询信息
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public List<Product> querryAll(Long id) throws Exception{
		String sql = "SELECT * FROM product WHERE dir_id = ?";
		List<Object> params = new ArrayList<Object>();
		params.add(id);
		List<Product> list = util.findMoreRefResult(sql, params, Product.class);
		util.releaseConn();
		return list;
	}
	
	
		
	// ---------------------------------------------------------------------------
	/**
	 * 高级查询 查询多条件
	 * 
	 * @param name
	 * @param pmin
	 * @param pmax
	 * @return 查询结果列表
	 * @throws Exception
	 */
	public List<Product> queryAllproducts(String name, Double pmin, Double pmax)
			throws Exception {

		StringBuilder sql = new StringBuilder("SELECT * FROM product");
		List<Object> params = new ArrayList<Object>();
		List<Object> sqltemp = new ArrayList<Object>();

		if (StringUtils.hasLength(name)) {
			sqltemp.add("productName LIKE ?");
			// sql.append(" AND productName LIKE ?");
			params.add("%" + name + "%");
		}
		if (pmin != null) {
			sqltemp.add("salePrice >= ?");
			// sql.append(" AND salePrice >= ?");
			params.add(pmin);
		}
		if (pmax != null) {
			sqltemp.add("salePrice <= ?");
			// sql.append(" AND salePrice <= ?");
			params.add(pmax);
		}

		/*
		 * //方式一： for(int i=0;i<sqltemp.size();i++){ if(i==0){ //第一项
		 * sql.append(" WHERE "); }else{ //非第一项 sql.append(" AND "); }
		 * sql.append(sqltemp.get(i)); }
		 */

		// 方式二：
		if (sqltemp.size() > 0) {
			sql.append(" WHERE ");
			sql.append(org.apache.commons.lang3.StringUtils.join(sqltemp,
					" AND "));
		}
		List<Product> list = util.findMoreRefResult(sql.toString(), params,
				Product.class);
		util.releaseConn();
		return list;
	}

}
