package com.cakes.sweettooth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakes.sweettooth.daoimpl.CartItemDAOImpl;
import com.cakes.sweettooth.model.CartItem;

@Service
@Transactional
public class CartItemService 
{
	@Autowired
	CartItemDAOImpl cartItemDAOImpl;
	
	public void addCartItem(CartItem cartItem)
	{
		cartItemDAOImpl.addCartItem(cartItem);
	}
	
	public CartItem getCartListById(int cartItemId)
	{
		return cartItemDAOImpl.getCartListById(cartItemId);
	}
	
	public List<CartItem> getCartList(int userId)
	{
		return  cartItemDAOImpl.getCartList(userId);
	}
	
	public void updateFlag(int cartItemId)
	{
		cartItemDAOImpl.updateFlag(cartItemId);
	}
	
	public void deleteCartItem(int cartItemId) 
	{
		cartItemDAOImpl.deleteCartItem(cartItemId);
	}
}
