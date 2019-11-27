package com.atmangxing.atcrowdfunding.manager.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.atmangxing.atcrowdfunding.manager.dao.UserMapper;
import com.atmangxing.atcrowdfunding.manager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atmangxing.atcrowdfunding.bean.Permission;
import com.atmangxing.atcrowdfunding.bean.Role;
import com.atmangxing.atcrowdfunding.bean.User;
import com.atmangxing.atcrowdfunding.exception.LoginFailException;
import com.atmangxing.atcrowdfunding.util.Const;
import com.atmangxing.atcrowdfunding.util.MD5Util;
import com.atmangxing.atcrowdfunding.util.Page;
import com.atmangxing.atcrowdfunding.vo.Data;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper ;

	public User queryUserlogin(Map<String, Object> paramMap) {
		
		User user = userMapper.queryUserlogin(paramMap);
		
		if(user==null){
			throw new LoginFailException("用户账号或密码不正确!");
		}
		
		return user;
	}

	public Page queryPage(Map<String,Object> paramMap) {
		
		Page page = new Page((Integer)paramMap.get("pageno"),(Integer)paramMap.get("pagesize"));
		
		Integer startIndex = page.getStartIndex();
		paramMap.put("startIndex", startIndex);
		
		List<User> datas = userMapper.queryList(paramMap);
		
		page.setData(datas);
		
		Integer totalsize = userMapper.queryCount(paramMap);
		
		page.setTotalsize(totalsize);		
		
		return page;
	}
	
	/*@Override
	public Page queryPage(Integer pageno, Integer pagesize) {
		Page page = new Page(pageno,pagesize);
		
		Integer startIndex = page.getStartIndex();
		
		List<User> datas = userMapper.queryList(startIndex,pagesize);
		
		page.setDatas(datas);
		
		Integer totalsize = userMapper.queryCount();
		
		page.setTotalsize(totalsize);		
		
		return page;
	}*/

	public int saveUser(User user) {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Date date = new Date();
		
		String createtime = sdf.format(date);
		
		user.setCreatetime(createtime);
		
		user.setUserpswd(MD5Util.digest(Const.PASSWORD));
		
		return userMapper.insert(user);
	}

	public User getUserById(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}

	public int updateUser(User user) {
		return userMapper.updateByPrimaryKey(user);
	}

	public int deleteUser(Integer id) {
		return userMapper.deleteByPrimaryKey(id);
	}

	public int deleteBatchUser(Integer[] ids) {
		int totalCount = 0 ;
		for (Integer id : ids) {
			int count = userMapper.deleteByPrimaryKey(id);
			totalCount += count;
		}
		if(totalCount!=ids.length){
			throw new RuntimeException("批量删除失败");
		}
		return totalCount;
	}

	/*@Override
	public int deleteBatchUserByVO(Data data) {		
		return userMapper.deleteBatchUserByVO(data);
	}*/

	
	
	public int deleteBatchUserByVO(Data data) {		
		return userMapper.deleteBatchUserByVO(data.getDatas());
	}

	public List<Role> querAllRole() {		
		return userMapper.querAllRole();
	}

	public List<Integer> queryRoleByUserid(Integer id) {
		return userMapper.queryRoleByUserid(id);
	}

	public int saveUserRoleRelationship(Integer userid, Data data) {
		return userMapper.saveUserRoleRelationship(userid,data);
	}

	public int deleteUserRoleRelationship(Integer userid, Data data) {
		return userMapper.deleteUserRoleRelationship(userid,data);
	}

	public List<Permission> queryPermissionByUserid(Integer id) {
		return userMapper.queryPermissionByUserid(id);
	}
}
