package com.sys.dao;

import java.util.List;

import com.sys.entity.ProdectDir;
import com.sys.utils.JDBCUtils;


public class ProductDirDao {
	// 创建一个JDBC
	private JDBCUtils util = new JDBCUtils();

	public ProductDirDao() {
		util.getConnection();
	}

	// 查找所有商品信息
	public List<ProdectDir> queryAllproducts() throws Exception {
		String sql = "SELECT * FROM productdir";
		List<ProdectDir> list = util.findMoreRefResult(sql, null, ProdectDir.class);
		util.releaseConn();
		return list;
	}

}
