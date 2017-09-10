package com.ecom.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.CategoryDAO;
import com.ecom.model.Category;
import com.ecom.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDAO categoryDao;
	
	public List<Category> getCategories() {
		return categoryDao.getCategories();
	}

	public Category saveOrUpdateCategory(Category category) {
		return categoryDao.saveOrUpdateCategory(category);
	}

}
