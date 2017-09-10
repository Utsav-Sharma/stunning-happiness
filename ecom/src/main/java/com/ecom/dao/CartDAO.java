package com.ecom.dao;

import java.io.IOException;

import com.ecom.model.Cart;

public interface CartDAO {
	Cart getCart(int cartId);
	Cart validate(int cartId) throws IOException;
	void update(Cart cart);
	
}
