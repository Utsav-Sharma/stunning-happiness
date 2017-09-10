package com.ecom.service;

import com.ecom.model.Cart;

public interface CartService {
	Cart getCart(int cartId);
	   void update(Cart cart);
}
