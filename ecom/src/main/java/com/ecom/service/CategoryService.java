package com.ecom.service;

import java.util.List;

import com.ecom.model.Category;

public interface CategoryService {
	public List<Category> getCategories();

	Category saveOrUpdateCategory(Category category);


	
}
