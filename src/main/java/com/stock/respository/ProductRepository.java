package com.stock.respository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stock.entity.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	Product findByName(String name);

	Product findById(Long id);
	
	Product findByCode(String code);
}
