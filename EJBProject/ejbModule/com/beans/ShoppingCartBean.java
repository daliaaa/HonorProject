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
	private int totalItemCount = 0;
	@Override
	public void init() {
	}

	@Override
	public void addItem(Item item) {
		if(item.getCount() > 0){
			boolean exists = false;
			for(Item i: items){
				if(i.equals(item)){
					i.setCount(i.getCount() + item.getCount());
					exists = true;
					totalItemCount += item.getCount();
				}
			}
			if(!exists){
				items.add(item);
				totalItemCount += item.getCount();
			}		
		}		
	}

	@Override
	public ArrayList<Item> getItems() {
		// TODO Auto-generated method stub
		return items;
	}

	@Override
	public int getTotalItemCount() {
		return totalItemCount;
	}

	@Override
	public void setItemCount(int index, int newCount) {
		items.get(index).setCount(newCount);
	}

	@Override
	public void removeItem(int i) {
		items.remove(i);
		
	}

}
