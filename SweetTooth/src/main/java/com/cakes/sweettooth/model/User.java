package com.cakes.sweettooth.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class User 
{	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
	private String userName;
	
//	@NotEmpty(message="Field Cannot Be Left Empty")
	private String password;
	
	private boolean enabled;
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
}
