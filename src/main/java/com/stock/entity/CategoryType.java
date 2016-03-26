package com.stock.entity;

import java.math.BigInteger;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
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
	private BigInteger price;
	
	@Column
	private BigInteger nonVatAmount;
	
	@Column
	private BigInteger vatAmount;
	
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

	public BigInteger getPrice() {
		return price;
	}

	public void setPrice(BigInteger price) {
		this.price = price;
	}

	public BigInteger getNonVatAmount() {
		return nonVatAmount;
	}

	public void setNonVatAmount(BigInteger nonVatAmount) {
		this.nonVatAmount = nonVatAmount;
	}

	public BigInteger getVatAmount() {
		return vatAmount;
	}

	public void setVatAmount(BigInteger vatAmount) {
		this.vatAmount = vatAmount;
	}
}
