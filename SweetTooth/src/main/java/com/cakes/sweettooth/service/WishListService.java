package com.cakes.sweettooth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakes.sweettooth.daoimpl.WishListDAOImpl;
import com.cakes.sweettooth.model.WishList;

@Service
@Transactional
public class WishListService 
{
	@Autowired
	WishListDAOImpl wishListDAOImpl;
	
	public void addWishList(WishList wishList) 
	{
		wishListDAOImpl.addWishList(wishList);
	}
	
	public List<WishList> getWishList()
	{
		return wishListDAOImpl.getWishList();
	}
	
	public void updateFlag(int wishListId)
	{
		wishListDAOImpl.updateFlag(wishListId);
	}
	
	public void deleteWishList(int wishListId)
	{
		wishListDAOImpl.deleteWishList(wishListId);
	}
}
