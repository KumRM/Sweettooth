package com.cakes.sweettooth.dao;

import java.util.List;

import com.cakes.sweettooth.model.SubCategory;

public interface SubCategoryDAO 
{
	public void addSubCategory(SubCategory subCategory);
	
	public List<SubCategory> getList();
	
	public SubCategory getListById(int subCategoryId);
	
	public void deleteSubCategory(int subCategoryId);	
	
	public SubCategory getSubCategoryByName(String subCategoryName);
}
