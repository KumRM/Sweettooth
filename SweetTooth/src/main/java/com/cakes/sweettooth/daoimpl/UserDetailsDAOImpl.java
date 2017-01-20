package com.cakes.sweettooth.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakes.sweettooth.dao.UserDetailsDAO;
import com.cakes.sweettooth.model.BillingAddress;
import com.cakes.sweettooth.model.Cart;
import com.cakes.sweettooth.model.ShippingAddress;
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
		
//		userDetails.getBillingAddress().setUserDetails(userDetails);
//		session.saveOrUpdate(userDetails.getBillingAddress());
		
//		userDetails.getShippingAddress().setUserDetails(userDetails);
//		session.saveOrUpdate(userDetails.getShippingAddress());
		
		userDetails.setUserId(user.getUserId());
		userDetails.setCartId(cart.getCartId());
		session.saveOrUpdate(userDetails);
		
		session.flush();
	}
	
	public void saveShippingAddress(ShippingAddress shippingAddress)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	}
	
	public void saveBillingAddress(BillingAddress billingAddress)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
	}
	
	public UserDetails getUserByName(String userName)
	{
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<UserDetails> userList = session.createQuery("from UserDetails where userName = '"+userName+"'").getResultList();
		return userList.get(0);
	}
	
	public int checkUserName(String userName)
	{
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<UserDetails> userList = session.createQuery("from UserDetails where userName = '"+userName+"'").getResultList();
		int count = userList.size();
		return count;
	}
	
	public int checkEmail(String emailId)
	{
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<UserDetails> userEmailIdList = session.createQuery("from UserDetails where emailid = '"+emailId+"'").getResultList();
		int count = userEmailIdList.size();
		return count;
	}
	
	public ShippingAddress getShippingAddressByUserId(int userId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from ShippingAddress where UserDetails_UserId ="+userId;
		@SuppressWarnings("unchecked")
		List<ShippingAddress> shippingAddressByUserId = session.createQuery(hql).getResultList();
		return shippingAddressByUserId.get(0);
	}
	
	public BillingAddress getBillingAddressByUserId(int userId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from BillingAddress where UserDetails_UserId ="+userId;
		@SuppressWarnings("unchecked")
		List<BillingAddress> billingAddressByUserId = session.createQuery(hql).getResultList();
		return billingAddressByUserId.get(0);
	}
}
