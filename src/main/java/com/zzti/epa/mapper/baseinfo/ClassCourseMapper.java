package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Class;
import com.zzti.epa.model.ClassCourse;

import java.util.List;

public interface ClassCourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClassCourse record);

    int insertSelective(ClassCourse record);

    ClassCourse selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClassCourse record);

    int updateByPrimaryKey(ClassCourse record);

    //根据课程id获取班级集合
   List<Class> getClassByCourseId(Integer id);

    int deleteByCourseId(Integer id);
}