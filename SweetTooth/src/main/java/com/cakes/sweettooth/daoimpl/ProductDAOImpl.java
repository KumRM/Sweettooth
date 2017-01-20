package com.cakes.sweettooth.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakes.sweettooth.dao.ProductDAO;
import com.cakes.sweettooth.model.Product;
import com.cakes.sweettooth.model.ProductView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Repository
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public void addProduct(Product product) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	public List<Product> getProductList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Product";
		@SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery(hql).getResultList();
		return productList;
	}
	
	public String getJsonProductList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Product";
		@SuppressWarnings("unchecked")
		List<Product> productList = session.createQuery(hql).getResultList();
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonList = gson.toJson(productList);
		return jsonList;
	}

	public Product getProductById(int productId) 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Product where productId = "+productId;
		@SuppressWarnings("unchecked")
		List<Product> productById = session.createQuery(hql).getResultList();
		return productById.get(0);
	}

	public ProductView getProductViewById(int productId) 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from ProductView where productId = "+productId;
		@SuppressWarnings("unchecked")
		List<ProductView> productViewById = session.createQuery(hql).getResultList();
		return productViewById.get(0);
	}
	
	public void updateProductQuantity(int productId,int quantity)
	{
		String hql = "update Product set productQuantity = productQuantity-"+quantity+" where productId =" + productId;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	
	public void deleteProduct(int productId) 
	{
		Product productToDelete = new Product();
		productToDelete.setProductId(productId);
		sessionFactory.getCurrentSession().delete(productToDelete);
	}
}