package com.cakes.sweettooth.config;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.cakes.sweettooth.model.BillingAddress;
import com.cakes.sweettooth.model.CartDetails;
import com.cakes.sweettooth.model.ShippingAddress;

@Component
public class CartFlowHandler 
{
	public CartDetails initFlow()
	{
		return new CartDetails();
	}
	
	public String validateShippingAddress(ShippingAddress shippingAddress, MessageContext messageContext)
	{
		String status = "success";
		
		if(shippingAddress.getFlatNo().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("flatNo").defaultText("Flat No Can't Be Empty").build());
			status="failure";
		}
		if(shippingAddress.getStreetName().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("streetName").defaultText("Street Name Can't Be Empty").build());
			status="failure";
		}
		if(shippingAddress.getLocality().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("locality").defaultText("Locality Can't Be Empty").build());
			status="failure";
		}
		if(shippingAddress.getCity().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText("City Can't Be Empty").build());
			status="failure";
		}
		if(shippingAddress.getState().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText("State Can't Be Empty").build());
			status="failure";
		}
		if(shippingAddress.getPinCode().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("pinCode").defaultText("PinCode Can't Be Empty").build());
			status="failure";
		}
		return status;
	}
	
	public String validateBillingAddress(BillingAddress billingAddress, MessageContext messageContext)
	{
		String status = "success";
		
		if(billingAddress.getFlatNo().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("flatNo").defaultText("Flat No Can't Be Empty").build());
			status="failure";
		}
		if(billingAddress.getStreetName().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("streetName").defaultText("Street Name Can't Be Empty").build());
			status="failure";
		}
		if(billingAddress.getLocality().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("locality").defaultText("Locality Can't Be Empty").build());
			status="failure";
		}
		if(billingAddress.getCity().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText("City Can't Be Empty").build());
			status="failure";
		}
		if(billingAddress.getState().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText("State Can't Be Empty").build());
			status="failure";
		}
		if(billingAddress.getPinCode().isEmpty())
		{	
			messageContext.addMessage(new MessageBuilder().error().source("pinCode").defaultText("PinCode Can't Be Empty").build());
			status="failure";
		}
		return status;
	}
}
