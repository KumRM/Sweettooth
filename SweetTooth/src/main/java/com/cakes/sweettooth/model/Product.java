package com.cakes.sweettooth.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int productId;
	
	private int bakerId;
	private int subCategoryId;
	private int categoryId;
	
	@NotEmpty(message="Field Cannot Be Left Empty")
	@Pattern(regexp="[0-9]+")
	private String productPrice;
	
	@NotEmpty(message="Field Cannot Be Left Empty")
	@Pattern(regexp="[0-9]+")
	private String productDiscount;
	
	@NotEmpty(message="Field Cannot Be Left Empty")
	@Pattern(regexp="[0-9]+")
	private String productQuantity;
	
	@NotEmpty(message="Field Cannot Be Left Empty")
	@Pattern(regexp="[a-zA-Z]{1}+[a-zA-Z0-9]+", message="Invalid Name Format")
	private String productName;
	
	@NotEmpty(message="Field Cannot Be Left Empty")
	private String productDescription;
	
	@Transient
	private MultipartFile productImage;

	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	@ManyToOne
	@JoinColumn(name="categoryId", updatable=false, insertable=false, nullable=false)
	private Category category;
	
	@ManyToOne
	@JoinColumn(name="subCategoryId", updatable=false, insertable=false, nullable=false)
	private SubCategory subCategory;

	@ManyToOne
	@JoinColumn(name="bakerId", updatable=false, insertable=false, nullable=false)
	private Baker baker;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getBakerId() {
		return bakerId;
	}

	public void setBakerId(int bakerId) {
		this.bakerId = bakerId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(String productDiscount) {
		this.productDiscount = productDiscount;
	}

	public String getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Baker getBaker() {
		return baker;
	}

	public void setBaker(Baker baker) {
		this.baker = baker;
	}

	}