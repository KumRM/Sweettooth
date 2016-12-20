package com.cakes.sweettooth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakes.sweettooth.daoimpl.ProductDAOImpl;
import com.cakes.sweettooth.model.Product;

@Service
@Transactional
public class ProductService 
{
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	public void addProduct(Product product)
	{
		productDAOImpl.addProduct(product);
	}
	
	public List<Product> getProductList() 
	{
		return productDAOImpl.getProductList();
	}
	
	public String getJsonList() 
	{
		return productDAOImpl.getJsonProductList();
	}
	
	public Product getProductById(int productId) 
	{
		return productDAOImpl.getProductById(productId);
	}
	
	public void deleteProduct(int productId) 
	{
		productDAOImpl.deleteProduct(productId);
	}
}
