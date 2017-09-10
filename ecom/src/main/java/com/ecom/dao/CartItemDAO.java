package com.ecom.dao;

import com.ecom.model.Cart;
import com.ecom.model.CartItem;

public interface CartItemDAO {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
}
