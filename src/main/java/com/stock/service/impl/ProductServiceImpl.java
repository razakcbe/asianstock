package com.stock.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stock.entity.Product;
import com.stock.respository.ProductRepository;
import com.stock.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductRepository repository;
	
	@Override
	public Product save(Product product) {
		return repository.save(product);
	}

	@Override
	public List<Product> getList() {
		return repository.findAll();
	}

	@Override
	public List<Product> findProductByName(String name) {
		return repository.findByName(name);
	}
	
	@Override
	public Product findProductById(Long id) {
		return repository.findById(id);
	}

	@Override
	public Product findByCode(String code) {
		return repository.findByCode(code);
	}

	@Override
	public List<Product> findByProductCategory(Long productCategoryId) {
		return repository.findByProductCategory(productCategoryId);
	}
}
