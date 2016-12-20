package com.cakes.sweettooth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakes.sweettooth.daoimpl.SubCategoryDAOImpl;
import com.cakes.sweettooth.model.SubCategory;

@Service
@Transactional
public class SubCategoryService 
{
	@Autowired
	SubCategoryDAOImpl subCategoryDAOImpl;
	
	public void addSubCategory(SubCategory subCategory)
	{
		subCategoryDAOImpl.addSubCategory(subCategory);
	}
	
	public List<SubCategory> getList()
	{
		return subCategoryDAOImpl.getList();
	}
	
	public String getJsonList()
	{
		return subCategoryDAOImpl.getJsonList();
	}
	
	public SubCategory getListById(int subCategoryId)
	{
		return subCategoryDAOImpl.getListById(subCategoryId);
	}
	
	public void deleteSubCategory(int subCategoryId)
	{
		subCategoryDAOImpl.deleteSubCategory(subCategoryId);
	}
	
	public SubCategory getSubCategoryByName(String subCategoryName) 
	{
		return subCategoryDAOImpl.getSubCategoryByName(subCategoryName);
	}
}
