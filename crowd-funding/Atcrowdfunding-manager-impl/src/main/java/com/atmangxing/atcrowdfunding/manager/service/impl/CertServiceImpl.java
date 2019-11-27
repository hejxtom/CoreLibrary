package com.atmangxing.atcrowdfunding.manager.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atmangxing.atcrowdfunding.bean.Cert;
import com.atmangxing.atcrowdfunding.bean.MemberCert;
import com.atmangxing.atcrowdfunding.manager.dao.CertMapper;
import com.atmangxing.atcrowdfunding.manager.service.CertService;
import com.atmangxing.atcrowdfunding.util.Page;
import com.atmangxing.atcrowdfunding.vo.Data;

@Service
public class CertServiceImpl implements CertService {

	@Autowired
	private CertMapper certDao;

	public Cert queryCert(Map<String, Object> paramMap) {
		return certDao.queryCert(paramMap);
	}

	public Page<Cert> pageQuery(Map<String, Object> paramMap) {
		Page<Cert> certPage = new Page<Cert>((Integer)paramMap.get("pageno"),(Integer)paramMap.get("pagesize"));
		paramMap.put("startIndex", certPage.getStartIndex());
		List<Cert> certs = certDao.pageQuery(paramMap);
		// 获取数据的总条数
		int count = certDao.queryCount(paramMap);
		certPage.setData(certs);
		certPage.setTotalsize(count);
		return certPage;
	}

	public int queryCount(Map<String, Object> paramMap) {
		return certDao.queryCount(paramMap);
	}

	public void insertCert(Cert cert) {
		certDao.insertCert(cert);
	}

	public Cert queryById(Integer id) {
		return certDao.queryById(id);
	}

	public int updateCert(Cert cert) {
		return certDao.updateCert(cert);
	}

	public int deleteCert(Integer id) {
		return certDao.deleteCert(id);
	}

	public int deleteCerts(Data ds) {
		return certDao.deleteCerts(ds);
	}

	public List<Cert> queryCertByAccttype(String accttype) {
		return certDao.queryCertByAccttype(accttype);
	}

	public List<Cert> queryAllCert() {
		return certDao.queryAllCert();
	}

	public List<Map<String, Object>> queryAllAccttypeCert() {
		return certDao.queryAllAccttypeCert();
	}

	public int insertAccttypeCert(Map<String, Object> map) {
		return certDao.insertAccttypeCert(map);
	}

	public int deleteAccttypeCert(Map<String, Object> map) {
		return certDao.deleteAccttypeCert(map);
	}

	public void saveMemberCert(List<MemberCert> certimgs) {
		for (MemberCert memberCert : certimgs) {
			certDao.insertMemberCert(memberCert);
		}
	}

}
