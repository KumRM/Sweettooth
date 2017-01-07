package com.cakes.sweettooth.dao;

import com.cakes.sweettooth.model.BillingAddress;
import com.cakes.sweettooth.model.ShippingAddress;
import com.cakes.sweettooth.model.UserDetails;

public interface UserDetailsDAO 
{
	public void addUserDetails(UserDetails userDetails);

	public void saveShippingAddress(ShippingAddress shippingAddress);
	
	public void saveBillingAddress(BillingAddress billingAddress);
}
