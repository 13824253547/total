package com.sys.entity;

import com.sys.utils.StringUtils;

public class ProdeuctQueryObj extends QueryObj {
	private String prodeuctName;
	private Double minPrice;
	private Double maxPrice;
	private Double dir_id;

	public ProdeuctQueryObj() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProdeuctQueryObj(String prodeuctName, Double minPrice,
			Double maxPrice) {
		super();
		this.prodeuctName = prodeuctName;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
	}

	public String getProdeuctName() {
		return prodeuctName;
	}

	public void setProdeuctName(String prodeuctName) {
		this.prodeuctName = prodeuctName;
	}

	public Double getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(Double minPrice) {
		this.minPrice = minPrice;
	}

	public Double getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(Double maxPrice) {
		this.maxPrice = maxPrice;
	}
	
	public Double getDir_id() {
		return dir_id;
	}

	public void setDir_id(Double dir_id) {
		this.dir_id = dir_id;
	}

	/**
	 * 拼接sql条件查询语句及条件查询参数
	 */
	public void customQuery() {
		
		if (StringUtils.hasLength(prodeuctName)) {
			// sqltemp.add("productName LIKE ?");
			// params.add("%"+prodeuctName+"%");
			super.addQuery("productName LIKE ?", "%" + prodeuctName + "%");
		}

		if (minPrice != null) {
			// sqltemp.add("salePrice >= ?");
			// params.add(minPrice);
			super.addQuery("salePrice >= ?", minPrice);
		}
		if (maxPrice != null) {
			// sqltemp.add("salePrice <= ?");
			// params.add(maxPrice);
			super.addQuery("salePrice <= ?", maxPrice);
		}
		if (dir_id != null && dir_id != 1) {
			// sqltemp.add("salePrice <= ?");
			// params.add(maxPrice);
			super.addQuery("dir_id = ?", dir_id);
		}
	}

}
