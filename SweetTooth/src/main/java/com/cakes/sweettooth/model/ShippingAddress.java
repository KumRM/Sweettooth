package com.cakes.sweettooth.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ShippingAddress implements Serializable
{
	/**
	 * 
	 */
//	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int shippingAddressId;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[0-9]+", message="Invalid Flat Number")
	private String flatNo;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[a-zA-Z]+", message="Invalid Street Name")
	private String streetName;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[a-zA-Z]+", message="Invalid Locality Name")
	private String locality;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[a-zA-Z]+", message="Invalid City Name")
	private String city;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[a-zA-Z]+", message="Invalid StTE Name")
	private String state;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[0-9]+", message="Invalid Pin Code")
	private String pinCode;
	
	@OneToOne
	private UserDetails userDetails;

	
	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	public int getShippingAddressId() {
		return shippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}

	public String getFlatNo() {
		return flatNo;
	}

	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getLocality() {
		return locality;
	}

	public void setLocality(String locality) {
		this.locality = locality;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
}
