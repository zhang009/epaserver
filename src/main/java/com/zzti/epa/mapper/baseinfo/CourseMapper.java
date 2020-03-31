package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Course;
import com.zzti.epa.model.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKey(Course record);

    List<Teacher> getCourse(@Param("page")Integer page, @Param("size") Integer size, @Param("course")Course course);

    Long getTotal(@Param("course")Course course);

    List<Course> getAllCourse(@Param("classId") Integer id);

    Course getCourseById(@Param("id")Integer id);
}