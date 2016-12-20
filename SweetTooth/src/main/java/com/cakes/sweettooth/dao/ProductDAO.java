package com.cakes.sweettooth.dao;

import java.util.List;

import com.cakes.sweettooth.model.Product;

public interface ProductDAO 
{
	public void addProduct(Product product);
	
	public List<Product> getProductList();
	
	public Product getProductById(int productId);
	
	public void deleteProduct(int productId);
}
