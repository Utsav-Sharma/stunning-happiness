package com.ecom.dao;

import java.util.List;

import com.ecom.model.Product;

public interface ProductDAO {
	Product saveOrUpdateProduct(Product product);
	
	List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);
	
	void editProduct(Product product);
}


