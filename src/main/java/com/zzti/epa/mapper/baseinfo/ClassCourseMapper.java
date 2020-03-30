package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.ClassCourse;

public interface ClassCourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ClassCourse record);

    int insertSelective(ClassCourse record);

    ClassCourse selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(ClassCourse record);

    int updateByPrimaryKey(ClassCourse record);
}