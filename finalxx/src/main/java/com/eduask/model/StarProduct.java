package com.eduask.model;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class StarProduct {
	private String pic;
	
	private String name;
	
	private String price;
	
	private String content;
	
	@Override
	public String toString() {
		return "Starproduct [pic=" + pic + ", name=" + name + ", content=" + content + ", price=" + price + "]";
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
