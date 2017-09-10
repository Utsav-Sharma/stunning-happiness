package com.ecom.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.CartItemDAO;
import com.ecom.model.Cart;
import com.ecom.model.CartItem;
import com.ecom.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
	private CartItemDAO cartItemDao;

	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);

	}

	public CartItem getCartItem(int cartItemId) {

		return cartItemDao.getCartItem(cartItemId);
	}

	public void removeCartItem(CartItem cartItem) {

		cartItemDao.removeCartItem(cartItem);
	}

	public void removeAllCartItems(Cart cart) {

		cartItemDao.removeAllCartItems(cart);
	}

}
