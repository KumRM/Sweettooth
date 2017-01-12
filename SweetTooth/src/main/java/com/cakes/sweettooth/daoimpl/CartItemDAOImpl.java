package com.cakes.sweettooth.daoimpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakes.sweettooth.dao.CartItemDAO;
import com.cakes.sweettooth.model.CartItem;

@Repository
public class CartItemDAOImpl implements CartItemDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCartItem(CartItem cartItem) 
	{		
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}
	
	public CartItem getCartItemById(int cartItemId)
	{
		
	}
}
