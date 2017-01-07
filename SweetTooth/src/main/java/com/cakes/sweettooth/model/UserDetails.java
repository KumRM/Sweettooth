package com.cakes.sweettooth.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class UserDetails implements Serializable
{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private int userId;
	private int cartId;	
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[a-zA-Z]+", message="First Name Required")
	private String firstName;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[a-zA-Z]+", message="Last Name Required")
	private String lastName;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Pattern(regexp="[0-9]+", message="Contact Number Required")
	private String contactNo;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Email
	private String emailId;

//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Email
	private String userName;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
//	@Email
	private String password;
	
	@OneToOne
	@JoinColumn(name="userId", nullable=false, insertable=false, updatable=false)
	private User user;

	@OneToOne
	@JoinColumn(name="shippingAddressId")
	private ShippingAddress shippingAddress;
	
	@OneToOne
	@JoinColumn(name="billingAddressId")
	private BillingAddress billingAddress;
	
	@OneToOne
	@JoinColumn(name="cartId", nullable=false, insertable=false, updatable=false)
	private Cart cart;
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}
}
