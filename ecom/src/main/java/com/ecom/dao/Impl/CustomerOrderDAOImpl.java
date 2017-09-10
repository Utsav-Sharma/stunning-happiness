package com.ecom.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.dao.CartDAO;
import com.ecom.dao.CustomerOrderDAO;
import com.ecom.model.Cart;
import com.ecom.model.CartItem;
import com.ecom.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDAOImpl implements CustomerOrderDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private CartDAO cartDao;
	
	public void addCustomerOrder(CustomerOrder customerOrder) {		
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(customerOrder);
		System.out.println("Customer order dao impl "+ customerOrder.getOrderId());
		session.flush();
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		Cart cart = cartDao.getCart(cartId);
		List<CartItem> cartItems = cart.getCartItems();
		double grandTotal = 0.0;
		for (CartItem cartItem : cartItems) {
			grandTotal = grandTotal + cartItem.getTotalPrice();
		}
		return grandTotal;
		// update cart set grandtotal=? where cartid=?
	}

}