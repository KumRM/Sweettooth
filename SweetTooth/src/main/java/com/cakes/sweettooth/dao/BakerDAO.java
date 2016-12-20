package com.cakes.sweettooth.dao;

import java.util.List;

import com.cakes.sweettooth.model.Baker;

public interface BakerDAO {

	public void addBaker(Baker baker);
	
	public List<Baker> getList();
	
	public Baker getBakerById(int bakerId);
	
	public void deleteBaker(int bakerId);

	public Baker getBakerByName(String bakerName);
}
