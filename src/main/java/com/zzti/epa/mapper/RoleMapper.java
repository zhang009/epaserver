package com.zzti.epa.mapper;

import com.zzti.epa.model.Role;

import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    //以上为mabatis自动生成，以下为自己编写
    List<Role> getAllRoles();

}