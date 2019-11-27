package com.atmangxing.atcrowdfunding.manager.dao;

import com.atmangxing.atcrowdfunding.bean.Project;
import java.util.List;

public interface ProjectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Project record);

    Project selectByPrimaryKey(Integer id);

    List<Project> selectAll();

    int updateByPrimaryKey(Project record);
}