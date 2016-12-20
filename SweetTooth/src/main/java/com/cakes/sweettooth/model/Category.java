package com.cakes.sweettooth.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Category 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int categoryId;
	
	@NotEmpty(message="Field Cannot Be Left Empty")
	private String categoryName;
	
	@NotEmpty(message="Field Cannot Be Left Empty")
	private String categoryDescription;

public String getCategoryDescription() {
	return categoryDescription;
}
public int getCategoryId() {
	return categoryId;
}
public String getCategoryName() {
	return categoryName;
}
public void setCategoryName(String categoryName) {
	this.categoryName = categoryName;
}
public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}
public void setCategoryDescription(String categoryDescription) {
	this.categoryDescription = categoryDescription;
}

}
