package com.cakes.sweettooth.dao;

import java.util.List;

import com.cakes.sweettooth.model.Category;

public interface CategoryDAO {

	public void addCategory(Category category);
	
	public List<Category> getList();
	
	public Category getListById(int categoryId);
	
	public void deleteCategory(int categoryId);
	
	public Category getCategoryByName(String categoryName);
}
