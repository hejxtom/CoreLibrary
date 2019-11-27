package com.atmangxing.atcrowdfunding.potal.service.impl;

import java.util.List;
import java.util.Map;

import com.atmangxing.atcrowdfunding.potal.dao.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atmangxing.atcrowdfunding.bean.Member;
import com.atmangxing.atcrowdfunding.potal.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper ;

	public Member queryMebmerlogin(Map<String, Object> paramMap) {
		return memberMapper.queryMebmerlogin(paramMap);
	}

	public void updateAcctType(Member loginMember) {
		memberMapper.updateAcctType(loginMember);
	}

	public void updateBasicinfo(Member loginMember) {
		memberMapper.updateBasicinfo(loginMember);
	}

	public void updateEmail(Member loginMember) {
		memberMapper.updateEmail(loginMember);
	}

	public void updateAuthstatus(Member loginMember) {
		memberMapper.updateAuthstatus(loginMember);
	}

	public Member getMemberById(Integer memberid) {
		return memberMapper.getMemberById(memberid);
	}

	public List<Map<String, Object>> queryCertByMemberid(Integer memberid) {
		return memberMapper.queryCertByMemberid(memberid);
	}
	
}
