package com.cakes.sweettooth.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakes.sweettooth.dao.CategoryDAO;
import com.cakes.sweettooth.model.Category;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCategory(Category category)
	{
			sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	public List<Category> getList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Category";
		@SuppressWarnings("unchecked")
		List<Category> categoryList = session.createQuery(hql).getResultList();
		return categoryList;
	}
	
	public String getJsonList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Category";
		@SuppressWarnings("unchecked")
		List<Category> categoryList = session.createQuery(hql).getResultList();
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonList = gson.toJson(categoryList);
		
		return jsonList;
	}

	public Category getListById(int categoryId) 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Category where categoryId = "+categoryId;
		@SuppressWarnings("unchecked")
		List<Category> listById = session.createQuery(hql).getResultList();
		return listById.get(0);
	}

	public void deleteCategory(int categoryId) 
	{
		Category categoryToDelete = new Category();
		categoryToDelete.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
	}

	public Category getCategoryByName(String categoryName)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Category where categoryName = "+"'"+categoryName+"'";
		@SuppressWarnings("unchecked")
		List<Category> categoryByName= session.createQuery(hql).getResultList();
		return categoryByName.get(0);
	}
}
