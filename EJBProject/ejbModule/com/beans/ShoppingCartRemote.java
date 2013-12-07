package com.beans;

import java.util.ArrayList;

import javax.ejb.Remote;

import com.helpers.Item;

@Remote
public interface ShoppingCartRemote {
	public void init();
	public void addItem(Item item);
	public void removeItem(Item item);
	public ArrayList<Item> getItems();
	public int getItemCount();
}
