package com.atmangxing.atcrowdfunding.manager.service.impl;

import java.util.List;
import java.util.Map;

import com.atmangxing.atcrowdfunding.manager.dao.AccountTypeCertMapper;
import com.atmangxing.atcrowdfunding.manager.service.CerttypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CerttypeServiceImpl implements CerttypeService {

	@Autowired
	private AccountTypeCertMapper accountTypeCertMapper ;

	public List<Map<String, Object>> queryCertAccttype() {
		return accountTypeCertMapper.queryCertAccttype();
	}

	public int deleteAcctTypeCert(Map<String, Object> paramMap) {
		return accountTypeCertMapper.deleteAcctTypeCert(paramMap);
	}

	public int insertAcctTypeCert(Map<String, Object> paramMap) {
		return accountTypeCertMapper.insertAcctTypeCert(paramMap);
	}
	
	
}
