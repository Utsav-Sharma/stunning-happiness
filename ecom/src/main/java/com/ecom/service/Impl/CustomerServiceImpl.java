package com.ecom.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.CustomerDAO;
import com.ecom.model.Customer;
import com.ecom.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
@Autowired
private CustomerDAO customerDao;

	public Customer saveOrUpdateCustomer(Customer customer) {
		
		return customerDao.saveOrUpdateCustomer(customer);
	}
	public Customer getCustomerByUsername(String username){
		return customerDao.getCustomerByUsername(username);
	}
	 public Customer getCustomerById(int id){
	        return customerDao.getCustomerById(id);
	    }
	
	public List<Customer> getAllCustomers() {
		return customerDao.getAllCustomers();
	}

}
