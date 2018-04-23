package com.eduask.model;

import javax.persistence.Entity;


@Entity
public class HotProduct {
	private String pic;
	private String price;
	private String former;
	private String name;
	
	private String content;

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getFormer() {
		return former;
	}

	public void setFormer(String former) {
		this.former = former;
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

	@Override
	public String toString() {
		return "HotProduct [pic=" + pic + ", price=" + price + ", former="
				+ former + ", name=" + name + ", content=" + content + "]";
	}
	
	
}
