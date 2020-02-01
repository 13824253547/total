package com.sys.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 查询参数父类
 * getQuerySql（）：获取完整的sql语句并返回
 * 
 * @author zengzi
 *
 */
public class QueryObj {
	private List<Object> parames = new ArrayList<Object>();
	private List<Object> conditions = new ArrayList<Object>();

	public List<Object> getParams() {
		return parames;
	}

	/**
	 * 获取完整请求参数
	 * @return sql
	 */
	public String getQuerySql() {
		// 拼接sql语句
		customQuery();

		StringBuilder sql = new StringBuilder();
		if (conditions.size() > 0) {
			sql.append(" WHERE ");
			sql.append(org.apache.commons.lang3.StringUtils.join(conditions,
					" AND "));
		}
		return sql.toString();
	}

	/**
	 * 添加 condition sql条件
	 * 添加 paramer sql条件参数
	 * @param condition
	 * @param paramer
	 */
	public void addQuery(String condition, Object paramer) {
		conditions.add(condition);
		parames.add(paramer);
	}

	/**
	 * 钩子方法  ：子类覆盖该方法
	 */
	protected void customQuery() {

	}

}
