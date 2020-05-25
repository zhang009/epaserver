package com.zzti.epa.mapper.baseinfo;

import com.zzti.epa.model.Major;
import com.zzti.epa.model.MajorCourse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MajorCourseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MajorCourse record);

    int insertSelective(MajorCourse record);

    MajorCourse selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MajorCourse record);

    int updateByPrimaryKey(MajorCourse record);

    //根据课程id获取该专业
    List<Major> getMajorByCourseId(@Param("courseId") Integer id);

    //删除该课程id的记录
    int deleteByCourseId(Integer id);
}