package com.stock.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.envers.Audited;

@Entity
@Audited
@Table(name="productmaincategory")
public class ProductMainCategory {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	
	@Column
	@NotNull
	private String productMainCategory;
	
	@OneToMany
	@JoinColumn(name="product_id")
	private List<Product> productList;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductMainCategory() {
		return productMainCategory;
	}

	public void setProductMainCategory(String productMainCategory) {
		this.productMainCategory = productMainCategory;
	}	
}
