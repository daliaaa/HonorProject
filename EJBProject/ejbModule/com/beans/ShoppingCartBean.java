package com.beans;

import java.util.ArrayList;

import javax.ejb.Stateful;

import com.helpers.Item;

/**
 * Session Bean implementation class ShoppingCartBean
 */
@Stateful
public class ShoppingCartBean implements ShoppingCartRemote{
	private ArrayList<Item> items = new ArrayList<Item>();
	private int itemCount = 0;
	@Override
	public void init() {
		// TODO Auto-generated method stub
		System.out.println("init was called");
		
	}

	@Override
	public void addItem(Item item) {
		// TODO Auto-generated method stub
		System.out.println("add item was called");
		
		if(item.getCount() > 0){
			boolean exists = false;
			for(Item i: items){
				if(i.equals(item)){
					i.setCount(i.getCount() + item.getCount());
					exists = true;
					itemCount += item.getCount();
				}
			}
			if(!exists){
				items.add(item);
				itemCount += item.getCount();
			}		
		}		
	}

	@Override
	public void removeItem(Item item) {
		// TODO Auto-generated method stub
		System.out.println("remove item was called");

	}

	@Override
	public ArrayList<Item> getItems() {
		// TODO Auto-generated method stub
		return items;
	}

	@Override
	public int getItemCount() {
		return itemCount;
	}

}
