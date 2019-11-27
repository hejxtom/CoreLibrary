package com.atmangxing.atcrowdfunding.manager.dao;

import com.atmangxing.atcrowdfunding.bean.Dictionary;
import java.util.List;

public interface DictionaryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dictionary record);

    Dictionary selectByPrimaryKey(Integer id);

    List<Dictionary> selectAll();

    int updateByPrimaryKey(Dictionary record);
}