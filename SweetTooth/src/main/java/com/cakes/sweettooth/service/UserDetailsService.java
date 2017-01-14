package com.cakes.sweettooth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakes.sweettooth.daoimpl.UserDetailsDAOImpl;
import com.cakes.sweettooth.model.BillingAddress;
import com.cakes.sweettooth.model.ShippingAddress;
import com.cakes.sweettooth.model.UserDetails;

@Service
@Transactional
public class UserDetailsService 
{
	@Autowired
	UserDetailsDAOImpl userDetailsDAOImpl;
	
	public void addUserDetails(UserDetails userDetails)
	{
		userDetailsDAOImpl.addUserDetails(userDetails);
	}
	
	public void saveShippingAddress(ShippingAddress shippingAddress)
	{
		userDetailsDAOImpl.saveShippingAddress(shippingAddress);
	}
	
	public void saveBillingAddress(BillingAddress billingAddress)
	{
		userDetailsDAOImpl.saveBillingAddress(billingAddress);
	}
	
	public UserDetails getUserByName(String userName)
	{
		return userDetailsDAOImpl.getUserByName(userName);
	}
	
	public int checkUserName(String userName)
	{
		return userDetailsDAOImpl.checkUserName(userName);
	}
	
	public ShippingAddress getShippingAddressByUserId(int userId)
	{
		return userDetailsDAOImpl.getShippingAddressByUserId(userId);
	}
	
	public BillingAddress getBillingAddressByUserId(int userId)
	{
		return userDetailsDAOImpl.getBillingAddressByUserId(userId);
	}
}
