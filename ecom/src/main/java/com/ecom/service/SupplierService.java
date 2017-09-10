package com.ecom.service;

import java.util.List;

import com.ecom.model.Supplier;

public interface SupplierService {
	Supplier saveOrUpdateSupplier(Supplier supplier);

	public List<Supplier> getAllSuppliers();
}
