package com.ecom.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecom.dao.AuthorityDAO;
import com.ecom.model.Authorities;
import com.ecom.service.AuthorityService;

@Service
public class AuthorityServiceImpl implements AuthorityService {
	@Autowired
	private AuthorityDAO authorityDao;


	public Authorities saveOrUpdateAuthority(Authorities authority) {
		return authorityDao.saveOrUpdateAuthority(authority);
	}

}
