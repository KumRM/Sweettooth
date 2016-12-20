package com.cakes.sweettooth.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cakes.sweettooth.daoimpl.BakerDAOImpl;
import com.cakes.sweettooth.model.Baker;

@Service
@Transactional
public class BakerService 
{
	@Autowired
	BakerDAOImpl bakerDAOImpl;
	
	public void addBaker(Baker baker)
	{
		bakerDAOImpl.addBaker(baker);
	}
	
	public List<Baker> getList()
	{
		return bakerDAOImpl.getList();
	}
	
	public String getJsonList() 
	{
		return bakerDAOImpl.getJsonList();
	}
	
	public Baker getBakerById(int bakerId)
	{
		return bakerDAOImpl.getBakerById(bakerId);
	}
	
	public void deleteBaker(int bakerId)
	{
		bakerDAOImpl.deleteBaker(bakerId);
	}
	
	public Baker getBakerByName(String bakerName)
	{
		return bakerDAOImpl.getBakerByName(bakerName);
	}
}
