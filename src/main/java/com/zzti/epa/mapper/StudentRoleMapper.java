package com.zzti.epa.mapper;

import com.zzti.epa.model.StudentRole;

public interface StudentRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StudentRole record);

    int insertSelective(StudentRole record);

    StudentRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StudentRole record);

    int updateByPrimaryKey(StudentRole record);
}