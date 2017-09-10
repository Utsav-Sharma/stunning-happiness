package com.ecom.dao;

import java.util.List;

import com.ecom.model.Supplier;

public interface SupplierDAO {

	Supplier saveOrUpdateSupplier(Supplier supplier);

	List<Supplier> getAllSuppliers();


}
