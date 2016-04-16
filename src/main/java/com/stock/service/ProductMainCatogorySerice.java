package com.stock.service;

import java.util.List;

import com.stock.entity.ProductMainCategory;

public interface ProductMainCatogorySerice {

	List<ProductMainCategory> getList();
	
	ProductMainCategory getById(Long id);
	
}
