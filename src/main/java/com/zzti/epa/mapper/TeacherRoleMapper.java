package com.zzti.epa.mapper;

import com.zzti.epa.model.TeacherRole;
import org.apache.ibatis.annotations.Param;

public interface TeacherRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TeacherRole record);

    int insertSelective(TeacherRole record);

    TeacherRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TeacherRole record);

    int updateByPrimaryKey(TeacherRole record);

    //
    void deleteByTeaId(Integer tid);

    Integer addRole(@Param("tid") Integer tid, @Param("rids")Integer[] rids);

    Integer firstAddRole(Integer tid);
}