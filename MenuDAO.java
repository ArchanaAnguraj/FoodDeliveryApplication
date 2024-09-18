package com.tapfoods.dao;

import java.util.ArrayList;

import com.tapfoods.models.Menu;


public interface MenuDAO {
	
int addMenu(Menu m);
	
	ArrayList<Menu> getAllMenu();
	
	public ArrayList<Menu> getMenu(int restaurantid) ;
	
	int updateMenu(Menu m);
	
	int deleteMenu(String menu_name);

	
}
