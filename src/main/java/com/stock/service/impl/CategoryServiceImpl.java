package com.stock.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stock.entity.CategoryType;
import com.stock.entity.Product;
import com.stock.respository.CategoryTypeRepository;
import com.stock.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryTypeRepository cateRepository;
	
	@Override
	public CategoryType save(CategoryType cat) {
		return cateRepository.save(cat);
	}

	@Override
	public List<CategoryType> getList() {
		return cateRepository.findAll();
	}

	@Override
	public List<CategoryType> findByProduct(Product product) {
		return cateRepository.findByProduct(product);
	}

}
