package com.cakes.sweettooth.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakes.sweettooth.dao.WishListDAO;
import com.cakes.sweettooth.model.WishList;

@Repository
public class WishListDAOImpl implements  WishListDAO
{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addWishList(WishList wishList) 
	{		
		sessionFactory.getCurrentSession().saveOrUpdate(wishList);
	}
	
	public List<WishList> getWishList()
	{
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<WishList> wishList=session.createQuery("from WishList").getResultList();
		return wishList;
	}
	
	public void updateFlag(int wishListId)
	{
		String hql="update WishList set flag=true where wishListId="+wishListId;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}

	public void deleteWishList(int wishListId) 
	{
		WishList wishListToDelete = new WishList();
		wishListToDelete.setWishListId(wishListId);
		sessionFactory.getCurrentSession().delete(wishListToDelete);
	}
}
