package com.cakes.sweettooth.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.cakes.sweettooth.model.BillingAddress;
import com.cakes.sweettooth.model.ShippingAddress;
import com.cakes.sweettooth.model.UserDetails;
import com.cakes.sweettooth.service.UserDetailsService;

@Component
public class WebFlowHandler 
{
	@Autowired
	BillingAddress billingAddress;
	
	@Autowired
	ShippingAddress shippingAddress;
	
	@Autowired
	UserDetailsService userDetailsService;
	
	public UserDetails initFlow()
	{
		return new UserDetails();
	}

	public String validateUser(UserDetails userDetails, MessageContext messageContext)
	{
		String status = "success";
		
		int count = userDetailsService.checkUserName(userDetails.getUserName());
		int emailcount = userDetailsService.checkEmail(userDetails.getEmailId());
		
		if(count==1)
		{
			messageContext.addMessage(new MessageBuilder().error().source("userName").defaultText("Username Already Exists").build());
			status ="failure";
		}
		if(emailcount==1)
		{
			messageContext.addMessage(new MessageBuilder().error().source("emailId").defaultText("E-Mail Already Exists").build());
			status ="failure";
		}
		if(userDetails.getFirstName().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("firstName").defaultText("First Name Can't Be Empty").build());
			status="failure";
		}
		if(userDetails.getLastName().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("lastName").defaultText("Last Name Can't Be Empty").build());
			status="failure";
		}
		if(userDetails.getContactNo().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("contactNo").defaultText("Contact Info Can't Be Empty").build());
			status="failure";
		}
		if(userDetails.getEmailId().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("emailId").defaultText("E-mail Id Can't Be Empty").build());
			status="failure";
		}
		if(userDetails.getUserName().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("userName").defaultText("Username Can't Be Empty").build());
			status="failure";
		}
		if(userDetails.getPassword().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password Can't Be Empty").build());
			status="failure";
		}
		return status;
	}

//	public String checkUserName(UserDetails userDetails, MessageContext messageContext)
//	{
//		String status = "success";
//		
//		return status;
//		{
//			status = "success";
//		}
//		return status;
//	}
	
	public String addShippingAddress(ShippingAddress shippingAddress)
	{	
		this.shippingAddress.setShippingAddressId(shippingAddress.getShippingAddressId());
		this.shippingAddress.setFlatNo(shippingAddress.getFlatNo());
		this.shippingAddress.setStreetName(shippingAddress.getStreetName());
		this.shippingAddress.setLocality(shippingAddress.getLocality());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setState(shippingAddress.getState());
		this.shippingAddress.setPinCode(shippingAddress.getPinCode());
		
		return "success";
	}
	
	public String addBillingAddress(BillingAddress billingAddress)
	{
		this.billingAddress.setBillingAddressId(billingAddress.getBillingAddressId());
		this.billingAddress.setFlatNo(billingAddress.getFlatNo());
		this.billingAddress.setStreetName(billingAddress.getStreetName());
		this.billingAddress.setLocality(billingAddress.getLocality());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setState(billingAddress.getState());
		this.billingAddress.setPinCode(billingAddress.getPinCode());
		
		return "success";
	}
	
	public String registerUser(UserDetails userDetails, ShippingAddress shippingAddress, BillingAddress billingAddress)
	{
		userDetailsService.addUserDetails(userDetails);
		
		shippingAddress.setUserDetails(userDetails);
		userDetails.setShippingAddress(shippingAddress);
		this.shippingAddress.setUserDetails(userDetails);
		
		billingAddress.setUserDetails(userDetails);
		userDetails.setBillingAddress(billingAddress);
		this.billingAddress.setUserDetails(userDetails);
		
		userDetails.setShippingAddress(shippingAddress);
		userDetails.setBillingAddress(billingAddress);
		
		userDetailsService.saveShippingAddress(shippingAddress);
		userDetailsService.saveBillingAddress(billingAddress);
		
		userDetailsService.addUserDetails(userDetails);
		
		return "success";
	}
}
