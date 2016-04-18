package com.stock.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
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
import com.stock.service.impl.ProductMainCatogorySericeImpl;
import com.stock.service.impl.ProductServiceImpl;

@RestController
@RequestMapping(value="/product")
public class ProductController {

	@Autowired
	ProductServiceImpl productService;

	@Autowired
	CategoryServiceImpl categoryServiceImpl;
	
	@Autowired
	ProductMainCatogorySericeImpl productMainCatogorySericeImpl;

	@RequestMapping(value = "/all", method = RequestMethod.GET)
	public ResponseEntity<List<Product>> fetchAllProduct() {
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
		
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ResponseEntity<CategoryType> addProduct(@RequestBody CategoryType categorytype){
		Product product = new Product();
		product = productService.save(categorytype.getProduct());
		categorytype.setProduct(product);
		categorytype = categoryServiceImpl.save(categorytype);
		return new ResponseEntity<CategoryType>(categorytype, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/category/all", method = RequestMethod.GET)
	public ResponseEntity<List<CategoryType>> fetchAllCategoryByProduct() {
		return new ResponseEntity<List<CategoryType>>(categoryServiceImpl.getList(), HttpStatus.OK);
	}
		
	@RequestMapping(value = "/productcategory/{code}", method = RequestMethod.GET)
	public ResponseEntity<Set<String>> fetchProductsByMainCategory(@PathVariable String code) {
		List<Product> mainList= productService.findByProductCategory(Long.valueOf(code));
		Set<String> productList = fetchUniqueProductName(mainList);
		return new ResponseEntity<Set<String>>(productList, HttpStatus.OK);
	}
	
	public Set<String> fetchUniqueProductName(List<Product> mainList) {
		Set<String> productSet = new HashSet<String>();
		for(Product pro : mainList){
			if(!(productSet.contains(pro.getName()))){
				productSet.add(pro.getName());
			}
		}
		return productSet;
	}
	
	@RequestMapping(value = "/productsbyname/{name}", method = RequestMethod.GET)
	public ResponseEntity<List<Product>> fetchProductsByName(@PathVariable String name) {
		List<Product> productList= productService.findProductByName(name);
		return new ResponseEntity<List<Product>>(productList, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/category/limited", method = RequestMethod.GET)
	public ResponseEntity<List<CategoryType>> fetchLimitedStockProducts() {
		return new ResponseEntity<List<CategoryType>>(categoryServiceImpl.findLimitedStockVariant(3), HttpStatus.OK);
	}
}
