package com.ecom.dao;

import java.util.List;

import com.ecom.model.Customer;

public interface CustomerDAO {
	Customer saveOrUpdateCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
	Customer getCustomerById(int id);
	List<Customer> getAllCustomers();
}
