package com.cakes.sweettooth.model;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Category 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int categoryId;
	
	@Expose
	@NotEmpty(message="Field Cannot Be Left Empty")
	private String categoryName;
	
	@Expose
	@NotEmpty(message="Field Cannot Be Left Empty")
	private String categoryDescription;

	@OneToMany(mappedBy="category", fetch=FetchType.EAGER)
	private Set<SubCategory> subCategorySet; 
	
public Set<SubCategory> getSubCategorySet() {
		return subCategorySet;
	}
	public void setSubCategorySet(Set<SubCategory> subCategorySet) {
		this.subCategorySet = subCategorySet;
	}
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
