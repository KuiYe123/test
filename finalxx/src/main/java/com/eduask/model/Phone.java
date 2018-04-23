package com.eduask.model;

public class Phone{
	private int id;
	private String urlone;
	private String urltwo;
	private String urlthree;
	private String label;
	private String fullname;
	private String nowprice;
	private String oldprice;
	
	
	
	
	@Override
	public String toString() {
		return "Phone [id=" + id + ", urlone=" + urlone + ", urltwo=" + urltwo
				+ ", urlthree=" + urlthree + ", label=" + label + ", fullname="
				+ fullname + ", nowprice=" + nowprice + ", oldprice="
				+ oldprice + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrlone() {
		return urlone;
	}
	public void setUrlone(String urlone) {
		this.urlone = urlone;
	}
	public String getUrltwo() {
		return urltwo;
	}
	public void setUrltwo(String urltwo) {
		this.urltwo = urltwo;
	}
	public String getUrlthree() {
		return urlthree;
	}
	public void setUrlthree(String urlthree) {
		this.urlthree = urlthree;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getNowprice() {
		return nowprice;
	}
	public void setNowprice(String nowprice) {
		this.nowprice = nowprice;
	}
	public String getOldprice() {
		return oldprice;
	}
	public void setOldprice(String oldprice) {
		this.oldprice = oldprice;
	}
	
}
