package com.eduask.model;

import java.util.List;

public class Page<T> {

	private int totalCount;
	//总条数
	private int pageSize=8;
	//每页显示的条数
	private int totalPage;
	//总页数
	private int nowPage=1;
	//当前页数
	private List<T> dataList;
	//储存数据的集合
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		if(totalCount % pageSize == 0){
			totalPage = totalCount/pageSize;
			//得到总页数 如果整除刚好显示完 
		}else{
			totalPage = totalCount/pageSize+1;
			//如果不能整除 得到总页数+1
		}
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	public List<T> getDataList() {
		return dataList;
	}
	public void setDataList(List<T> dataList) {
		this.dataList = dataList;
	}
	@Override
	public String toString() {
		return "Page [totalCount=" + totalCount + ", pageSize=" + pageSize
				+ ", totalPage=" + totalPage + ", nowPage=" + nowPage
				+ ", dataList=" + dataList + "]";
	}
	
	
	

}
