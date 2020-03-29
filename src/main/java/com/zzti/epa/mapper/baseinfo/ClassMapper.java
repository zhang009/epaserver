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
    List<Class> getClassByMid(Integer majorId);

    List<Teacher> getClassByPage(@Param("page") Integer page, @Param("size") Integer size, @Param("keyword") String keyword);

    Long getTotal(@Param("keyword") String keyword);
}