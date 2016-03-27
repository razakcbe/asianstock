package com.stock.service;

import java.util.List;

import com.stock.entity.CategoryType;
import com.stock.entity.Product;

public interface CategoryService {

    CategoryType save(CategoryType cat);

    List<CategoryType> getList();
    
	List<CategoryType> findByProduct(Product product);

	CategoryType findByProductAndCategoryType(Long productId,String categorytype);
	
	int updateStockAndPrice(Long categoryid,int quantity,Double price);
}
