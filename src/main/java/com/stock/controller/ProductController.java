package com.stock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.stock.entity.CategoryType;
import com.stock.entity.Product;
import com.stock.service.impl.CategoryServiceImpl;
import com.stock.service.impl.ProductServiceImpl;

@RestController
@RequestMapping(value="/product")
public class ProductController {

	@Autowired
	ProductServiceImpl productService;

	@Autowired
	CategoryServiceImpl categoryServiceImpl;

	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public List<Product> fetchAllProduct() {
		return productService.getList();
	}
	@RequestMapping(value = "/code/{code}", method = RequestMethod.GET)
	public Product fetchProductByName(@PathVariable String code) {
		return productService.findByCode(code);
	}

	@RequestMapping(value = "/category/{code}", method = RequestMethod.GET)
	public List<CategoryType> fetchCategoryByProduct(@PathVariable String code) {
		Product product = productService.findByCode(code);
		return categoryServiceImpl.findByProduct(product);
	}

	/**
	 * 
	 * @param code
	 * @param categorytype
	 * @return
	 *  {
"type": "1KG",
"quantity": "50",
"price": "100",
"vatPercentage": "14.5"
}
	 */
	@RequestMapping(value = "/category/{code}", method = RequestMethod.POST)
	public CategoryType updateCategoryType(@PathVariable String code,@RequestBody CategoryType categorytype){
		Product product = productService.findByCode(code);
		CategoryType cate = categoryServiceImpl.findByProductAndCategoryType(product.getId(), categorytype.getType());
		categoryServiceImpl.updateStockAndPrice(cate.getId(), categorytype.getQuantity(), categorytype.getPrice());
		return cate;
	}
	
	@RequestMapping(value = "/category/lastupdated", method = RequestMethod.GET)
	public List<CategoryType> fetchCategoryByProduct() {
		return categoryServiceImpl.findLastUpdatedCategoryType();
	}
	
	@RequestMapping(value = "/category/{code}/{type}", method = RequestMethod.GET)
	public CategoryType fetchCategoryByType(@PathVariable String code,@PathVariable String type) {
		Product product = productService.findByCode(code);
		CategoryType cate = categoryServiceImpl.findByProductAndCategoryType(product.getId(),type);
		return cate;
	}
}
