package com.stock.respository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import com.stock.entity.ProductMainCategory;

@Transactional
public interface ProductMainCategoryRepository extends JpaRepository<ProductMainCategory, Long>{

}
