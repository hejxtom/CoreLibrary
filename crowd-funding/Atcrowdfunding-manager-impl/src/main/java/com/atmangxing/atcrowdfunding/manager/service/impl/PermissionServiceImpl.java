package com.atmangxing.atcrowdfunding.manager.service.impl;

import java.util.List;

import com.atmangxing.atcrowdfunding.manager.dao.PermissionMapper;
import com.atmangxing.atcrowdfunding.manager.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atmangxing.atcrowdfunding.bean.Permission;

@Service
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionMapper permissionMapper;

	public Permission getRootPermission() {
		return permissionMapper.getRootPermission();
	}

	public List<Permission> getChildrenPermissionByPid(Integer id) {
		return permissionMapper.getChildrenPermissionByPid(id);
	}

	public List<Permission> queryAllPermission() {
		return permissionMapper.queryAllPermission();
	}

	public int savePermission(Permission permission) {
		return permissionMapper.insert(permission);
	}

	public Permission getPermissionById(Integer id) {
		return permissionMapper.selectByPrimaryKey(id);
	}

	public int updatePermission(Permission permission) {
		return permissionMapper.updateByPrimaryKey(permission);
	}

	public int deletePermission(Integer id) {
		return permissionMapper.deleteByPrimaryKey(id);
	}

	public List<Integer> queryPermissionidsByRoleid(Integer roleid) {
		return permissionMapper.queryPermissionidsByRoleid(roleid);
	}
	
}
