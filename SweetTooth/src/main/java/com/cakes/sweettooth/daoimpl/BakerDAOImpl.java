package com.cakes.sweettooth.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cakes.sweettooth.dao.BakerDAO;
import com.cakes.sweettooth.model.Baker;
import com.google.gson.Gson;

@Repository
public class BakerDAOImpl implements BakerDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addBaker(Baker baker) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(baker);
	}

	public List<Baker> getList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Baker";
		@SuppressWarnings("unchecked")
		List<Baker> bakerList = session.createQuery(hql).getResultList();
		return bakerList;
	}

	public String getJsonList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Baker";
		@SuppressWarnings("unchecked")
		List<Baker> bakerList = session.createQuery(hql).getResultList();

		Gson gson = new Gson();
		String jsonList = gson.toJson(bakerList);
		return jsonList;
	}
	
	public Baker getBakerById(int bakerId) 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Baker where bakerId = "+bakerId;
		@SuppressWarnings("unchecked")
		List<Baker> bakerById = session.createQuery(hql).getResultList();
		return bakerById.get(0);
	}

	public void deleteBaker(int bakerId) 
	{
		Baker bakerToDelete = new Baker();
		bakerToDelete.setBakerId(bakerId);
		sessionFactory.getCurrentSession().delete(bakerToDelete);
	}
	
	public Baker getBakerByName(String bakerName)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Baker where bakerName = "+"'"+bakerName+"'";
		@SuppressWarnings("unchecked")
		List<Baker> bakerByName = session.createQuery(hql).getResultList();
		return bakerByName.get(0);
	}
}
