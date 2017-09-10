package com.ecom.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.CustomerOrderDAO;
import com.ecom.model.CustomerOrder;
import com.ecom.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	@Autowired
	private CustomerOrderDAO customerOrderDao;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
	}
	

	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		return customerOrderDao.getCustomerOrderGrandTotal(cartId);
	}
}
