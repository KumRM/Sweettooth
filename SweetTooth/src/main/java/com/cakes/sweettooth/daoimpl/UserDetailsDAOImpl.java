package com.cakes.sweettooth.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakes.sweettooth.dao.UserDetailsDAO;
import com.cakes.sweettooth.model.Cart;
import com.cakes.sweettooth.model.User;
import com.cakes.sweettooth.model.UserDetails;
import com.cakes.sweettooth.model.UserRole;

@Repository
public class UserDetailsDAOImpl implements UserDetailsDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addUserDetails(UserDetails userDetails) 
	{
		Session session = sessionFactory.getCurrentSession();
	
//		USER
		User user = new User();
		user.setUserId(userDetails.getUserId());
		user.setEnabled(true);
		user.setUserName(userDetails.getUserName());
		user.setPassword(userDetails.getPassword());
		
		session.saveOrUpdate(user);
		
//		CART
		Cart cart = new Cart();
		
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		
//		USERROLE
		UserRole userRole = new UserRole();
		
		userRole.setRoleId(1);
		userRole.setUserId(user.getUserId());
		
		session.saveOrUpdate(userRole);
		
		userDetails.getBillingAddress().setUserDetails(userDetails);
		session.saveOrUpdate(userDetails.getBillingAddress());
		
		userDetails.getShippingAddress().setUserDetails(userDetails);
		session.saveOrUpdate(userDetails.getShippingAddress());
		
		userDetails.setUserId(user.getUserId());
		userDetails.setCartId(cart.getCartId());
		session.saveOrUpdate(userDetails);
		
		session.flush();
	}
}
