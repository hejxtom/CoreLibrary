package com.atmangxing.atcrowdfunding.manager.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.atmangxing.atcrowdfunding.bean.Permission;
import com.atmangxing.atcrowdfunding.bean.Role;
import com.atmangxing.atcrowdfunding.bean.User;
import com.atmangxing.atcrowdfunding.vo.Data;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    User selectByPrimaryKey(Integer id);

    List<User> selectAll();

    int updateByPrimaryKey(User record);

	User queryUserlogin(Map<String, Object> paramMap);

	//List<User> queryList(@Param("startIndex") Integer startIndex, @Param("pagesize")  Integer pagesize);

	//Integer queryCount();

	List<User> queryList(Map<String, Object> paramMap);

	Integer queryCount(Map<String, Object> paramMap);

	//int deleteBatchUserByVO(Data data);
	
	//int deleteBatchUserByVO(List<User> userList);
	
	//int deleteBatchUserByVO(User[] userList);1
	
	int deleteBatchUserByVO(@Param("userList") List<User> userList);

	List<Role> querAllRole();

	List<Integer> queryRoleByUserid(Integer id);

	int saveUserRoleRelationship(@Param("userid") Integer userid,@Param("data") Data data);

	int deleteUserRoleRelationship(@Param("userid") Integer userid,@Param("data")  Data data);

	List<Permission> queryPermissionByUserid(Integer id);
	
}