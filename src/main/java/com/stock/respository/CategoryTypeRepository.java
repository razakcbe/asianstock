package com.stock.respository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.stock.entity.CategoryType;
import com.stock.entity.Product;

public interface CategoryTypeRepository extends JpaRepository<CategoryType, Integer>{
	
public List<CategoryType> findByProduct(Product productId);

@Query(value="select c from CategoryType c where c.product.id = :productId and c.type = :categorytype")
public CategoryType findByProductAndCategoryType(@Param("productId") Long productId,@Param("categorytype") String categorytype);

@Modifying
@Query(value="update CategoryType c set c.price = :price, c.quantity = :quantity where c.id = :categoryid")
public int updateStockAndPrice(@Param("categoryid") Long categoryid,@Param("quantity") int quantity,@Param("price") Double price);
}
