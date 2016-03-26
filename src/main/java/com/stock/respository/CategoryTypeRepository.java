package com.stock.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.stock.entity.CategoryType;
import com.stock.entity.Product;

public interface CategoryTypeRepository extends JpaRepository<CategoryType, Integer>{
	
public List<CategoryType> findByProduct(Product productId);
}
