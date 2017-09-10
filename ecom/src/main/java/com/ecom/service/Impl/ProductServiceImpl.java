package com.ecom.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.ProductDAO;
import com.ecom.model.Product;
import com.ecom.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
@Autowired
private ProductDAO ProductDAO;
public ProductServiceImpl(){
	System.out.println("CREATING INSTANCE FOR PRODUCTSERVICEIMPL");
		
}

public Product saveOrUpdateProduct(Product product){
	return ProductDAO.saveOrUpdateProduct(product);
//call the Dao method using productDao variable
}

public List<Product> getAllProducts() {
	return ProductDAO.getAllProducts();
	 
	
	
}

public Product getProductById(int id) {
	return ProductDAO.getProductById(id);
}

public void deleteProduct(int id) {
	ProductDAO.deleteProduct(id);
}

public void editProduct(Product product) {
	ProductDAO.editProduct(product);
	
}



}