package com.sys.entity;

public class ProdectDir {
	private Long id;
	private String dirName;
	private Long parent_id;

	public ProdectDir() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProdectDir(Long id, String dirName, Long parent_id) {
		super();
		this.id = id;
		this.dirName = dirName;
		this.parent_id = parent_id;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDirName() {
		return dirName;
	}

	public void setDirName(String dirName) {
		this.dirName = dirName;
	}

	public Long getParent_id() {
		return parent_id;
	}

	public void setParent_id(Long parent_id) {
		this.parent_id = parent_id;
	}

	@Override
	public String toString() {
		return "ProdectDiv [id=" + id + ", dirName=" + dirName + ", parent_id="
				+ parent_id + "]";
	}

}
