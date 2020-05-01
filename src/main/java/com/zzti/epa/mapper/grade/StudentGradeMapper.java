package com.zzti.epa.mapper.grade;

import com.zzti.epa.model.StudentGrade;

public interface StudentGradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(StudentGrade record);

    int insertSelective(StudentGrade record);

    StudentGrade selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(StudentGrade record);

    int updateByPrimaryKey(StudentGrade record);
}