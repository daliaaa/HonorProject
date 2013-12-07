package com.helpers;
import java.io.Serializable;
public class Item implements Serializable  {
	private static final long serialVersionUID = 1L;
	private String name;
	private String imgPath;
	private String description;
	private int price;
	private int count;
	
	public Item(String name, String imgPath, String desc, int price, int count) {
		this.name = name;
		this.imgPath = imgPath;
		this.description = desc;
		this.price = price;
		this.count = count;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	

	@Override
	public boolean equals(Object other){
		if(other == null || !(other instanceof Item)) {
			return false;
		}
		
		return this.name.equals(((Item)other).getName());
	}
	
}
