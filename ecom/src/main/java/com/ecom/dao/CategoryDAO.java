package com.ecom.dao;

import java.util.List;

import com.ecom.model.Category;

public interface CategoryDAO {
	List<Category> getCategories();

	Category saveOrUpdateCategory(Category category);

	
}
