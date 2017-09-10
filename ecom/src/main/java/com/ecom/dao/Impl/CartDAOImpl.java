package com.ecom.dao.Impl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.dao.CartDAO;
import com.ecom.dao.CustomerOrderDAO;
import com.ecom.model.Cart;
import com.ecom.service.CustomerOrderService;

@Repository
@Transactional
public class CartDAOImpl implements CartDAO {

	@Autowired
	private CustomerOrderDAO customerOrderDao;

	@Autowired
	private SessionFactory sessionFactory;

	public Cart getCart(int cartId) {

		Session session = sessionFactory.openSession();
		System.out.println("Cart Id inside getCart method = " + cartId);
		Cart cart = (Cart) session.get(Cart.class, cartId);
		session.close();
		return cart;
	}

	public void update(Cart cart) {
		int cartId = cart.getCartId();
		double grandTotal = customerOrderDao.getCustomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);

		Session session = sessionFactory.openSession();
		session.merge(cart);
		session.close();
	}

	public Cart validate(int cartId) throws IOException {
		System.out.println("cartId inside validate method:" + cartId);
		Cart cart = getCart(cartId);
	
		if (cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId + "");
		}

		update(cart);
		
		return cart;
	}

}
