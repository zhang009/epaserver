package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Class;
import com.zzti.epa.model.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClassMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Class record);

    int insertSelective(Class record);

    Class selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Class record);

    int updateByPrimaryKey(Class record);
	
	  //
    List<Class> getClassByMid(@Param("majorId") Integer majorId);

    List<Teacher> getClassByPage(@Param("page") Integer page, @Param("size") Integer size, @Param("keyword") String keyword);

    Long getTotal(@Param("keyword") String keyword);

    List<Class> getAllClass();

    List<Class> getClassByName(@Param("name") String name);

    List<String> getAllClassWithName();

    List<Class> getAllClassByMajorId(@Param("majorId") Integer majorId);

    //根据学院和专业获取班级列表
    List<Teacher> getClassBySchoolIdAndMajorId(@Param("page")Integer page,@Param("size") Integer size, @Param("cla")Class clazz);

    Long getTotal2(@Param("cla")Class clazz);
}