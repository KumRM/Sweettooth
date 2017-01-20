package com.cakes.sweettooth.dao;

import com.cakes.sweettooth.model.WishList;

public interface WishListDAO {

	public void addWishList(WishList wishList);
	
	public void deleteWishList(int wishListId);
}
