package com.stock.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stock.entity.CategoryType;
import com.stock.entity.Product;
import com.stock.respository.CategoryTypeRepository;
import com.stock.service.CategoryService;
import com.stock.utils.StockUtils;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryTypeRepository cateRepository;
	
	//private static DecimalFormat df2 = new DecimalFormat(".##");
	
	@Override
	public CategoryType save(CategoryType cat) {
		return cateRepository.save(cat);
	}

	@Override
	public List<CategoryType> getList() {
		List<CategoryType> resultList = cateRepository.findAll();
		for(CategoryType cy : resultList){
			Double vatAmount = StockUtils.calculateNonVatFromMRP(cy.getPrice(), new BigDecimal(cy.getVatPercentage()));
			cy.setVatAmount(vatAmount);
			cy.setNonVatAmount(cy.getPrice()- vatAmount);
		}
		return resultList;
	}

	@Override
	public List<CategoryType> findByProduct(Product product) {
		List<CategoryType> resultList = cateRepository.findByProduct(product);
		for(CategoryType cy : resultList){
			Double vatAmount = StockUtils.calculateNonVatFromMRP(cy.getPrice(), new BigDecimal(cy.getVatPercentage()));
			cy.setVatAmount(vatAmount);
			cy.setNonVatAmount(cy.getPrice()- vatAmount);
		}
		return resultList;
	}

	@Override
	public CategoryType findByProductAndCategoryType(Long productId, String categorytype) {
		CategoryType type = cateRepository.findByProductAndCategoryType(productId, categorytype);
		return type;
	}

	@Override
	public int updateStockAndPrice(Long categoryid, int quantity, Double price) {
		return cateRepository.updateStockAndPrice(categoryid, quantity, price);
	}

	@Override
	public List<CategoryType> findLastUpdatedCategoryType() {
		List<CategoryType> categoryList = cateRepository.findLastUpdatedCategoryType();
		return categoryList;
	}

}
