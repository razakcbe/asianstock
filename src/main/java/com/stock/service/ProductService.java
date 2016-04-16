package com.stock.service;

import java.util.List;

import com.stock.entity.Product;

public interface ProductService {

    Product save(Product product);

    List<Product> getList();
    
    Product findProductByName(String name);

	Product findProductById(Long id);
	
	Product findByCode(String code);
	
	List<Product> findByProductCategory(Long productCategoryId);

}
