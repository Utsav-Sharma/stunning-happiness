package com.ecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ecom.dao.Impl.CartDAOImpl;
import com.ecom.model.Cart;
import com.ecom.model.Customer;
import com.ecom.model.CustomerOrder;
import com.ecom.service.CartService;
import com.ecom.service.CustomerOrderService;

@Controller
public class CustomerOrderController {

	@Autowired
	private CartService cartService;

	@Autowired
	private CustomerOrderService customerOrderService;
	
	

	@RequestMapping("/order/{cartId}")
	public String createOrder(@PathVariable("cartId") int cartId) {
		CustomerOrder customerOrder = new CustomerOrder();
		Cart cart = cartService.getCart(cartId);
		customerOrder.setCart(cart);
		System.out.println("Cart Id in customer order = "+cart.getCartId());
		Customer customer = cart.getCustomer();
/*		System.out.println("Customer Id inside CustomerOrder Controller = "+customer.getUsername());*/
		customerOrder.setCustomer(customer);
		customerOrder.setBillingAddress(customer.getBillingAddress());
		customerOrder.setShippingAddress(customer.getShippingAddress());

		customerOrderService.addCustomerOrder(customerOrder);
		System.out.println("cartId inside CustomerOrder Controller = " +cartId);
		return "redirect:/checkout?cartId=" + cartId;

	}
	
}
 