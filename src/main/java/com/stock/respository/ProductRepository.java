package com.stock.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.stock.entity.Product;

@Transactional
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	List<Product> findByName(String name);

	Product findById(Long id);
	
	Product findByCode(String code);
	
	@Query(value="select p from Product p where p.productMainCategory.id = :productCategoryId")
	List<Product> findByProductCategory(@Param("productCategoryId") Long productCategoryId);
}
