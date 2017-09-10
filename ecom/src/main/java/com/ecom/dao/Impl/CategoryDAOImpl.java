package com.ecom.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ecom.dao.CategoryDAO;
import com.ecom.model.Category;

@Repository
@Transactional
public class CategoryDAOImpl implements CategoryDAO {
@Autowired
	private SessionFactory sessionFactory;

	public List<Category> getCategories() {
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Category");
		List<Category> categories =query.list();
		session.close();
		return categories;
	}

	public Category saveOrUpdateCategory(Category category) {
		System.out.println(category.getId());
		Session session=sessionFactory.openSession();
		session.saveOrUpdate(category); //insert into category values (.....)
		session.flush();
		session.close();
		System.out.println(category.getId());
		return category;	
	}

}
