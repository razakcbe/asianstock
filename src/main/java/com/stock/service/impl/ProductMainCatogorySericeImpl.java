package com.stock.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stock.entity.Product;
import com.stock.entity.ProductMainCategory;
import com.stock.respository.ProductMainCategoryRepository;
import com.stock.service.ProductMainCatogorySerice;

@Service
public class ProductMainCatogorySericeImpl implements ProductMainCatogorySerice {

	@Autowired
	private ProductMainCategoryRepository repository;
	
	@Override
	public List<ProductMainCategory> getList() {
		return repository.findAll();
	}

	public ProductMainCategory getById(Long id) {
		return repository.getOne(id);
	}

	@Override
	public ProductMainCategory findByCode(String name) {
		return repository.findByName(name);
	}
}
