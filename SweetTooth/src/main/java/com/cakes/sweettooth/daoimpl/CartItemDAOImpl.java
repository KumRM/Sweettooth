package com.cakes.sweettooth.daoimpl;

import java.util.List;

import org.hibernate.Session;
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
	
	public CartItem getCartListById(int cartItemId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CartItem where cartItemId = "+cartItemId;
		@SuppressWarnings("unchecked")
		List<CartItem> cartListById = session.createQuery(hql).getResultList();
		return cartListById.get(0);
	}
	
	public void updateFlag(int cartItemId)
	{
		String hql="update CartItem set flag=true where cartItemId="+cartItemId;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
}
