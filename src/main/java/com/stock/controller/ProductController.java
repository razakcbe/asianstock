package com.stock.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.stock.entity.CategoryType;
import com.stock.entity.Product;
import com.stock.entity.ProductMainCategory;
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
		cate.setImageurl(categorytype.getImageurl());
		cate.setLastUpdateTime(new Date());
		cate.setQuantity(categorytype.getQuantity());
		cate.setPrice(categorytype.getPrice());
		categoryServiceImpl.save(cate);
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

	@RequestMapping(value = "/category/limitedstock/{quantity}", method = RequestMethod.GET)
	public ResponseEntity<List<CategoryType>> fetchLimitedStockProducts(@PathVariable String quantity) {
		return new ResponseEntity<List<CategoryType>>(categoryServiceImpl.findLimitedStockVariant(Integer.parseInt(quantity)), HttpStatus.OK);
	}

	@RequestMapping(value = "/productsbyname/all", method = RequestMethod.GET)
	public ResponseEntity<List<ProductMainCategory>> fetchAllMainCategory() {
		return new ResponseEntity<List<ProductMainCategory>>(productMainCatogorySericeImpl.getList(), HttpStatus.OK);
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ResponseEntity<CategoryType> addProduct(@RequestBody CategoryType categorytype){


		if(categorytype.getProduct().getProductMainCategory().getName() !=null){
			ProductMainCategory category = productMainCatogorySericeImpl.findByCode(categorytype.getProduct().getProductMainCategory().getName());
			List<Product> productList = productService.findProductByName(categorytype.getProduct().getName());
			if(productList == null){
				Product product = new Product();
				product.setProductMainCategory(category);
				product.setName(categorytype.getProduct().getName());
				product.setCode(categorytype.getProduct().getCode());
				product = productService.save(product);
				categorytype.setProduct(product);
				categorytype.setLastUpdateTime(new Date());
				categorytype.setVatPercentage("14.5");
				categorytype = categoryServiceImpl.save(categorytype);
			}else{
				boolean isNewCatRequired = true;
				for(Product pro : productList){
					if(pro.getCode().equals(categorytype.getProduct().getCode())){
						categorytype.setProduct(pro);
						categorytype.setLastUpdateTime(new Date());
						categorytype.setVatPercentage("14.5");
						categorytype = categoryServiceImpl.save(categorytype);
						isNewCatRequired = false;
					}
				}
				if(isNewCatRequired){
					Product product = new Product();
					product.setProductMainCategory(category);
					product = productService.save(categorytype.getProduct());	
					categorytype.setProduct(product);
					categorytype.setLastUpdateTime(new Date());
					categorytype.setVatPercentage("14.5");
					categorytype = categoryServiceImpl.save(categorytype);
				}

			}
		}


		return new ResponseEntity<CategoryType>(categorytype, HttpStatus.OK);
	}


	@SuppressWarnings("unused")
	@RequestMapping(value = "/upload",method = RequestMethod.POST,produces = "text/plain; charset=utf-8")
	public String uploadFile(
			@RequestParam("file") MultipartFile uploadedFileRef,HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		ServletContext sc = session.getServletContext();
		String x = sc.getRealPath("/");
		String fileName = uploadedFileRef.getOriginalFilename();
		String path = x+fileName;
		System.out.println("File Path"+path);
		byte[] buffer = new byte[1000];
		File outputFile = new File(path);
		FileInputStream reader = null;
		FileOutputStream writer = null;
		int totalBytes = 0;
		try {
			outputFile.createNewFile();
			reader = (FileInputStream) uploadedFileRef.getInputStream();
			writer = new FileOutputStream(outputFile);
			int bytesRead = 0;
			while ((bytesRead = reader.read(buffer)) != -1) {
				writer.write(buffer);
				totalBytes += bytesRead;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				reader.close();
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return fileName;
	}

}
