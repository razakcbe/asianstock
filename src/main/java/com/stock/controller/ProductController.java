package com.stock.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
	public ResponseEntity<List<Product>> fetchAllProduct() {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Allow", "OPTIONS,HEAD,GET,POST,PUT");
		return new ResponseEntity<List<Product>>(productService.getList(), HttpStatus.OK);
	}
	@RequestMapping(value = "/code/{code}", method = RequestMethod.GET)
	public ResponseEntity<Product> fetchProductByName(@PathVariable String code) {
		return new ResponseEntity<Product>(productService.findByCode(code), HttpStatus.OK);
	}

	@RequestMapping(value = "/category/{code}", method = RequestMethod.GET)
	public ResponseEntity<List<CategoryType>> fetchCategoryByProduct(@PathVariable String code) {
		Product product = productService.findByCode(code);
		return new ResponseEntity<List<CategoryType>>(categoryServiceImpl.findByProduct(product), HttpStatus.OK);
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
	@RequestMapping(value = "/category/update/{code}", method = RequestMethod.POST)
	public ResponseEntity<CategoryType> updateCategoryType(@PathVariable String code,@RequestBody CategoryType categorytype){
		Product product = productService.findByCode(code);
		CategoryType cate = categoryServiceImpl.findByProductAndCategoryType(product.getId(), categorytype.getType());
		categoryServiceImpl.updateStockAndPrice(cate.getId(), categorytype.getQuantity(), categorytype.getPrice());
		return new ResponseEntity<CategoryType>(cate, HttpStatus.OK);
	}

	@RequestMapping(value = "/category/lastupdated", method = RequestMethod.GET)
	public ResponseEntity<List<CategoryType>> fetchCategoryByProduct() {
		return new ResponseEntity<List<CategoryType>>(categoryServiceImpl.findLastUpdatedCategoryType(), HttpStatus.OK);
	}

	@RequestMapping(value = "/category/{code}/{type}", method = RequestMethod.GET)
	public ResponseEntity<CategoryType> fetchCategoryByType(@PathVariable String code,@PathVariable String type) {
		Product product = productService.findByCode(code);
		CategoryType cate = categoryServiceImpl.findByProductAndCategoryType(product.getId(),type);
		return new ResponseEntity<CategoryType>(cate, HttpStatus.OK);
	}
}
