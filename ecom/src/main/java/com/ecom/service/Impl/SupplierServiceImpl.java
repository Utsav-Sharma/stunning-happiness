package com.ecom.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.SupplierDAO;
import com.ecom.model.Supplier;
import com.ecom.service.SupplierService;


@Service
public class SupplierServiceImpl implements SupplierService{
@Autowired
private SupplierDAO supplierDao;
public SupplierServiceImpl(){
	System.out.println("CREATING INSTANCE FOR SUPPLIERSERVICEIMPL");
		
}

public Supplier saveOrUpdateSupplier(Supplier supplier){
	return supplierDao.saveOrUpdateSupplier(supplier);
//call the Dao method using productDao variable
}

public List<Supplier> getAllSuppliers() {
	return supplierDao.getAllSuppliers();
	 
	
	
}





}




