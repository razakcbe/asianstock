package com.stock.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.envers.Audited;

@Entity
@Audited
public class CategoryType {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@OneToOne
	@JoinColumn(name="product_id")
	private Product product;
	
	@Column
	@NotNull
	private String type;
	
	@Column
	private int quantity;

	@Column
	private Double price;
	
	@Transient
	private Double nonVatAmount;
	
	@Transient
	private Double vatAmount;
	
	@Column(name="vatpercentage")
	private String vatPercentage;
	
	@Column(name="lastupdatetime")
	private Date lastUpdateTime;
	
	@Column(name="imageurl")
	private String imageUrl;
	
	
	public CategoryType() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getVatPercentage() {
		return vatPercentage;
	}

	public void setVatPercentage(String vatPercentage) {
		this.vatPercentage = vatPercentage;
	}

	public Double getNonVatAmount() {
		return nonVatAmount;
	}

	public void setNonVatAmount(Double nonVatAmount) {
		this.nonVatAmount = nonVatAmount;
	}

	public Double getVatAmount() {
		return vatAmount;
	}

	public void setVatAmount(Double vatAmount) {
		this.vatAmount = vatAmount;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
}
