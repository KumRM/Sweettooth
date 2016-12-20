package com.cakes.sweettooth.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Baker 
{
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int bakerId;

@NotEmpty(message="Field Cannot Be Left Empty")
private String bakerName;

@NotEmpty(message="Field Cannot Be Left Empty")
private String bakerAddress;

@NotEmpty(message="Field Cannot Be Left Empty")
private String bakerContact;

@NotEmpty(message="Field Cannot Be Left Empty")
private String bakerEmail;

public int getBakerId() {
	return bakerId;
}

public void setBakerId(int bakerId) {
	this.bakerId = bakerId;
}

public String getBakerName() {
	return bakerName;
}

public void setBakerName(String bakerName) {
	this.bakerName = bakerName;
}

public String getBakerAddress() {
	return bakerAddress;
}

public void setBakerAddress(String bakerAddress) {
	this.bakerAddress = bakerAddress;
}

public String getBakerContact() {
	return bakerContact;
}

public void setBakerContact(String bakerContact) {
	this.bakerContact = bakerContact;
}

public String getBakerEmail() {
	return bakerEmail;
}

public void setBakerEmail(String bakerEmail) {
	this.bakerEmail = bakerEmail;
}


}
