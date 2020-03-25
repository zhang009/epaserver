package com.zzti.epa.mapper;

import com.zzti.epa.model.Role;
import com.zzti.epa.model.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);
	 //
    Teacher loadUserByUsername(String username);
    List<Role> getTeacherRolesById(Integer id);
    List<Teacher> getAllTeachers(@Param("tid") Integer tid, @Param("keywords") String keywords);

    List<Teacher> getTeacherByPage(@Param("page")Integer page,  @Param("size")Integer size,@Param("tea")Teacher teacher);

    Long getTotal(@Param("tea")Teacher teacher);

    Integer isExistWorkID(String  workID);

    Integer deleteTeasByIds(@Param("ids")Integer[] ids);
}