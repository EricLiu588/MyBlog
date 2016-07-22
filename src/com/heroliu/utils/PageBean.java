package com.heroliu.utils;

import java.util.ArrayList;
import java.util.List;

public class PageBean {

	private int totalRows;  // 总行数
	private int pageSize; // 每页显示个数
	private int totalPages;  // 总页数
	private int currentPage; // 当前显示页
	private List data = new ArrayList(); // 数据存储列表
	
	public PageBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PageBean(int totalRows, int pageSize, int totalPages,
			int currentPage, List data) {
		super();
		this.totalRows = totalRows;
		this.pageSize = pageSize;
		this.totalPages = totalPages;
		this.currentPage = currentPage;
		this.data = data;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPages() {
		return totalRows%pageSize == 0 ? totalRows / pageSize : totalRows / pageSize + 1;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}

}
