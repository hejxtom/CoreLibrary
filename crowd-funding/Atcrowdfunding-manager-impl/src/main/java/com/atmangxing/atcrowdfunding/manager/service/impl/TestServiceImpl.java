package com.atmangxing.atcrowdfunding.manager.service.impl;

import java.util.HashMap;
import java.util.Map;

import com.atmangxing.atcrowdfunding.manager.dao.TestDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atmangxing.atcrowdfunding.manager.service.TestService;

@Service
public class TestServiceImpl implements TestService {

	@Autowired
	private TestDao testDao ;
	
	public void insert() {
		Map map = new HashMap();
		map.put("name", "zhang3");
		testDao.insert(map);
	}

}
