package com.ecom.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.CartDAO;
import com.ecom.model.Cart;
import com.ecom.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDao;
		public Cart getCart(int cartId) {
			return cartDao.getCart(cartId);
		}
		
		 public void update(Cart cart){
		        cartDao.update(cart);
		    }
	}


