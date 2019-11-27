package com.atmangxing.atcrowdfunding.manager.service.impl;

import java.util.List;
import java.util.Map;

import com.atmangxing.atcrowdfunding.manager.dao.RoleMapper;
import com.atmangxing.atcrowdfunding.manager.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atmangxing.atcrowdfunding.bean.Role;
import com.atmangxing.atcrowdfunding.bean.RolePermission;
import com.atmangxing.atcrowdfunding.util.Page;
import com.atmangxing.atcrowdfunding.vo.Data;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleMapper roleDao;


	public Page<Role> pageQuery(Map<String, Object> paramMap) {
		Page<Role> rolePage = new Page<Role>((Integer)paramMap.get("pageno"),(Integer)paramMap.get("pagesize"));
		
		paramMap.put("startIndex", rolePage.getStartIndex());
		
		List<Role> roles = roleDao.pageQuery(paramMap);
		
		// 获取数据的总条数
		int count = roleDao.queryCount(paramMap);
		rolePage.setData(roles);
		rolePage.setTotalsize(count);
		return rolePage;
	}

	public int queryCount(Map<String, Object> paramMap) {
		return roleDao.queryCount(paramMap);
	}

	public void saveRole(Role user) {
		roleDao.insert(user);
	}

	public Role getRole(Integer id) {
		return roleDao.getRole(id);
	}

	public int updateRole(Role user) {
		return roleDao.update(user);
	}

	public int deleteRole(Integer uid) {
		return roleDao.delete(uid);
	}

	public int batchDeleteRole(Integer[] uid) {
		return roleDao.batchDelete(uid);
	}

	public int batchDeleteRole(Data datas) {
		return roleDao.batchDeleteObj(datas);
	}

	public List<Role> queryAllRole() {
		return roleDao.queryAllRole();
	}

	public List<Integer> queryRoleidByUserid(Integer id) {
		return roleDao.queryRoleidByUserid(id);
	}

/*	@Override
	public void doAssignRoleByUserid(Integer userid, Integer[] ids) {
		roleDao.saveUserRole(userid,ids);
	}

	@Override
	public void doUnAssignRoleByUserid(Integer userid, Integer[] ids) {
		roleDao.deleteUserRole(userid,ids);
	}*/

	public void doAssignRoleByUserid(Integer userid, List<Integer> ids) {
		roleDao.saveUserRole(userid,ids);
	}

	public void doUnAssignRoleByUserid(Integer userid, List<Integer> ids) {
		roleDao.deleteUserRole(userid,ids);
	}

	public int saveRolePermissionRelationship(Integer roleid, Data datas) {
		
		roleDao.deleteRolePermissionRelationship(roleid);
		
		int totalCount = 0 ;
		List<Integer> ids = datas.getIds();
		for (Integer permissionid : ids) {
			RolePermission rp = new RolePermission();
			rp.setRoleid(roleid);
			rp.setPermissionid(permissionid);
			int count = roleDao.insertRolePermission(rp);
			totalCount += count ;
		}
		
		return totalCount;
	}

}
